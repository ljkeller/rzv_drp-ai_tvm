#
#  Original code(C) Copyright EdgeCortix, Inc. 2022
#  Modified Portion (C) Copyright Renesas Electronics Corporation 2022
#

import os
import torch
import numpy as np
import tvm

from tvm import relay, runtime
from tvm.relay.mera import drp
from tvm.contrib import graph_executor
from collections import namedtuple
from optparse import OptionParser
from torchvision import models

from arg_parser import get_args

if __name__ == "__main__":
    """
    This is sample script of DRP-AI TVM compiler stack.
    Please set following argements to run.
     -o : Output directory name
     -s : Input shape of AI model
     [Options]
     -i : Input node name of AI model
     -d : DRP-AI Trahslator path
     -t : toolchain path (Cross compiler/SDK)
     -c : Concat disable mode. Safety compile mode.
    """

    # 1. Get argument data
    (opts, model_file) = get_args()
    output_dir=opts["output_dir"]
    os.makedirs(output_dir, exist_ok=True)
    
    # 2. Load pytorch model and set input shape.
    # 2.1 Load pytorch(.pt) model
    model = torch.jit.load(model_file)
    model.eval()
    
    # 2.2 Set input data information
    input_name = "input0"
    shape_list = [(input_name, opts["input_shape"])]

    # 3. Run DRP-AI TVM compiler 
    # 3.1 Run TVM Frontend
    print("-------------------------------------------------")
    print("   Run TVM frotend compiler ")
    mod, params = relay.frontend.from_pytorch(model, shape_list)

    # 3.2 Run TVM backend with DRP-AI translator
    print("-------------------------------------------------")
    print("   Run TVM backend compiler with DRP-AI Translator")
    # 3.2.1 Set config for DRP-AI runtime
    drp_config_runtime = {
        "interpreter": False,
        "addr_map_start": 0x5f800000,
        "toolchain_dir": opts["drp_compiler_dir"],
        "sdk_root": opts["toolchain_dir"]
    }
    # 3.2.2 Run backend compiler
    drp.build(mod, \
              params, \
              "arm", \
              drp_config_runtime, \
              output_dir=output_dir, \
              disable_concat = opts["disable_concat"]\
              )
    print("[TVM compile finished]")
    print("   Please check {0} directory".format(output_dir))