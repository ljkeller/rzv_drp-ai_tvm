/***********************************************************************************************************************
* DISCLAIMER
* This software is supplied by Renesas Electronics Corporation and is only intended for use with Renesas products. No
* other uses are authorized. This software is owned by Renesas Electronics Corporation and is protected under all
* applicable laws, including copyright laws.
* THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIES REGARDING
* THIS SOFTWARE, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED. TO THE MAXIMUM
* EXTENT PERMITTED NOT PROHIBITED BY LAW, NEITHER RENESAS ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES
* SHALL BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR ANY REASON RELATED TO THIS
* SOFTWARE, EVEN IF RENESAS OR ITS AFFILIATES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
* Renesas reserves the right, without notice, to make changes to this software and to discontinue the availability of
* this software. By using this software, you agree to the additional terms and conditions found by accessing the
* following link:
* http://www.renesas.com/disclaimer
*
* Copyright (C) 2022 Renesas Electronics Corporation. All rights reserved.
***********************************************************************************************************************/
/***********************************************************************************************************************
* File Name    : cpu_tvm.h
* Version      : 1.0.1
* Description  : RZ/V2MA DRP-AI TVM[*1] Sample Application for USB Camera HTTP version
*                *1 DRP-AI TVM is powered by EdgeCortix MERA(TM) Compiler Framework.
***********************************************************************************************************************/

#pragma once

#ifndef CPU_TVM_MODEL_H
#define CPU_TVM_MODEL_H

/*****************************************
* Includes
******************************************/
#include "../irecognize_model.h"
#include "../../includes.h"
#include "../command/pose_detection.h"

/*****************************************
* Static Variables and Macro for HRNet
******************************************/

class CPU_TVMModel : public IRecognizeModel
{
private:

#ifdef MODEL_VGA
    constexpr static string_view TVM_MODEL_DIR = "face_deeppose_cpu";
    constexpr static  int32_t TVM_DRPAI_IN_WIDTH = (640);
    constexpr static  int32_t TVM_DRPAI_IN_HEIGHT = (480);
#else
    constexpr static string_view TVM_MODEL_DIR = "face_deeppose_cpu_fhd";
    constexpr static  int32_t TVM_DRPAI_IN_WIDTH = (1920);
    constexpr static  int32_t TVM_DRPAI_IN_HEIGHT = (1080);

#endif

    /*DeepPose Related*/
    constexpr static  int32_t TVM_NUM_OUTPUT_KEYPNT = (98);

    /*DRP-AI Input image information*/
    constexpr static string_view MODEL_NAME = "face_deeppose_cpu";
    constexpr static  int32_t TVM_DRPAI_IN_CHANNEL = (2);
    constexpr static  int32_t TVM_DRPAI_IN_SIZE = (TVM_DRPAI_IN_WIDTH * TVM_DRPAI_IN_HEIGHT * TVM_DRPAI_IN_CHANNEL);
    constexpr static  int32_t TVM_MODEL_IN_C = (3);
    constexpr static  int32_t TVM_MODEL_IN_H = (256);
    constexpr static  int32_t TVM_MODEL_IN_W = (256);

public:
    CPU_TVMModel();
    virtual int32_t inf_post_process(float* arg);
    virtual shared_ptr<PredictNotifyBase> get_command();
    virtual int32_t print_result();

private:
    int8_t post_process(vector<pos_t>& result, float* floatarr);


private:
    vector<pos_t> postproc_result;
};

#endif //CPU_TVM_MODEL_H
