# Model list

Below is a list of AI models that Renesas has verified for conversion with the DRP-AI TVM[^1] and actual operation on an evaluation board.

* DRP-AI TVM[^1] Version: v1.0.0
* Evaluation Board: RZ/V2MA EVK
* Software Version:
  * DRP-AI Translator v1.80
  * RZ/V2MA Linux Package v1.0.0
  * RZ/V2MA DRP-AI Support Package v7.20

| AI model                                                                                                                                                                     | Task              | Format                                                   | Inference time<br>(CPU only) | Inference time<br>(CPU+DRP-AI) |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------- | -------------------------------------------------------- | ---------------------------- | ------------------------------ |
| ResNet18-v1                                                                                                                                                                  | Classification    | ONNX                                                     | 488ms                        | 17ms                           |
| ResNet18-v2                                                                                                                                                                  | Classification    | ONNX                                                     | 487ms                        | 19ms                           |
| ResNet34-v1                                                                                                                                                                  | Classification    | ONNX                                                     | 870ms                        | 27ms                           |
| ResNet34-v2                                                                                                                                                                  | Classification    | ONNX                                                     | 890ms                        | 29ms                           |
| ResNet50-v1                                                                                                                                                                  | Classification    | ONNX                                                     | 1358ms                       | 36ms                           |
| ResNet50-v2                                                                                                                                                                  | Classification    | ONNX                                                     | 1662ms                       | 46ms                           |
| ResNet101-v1                                                                                                                                                                 | Classification    | ONNX                                                     | 2479ms                       | 56ms                           |
| ResNet101-v2                                                                                                                                                                 | Classification    | ONNX                                                     | 2777ms                       | 70ms                           |
| MobileNetV2                                                                                                                                                                  | Classification    | ONNX                                                     | 224ms                        | 21ms                           |
| SqueezeNet1.1-7                                                                                                                                                              | Classification    | ONNX                                                     | 142ms                        | 8ms                            |
| DenseNet9                                                                                                                                                                    | Classification    | ONNX                                                     | 1345ms                       | 149ms                          |
| Inception-v1                                                                                                                                                                 | Classification    | ONNX                                                     | 738ms                        | 649ms                          |
| Inception-v2                                                                                                                                                                 | Classification    | ONNX                                                     | 1165ms                       | 128ms                          |
| YOLOv2                                                                                                                                                                       | Object Detection  | ONNX                                                     | 6688ms                       | 81ms                           |
| YOLOv3                                                                                                                                                                       | Object Detection  | ONNX                                                     | 15507ms                      | 222ms                          |
| YOLOv5l                                                                                                                                                                      | Object Detection  | ONNX                                                     | 13575ms                      | 222ms                          |
| HRNet                                                                                                                                                                        | Body Keypiont 2D  | ONNX                                                     | 3639ms                       | 61ms                           |
| ResNet18                                                                                                                                                                     | Classification    | PyTorch                                                  | 488ms                        | 18ms                           |
| ResNet34                                                                                                                                                                     | Classification    | PyTorch                                                  | 897ms                        | 27ms                           |
| ResNet50                                                                                                                                                                     | Classification    | PyTorch                                                  | 1619ms                       | 38ms                           |
| ResNet101                                                                                                                                                                    | Classification    | PyTorch                                                  | 2760ms                       | 58ms                           |
| ResNeXt-50-32x4d                                                                                                                                                             | Classification    | PyTorch                                                  | 2038ms                       | 504ms                          |
| MobileNetV2                                                                                                                                                                  | Classification    | PyTorch                                                  | 226ms                        | 21ms                           |
| SqueezeNet1_1                                                                                                                                                                | Classification    | PyTorch                                                  | 142ms                        | 41ms                           |
| DenseNet-121                                                                                                                                                                 | Classification    | PyTorch                                                  | 1436ms                       | 307ms                          |
| DenseNet-161                                                                                                                                                                 | Classification    | PyTorch                                                  | 4072ms                       | 1172ms                         |
| GoogleNet                                                                                                                                                                    | Classification    | PyTorch                                                  | 758ms                        | 153ms                          |
| MnasNet0_5                                                                                                                                                                   | Classification    | PyTorch                                                  | 102ms                        | 37ms                           |
| DeepLabv3-resnet50                                                                                                                                                           | Segmentation      | PyTorch                                                  | 15467ms                      | 172ms                          |
| DeepLabv3-resnet101                                                                                                                                                          | Segmentation      | PyTorch                                                  | 21524ms                      | 274ms                          |
| FCN_resnet101                                                                                                                                                                | Segmentation      | PyTorch                                                  | 18151ms                      | 265ms                          |
| DeepPose                                                                                                                                                                     | Body Keypoint 2D  | PyTorch                                                  | 2239ms                       | 36ms                           |
| HRNetV2                                                                                                                                                                      | Face Detection 2D | PyTorch                                                  | 1936ms                       | 52ms                           |
| HRNetV2 DarkPose                                                                                                                                                             | Face Detection 2D | PyTorch                                                  | 3215ms                       | 67ms                           |
| [ConvNeXt atto](https://github.com/rwightman/pytorch-image-models#aug-15-2022)                                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 565ms                        | 397ms                          |
| [ConvNeXt femto](https://github.com/rwightman/pytorch-image-models#aug-5-2022)                                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 697ms                        | 498ms                          |
| [ConvNeXt femto ols](https://github.com/rwightman/pytorch-image-models#aug-5-2022)                                                                                           | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 717ms                        | 488ms                          |
| [CSP-Darknet](https://rwightman.github.io/pytorch-image-models/models/csp-darknet/)                                                                                          | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1938ms                       | 96ms                           |
| [CSP-ResNet](https://rwightman.github.io/pytorch-image-models/models/csp-resnet/)                                                                                            | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1372ms                       | 68ms                           |
| [CSP-ResNeXt](https://rwightman.github.io/pytorch-image-models/models/csp-resnext/)                                                                                          | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1645ms                       | 484ms                          |
| [Darknet-53](https://github.com/rwightman/pytorch-image-models#july-8-2022)                                                                                                  | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3471ms                       | 51ms                           |
| [Darknet-aa53](https://github.com/rwightman/pytorch-image-models#july-27-2022)                                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2907ms                       | 94ms                           |
| [DenseNet121](https://rwightman.github.io/pytorch-image-models/models/densenet/)                                                                                             | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1438ms                       | 246ms                          |
| [DenseNet161](https://rwightman.github.io/pytorch-image-models/models/densenet/)                                                                                             | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 4050ms                       | 1102ms                         |
| [DenseNet169](https://rwightman.github.io/pytorch-image-models/models/densenet/)                                                                                             | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1913ms                       | 406ms                          |
| [DenseNet201](https://rwightman.github.io/pytorch-image-models/models/densenet/)                                                                                             | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2856ms                       | 843ms                          |
| [DenseNet Blur 121d](https://rwightman.github.io/pytorch-image-models/models/densenet/)                                                                                      | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1568ms                       | 263ms                          |
| DLA(Dense Layer Aggregation)102x                                                                                                                                             | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3090ms                       | 850ms                          |
| DLA102x2                                                                                                                                                                     | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 4820ms                       | 1523ms                         |
| DLA46x_c                                                                                                                                                                     | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 374ms                        | 108ms                          |
| DLA60x_c                                                                                                                                                                     | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 403ms                        | 120ms                          |
| [DPN(Dual Path Network)107](https://rwightman.github.io/pytorch-image-models/models/dpn/)                                                                                    | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 11043ms                      | 2257ms                         |
| [DPN68](https://rwightman.github.io/pytorch-image-models/models/dpn/)                                                                                                        | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1448ms                       | 651ms                          |
| [DPN68b](https://rwightman.github.io/pytorch-image-models/models/dpn/)                                                                                                       | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1533ms                       | 622ms                          |
| [ECA-ResNet101d](https://rwightman.github.io/pytorch-image-models/models/ecaresnet/)                                                                                         | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2935ms                       | 412ms                          |
| [ECA-ResNet26t](https://rwightman.github.io/pytorch-image-models/models/ecaresnet/)                                                                                          | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1141ms                       | 147ms                          |
| [ECA-ResNet50d](https://rwightman.github.io/pytorch-image-models/models/ecaresnet/)                                                                                          | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1732ms                       | 255ms                          |
| [ECA-ResNet50t](https://rwightman.github.io/pytorch-image-models/models/ecaresnet/)                                                                                          | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1771ms                       | 253ms                          |
| [ECA-ResNet light](https://rwightman.github.io/pytorch-image-models/models/ecaresnet/)                                                                                       | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1569ms                       | 194ms                          |
| [EfficientNet Edge Large](https://rwightman.github.io/pytorch-image-models/models/efficientnet/https://rwightman.github.io/pytorch-image-models/models/efficientnet/)        | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2138ms                       | 198ms                          |
| [pruned EfficientNet Edge Large](https://rwightman.github.io/pytorch-image-models/models/efficientnet/https://rwightman.github.io/pytorch-image-models/models/efficientnet/) | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2128ms                       | 198ms                          |
| [EfficientNet Edge Medium](https://rwightman.github.io/pytorch-image-models/models/efficientnet/https://rwightman.github.io/pytorch-image-models/models/efficientnet/)       | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1407ms                       | 161ms                          |
| [EfficientNet Edge Small](https://rwightman.github.io/pytorch-image-models/models/efficientnet/https://rwightman.github.io/pytorch-image-models/models/efficientnet/)        | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 942ms                        | 126ms                          |
| [pruned EfficientNet Edge Small](https://rwightman.github.io/pytorch-image-models/models/efficientnet/https://rwightman.github.io/pytorch-image-models/models/efficientnet/) | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 942ms                        | 125ms                          |
| [EfficientNet Lite0](https://rwightman.github.io/pytorch-image-models/models/efficientnet/)             | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 295ms                        | 86ms                           |
| [Ensemble Adversarial Inception ResNet v2](https://rwightman.github.io/pytorch-image-models/models/ensemble-adversarial/)                                                    | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3374ms                       | 1739ms                         |
| [ESE-VoVNet 19-dw](https://rwightman.github.io/pytorch-image-models/models/ese-vovnet/)                                                                                      | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 734ms                        | 80ms                           |
| [ESE-VoVNet 39b](https://rwightman.github.io/pytorch-image-models/models/ese-vovnet/)                                                                                        | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3765ms                       | 114ms                          |
| [FBNet-C](https://rwightman.github.io/pytorch-image-models/models/fbnet/)                                                                                                    | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 334ms                        | 105ms                          |
| [FBNetV3-B](https://rwightman.github.io/pytorch-image-models/models/fbnet/)                                                                                                  | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 434ms                        | 305ms                          |
| [FBNetV3-D](https://rwightman.github.io/pytorch-image-models/models/fbnet/)                                                                                                  | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 466ms                        | 259ms                          |
| [FBNetV3-G](https://rwightman.github.io/pytorch-image-models/models/fbnet/)                                                                                                  | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 893ms                        | 570ms                          |
| Global Context Resnet50t (gcresnet50t)                                                                                                                                       | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1708ms                       | 165ms                          |
| GPU-Efficient ResNet Large (gernet_l)                                                                                                                                        | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1737ms                       | 35ms                           |
| GPU-Efficient ResNet Middle (gernet_m)                                                                                                                                       | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1493ms                       | 27ms                           |
| GPU-Efficient ResNet Small (gernet_s)                                                                                                                                        | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 353ms                        | 13ms                           |
| GhostNet-1.0x                                                                                                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 180ms                        | 87ms                           |
| [(Gluon) ResNet101 v1b](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2745ms                       | 58ms                           |
| [(Gluon) ResNet101 v1c](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2847ms                       | 58ms                           |
| [(Gluon) ResNet101 v1d](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2836ms                       | 88ms                           |
| [(Gluon) ResNet101 v1s](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3163ms                       | 62ms                           |
| [(Gluon) ResNet152 v1b](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3930ms                       | 78ms                           |
| [(Gluon) ResNet152 v1c](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3991ms                       | 78ms                           |
| [(Gluon) ResNet152 v1d](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3996ms                       | 110ms                          |
| [(Gluon) ResNet152 v1s](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                               | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 4312ms                       | 82ms                           |
| [(Gluon) ResNet18 v1b](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 497ms                        | 18ms                           |
| [(Gluon) ResNet34 v1b](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 873ms                        | 27ms                           |
| [(Gluon) ResNet50 v1b](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1638ms                       | 38ms                           |
| [(Gluon) ResNet50 v1c](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1727ms                       | 38ms                           |
| [(Gluon) ResNet50 v1d](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 1720ms                       | 70ms                           |
| [(Gluon) ResNet50 v1s](https://rwightman.github.io/pytorch-image-models/models/gloun-resnet/)                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2036ms                       | 42ms                           |
| [(Gluon) ResNeXt101 32x4d](https://rwightman.github.io/pytorch-image-models/models/gloun-resnext/)                                                                           | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3667ms                       | 927ms                          |
| [(Gluon) ResNeXt101 64x4d](https://rwightman.github.io/pytorch-image-models/models/gloun-resnext/)                                                                           | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 7244ms                       | 1703ms                         |
| [(Gluon) SENet154](https://rwightman.github.io/pytorch-image-models/models/gloun-senet/)                                                                                     | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 9955ms                       | 1836ms                         |
| [(Gluon) SE-ResNeXt101 32-4d](https://rwightman.github.io/pytorch-image-models/models/gloun-seresnext/)                                                                      | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 3776ms                       | 1142ms                         |
| [(Gluon) SE-ResNeXt101 64-4d](https://rwightman.github.io/pytorch-image-models/models/gloun-seresnext/)                                                                      | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 7261ms                       | 1917ms                         |
| [(Gluon) SE-ResNeXt50 32-4d](https://rwightman.github.io/pytorch-image-models/models/gloun-seresnext/)                                                                       | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2086ms                       | 628ms                          |
| [(Gluon) Xception65](https://rwightman.github.io/pytorch-image-models/models/gloun-xception/)                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 4374ms                       | 140ms                          |
| HardcoreNAS_A                                                                                                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 216ms                        | 138ms                          |
| HardcoreNAS_B                                                                                                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 233ms                        | 128ms                          |
| HardcoreNAS_C                                                                                                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 245ms                        | 150ms                          |
| HardcoreNAS_D                                                                                                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 269ms                        | 153ms                          |
| HardcoreNAS_E                                                                                                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 314ms                        | 188ms                          |
| HardcoreNAS_F                                                                                                                                                                | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 310ms                        | 186ms                          |
| [HRNet w18](https://rwightman.github.io/pytorch-image-models/models/hrnet/)                                                                                                  | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 2203ms                       | 60ms                           |
| [HRNet w18 small](https://rwightman.github.io/pytorch-image-models/models/hrnet/)                                                                                            | Classification    | [Timm](https://rwightman.github.io/pytorch-image-models) | 868ms                        | 24ms                           |

---

[^1]: DRP-AI TVM is powered by EdgeCortix MERA™ Compiler Framework.