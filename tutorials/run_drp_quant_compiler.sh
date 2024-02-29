if [[ $# -ne 6 ]]; then
  echo "${0} expected 6 parameters:"
  echo "  <drp_quant_translator_dir>"
  echo "  <output_dir>"
  echo "  <output_prefix>"
  echo "  <start_addr>"
  echo "  <prepost_file>"
  echo "  <onnx_file>"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "${0} first parameter: DRP Translator toolchain $1 not found"
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

TOOL_DIR=$1
OUT=$2
CNAME=$3
START_ADDR=$4
PREPOST_FILE=$5
ONNX_FILE=$6

work_dir=$PWD
mkdir -p ${OUT}

expected_result_files=(
  "addr_map.txt"
  "addr_map.yaml"
  "aimac_cmd.bin"
  "aimac_desc.bin"
  "aimac_param_cmd.bin"
  "aimac_param_desc.bin"
  "data_in_list.txt"
  "data_out_list.txt"
  "drp_config.mem"
  "drp_desc.bin"
  "drp_lib_info.txt"
  "drp_param.bin"
  "drp_param_info.txt"
  "drp_param.txt"
  "weight.bin"
  "${CNAME}_addr_map.txt"
)

for file in "${expected_result_files[@]}"; do
    rm -f ${OUT}/${file}
done

cd ${TOOL_DIR}
python3 DRP-AI_Translator/run.py ${CNAME} --onnx ${work_dir}/${ONNX_FILE} --prepost ${work_dir}/${PREPOST_FILE} --s_addr ${START_ADDR}

cd ${work_dir}
mv ${TOOL_DIR}/output/${CNAME}/* ${OUT}/
rm -rf ${TOOL_DIR}/output/${CNAME}

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