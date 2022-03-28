#
#  Original code(C) Copyright EdgeCortix, Inc. 2022
#  Modified Portion (C) Copyright Renesas Electronics Corporation 2022
#

if [[ $# -ne 6 ]]; then
  echo "${0} expected 6 parameters:"
  echo "  <drp_toolchain_dir>"
  echo "  <output_dir>"
  echo "  <output_prefix>"
  echo "  <addr_map_file>"
  echo "  <prepost_file>"
  echo "  <onnx_file>"
  exit 1
fi
if [ ! -d "$1" ]; then
  echo "${0} first parameter: DRP Translator toolchain $1 not found"
  exit 1
fi
if [ ! -f $4 ]; then
  echo "${0} fourth parameter: address map file $4 not found"
  exit 1
fi
if [ ! -f $5 ]; then
  echo "${0} fifth parameter: pre/post processing file $5 not found"
  exit 1
fi
if [ ! -f $6 ]; then
  echo "${0} sixth parameter: onnx file $6 not found"
  exit 1
fi

BASE_DIR=$1
OUT=$2
CNAME=$3
ADDR_MAP_FILE=$4
PREPOST_FILE=$5
ONNX_FILE=$6
TOOL_NAME=DRP-AI_translator
IDIR=${BASE_DIR}/${TOOL_NAME}

mkdir -p ${OUT}
expected_result_files=(
  "aimac_desc.bin"
  "drp_desc.bin"
  "drp_lib_info.txt"
  "drp_param.bin"
  "drp_param.txt"
  "${CNAME}_addrmap_intm.txt"
  "${CNAME}_addrmap_intm.yaml"
  "${CNAME}_data_out_list.txt"
  "${CNAME}_drpcfg.mem"
  "${CNAME}.json"
  "${CNAME}_tbl_addr_data_in.txt"
  "${CNAME}_tbl_addr_data_out.txt"
  "${CNAME}_tbl_addr_data.txt"
  "${CNAME}_tbl_addr_drp_config.txt"
  "${CNAME}_tbl_addr_merge.txt"
  "${CNAME}_tbl_addr_weight.txt"
  "${CNAME}_tbl_addr_work.txt"
  "${CNAME}_weight.dat"
)
for file in "${expected_result_files[@]}"; do
    rm -f ${OUT}/${file}
done

# RUN TRANSLATOR
python3 ${IDIR}/api_translator/scripts/run_translator.py \
  -f_in_hw_setting ${IDIR}/api_translator/input/hw_in.txt \
  -dir_in_drplib ${IDIR}/drplib/V2M \
  -f_in_addrmap ${ADDR_MAP_FILE} \
  -f_in_prepost ${PREPOST_FILE} \
  -f_in_onnx ${ONNX_FILE} \
  -f_out_prefix ${OUT}/${CNAME} \
  -opt_en_map_relu6_to_drp \
  -perf

RET_CODE=$?
if [ ${RET_CODE} -ne 0 ]; then
  echo "Error: run_translator.py failed"
  exit ${RET_CODE}
fi

# RUN CONVERTER
${IDIR}/converter/converter \
  --strip_drp -i ${OUT}/${CNAME}.json \
  --address_file ${OUT}/${CNAME}_tbl_addr_merge.txt \
  --weight_file ${OUT}/${CNAME}_tbl_addr_weight.txt \
  --output_directory ${OUT}

RET_CODE=$?
if [ ${RET_CODE} -ne 0 ]; then
  echo "Error: converter failed"
  exit ${RET_CODE}
fi

# RUN DRP CONVERTER
python3 ${IDIR}/drp_converter/drp_converter_interface.py \
  -API ${OUT}/${CNAME}.json \
  -W ${OUT}/${CNAME}_tbl_addr_weight.txt \
  -A ${OUT}/${CNAME}_tbl_addr_merge.txt \
  -D ${OUT}/${CNAME}_tbl_addr_drp_config.txt \
  -AMAP ${OUT}/${CNAME}_addrmap_intm.yaml \
  -OUT ${OUT}

RET_CODE=$?
if [ ${RET_CODE} -ne 0 ]; then
  echo "Error: drp_converter failed"
  exit ${RET_CODE}
fi

file_exists() {
  EXPECTED_FILE=$1
  if [ ! -f ${EXPECTED_FILE} ]; then
    echo "Expected compilation result file '${EXPECTED_FILE}' not found"
    exit 1
  fi
}
for file in "${expected_result_files[@]}"; do
  file_exists  ${OUT}/${file}
done
