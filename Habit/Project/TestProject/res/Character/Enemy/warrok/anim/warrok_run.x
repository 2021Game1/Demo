xof 0303txt 0032

template XSkinMeshHeader {
  <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
  WORD nMaxSkinWeightsPerVertex;
  WORD nMaxSkinWeightsPerFace;
  WORD nBones;
}

template SkinWeights {
  <6f0d123b-bad2-4167-a0d0-80224f25fabb>
  STRING transformNodeName;
  DWORD nWeights;
  array DWORD vertexIndices[nWeights];
  array float weights[nWeights];
  Matrix4x4 matrixOffset;
}

Frame Root {
  FrameTransformMatrix {
     1.000000, 0.000000, 0.000000, 0.000000,
     0.000000,-0.000000,-1.000000, 0.000000,
     0.000000, 1.000000,-0.000000, 0.000000,
     0.000000, 0.000000, 0.000000, 1.000000;;
  }
  Frame Armature {
    FrameTransformMatrix {
       0.150000, 0.000000, 0.000000, 0.000000,
       0.000000,-0.000000, 0.150000, 0.000000,
       0.000000,-0.150000,-0.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
    }
    Frame Armature_mixamorig_Hips {
      FrameTransformMatrix {
         0.996175,-0.031982, 0.081318, 0.000000,
         0.002020, 0.938794, 0.344473, 0.000000,
        -0.087358,-0.342991, 0.935268, 0.000000,
         0.185859,75.095871, 2.543150, 1.000000;;
      }
      Frame Armature_mixamorig_BackCloth1 {
        FrameTransformMatrix {
           1.000000,-0.000003, 0.000000, 0.000000,
          -0.000003,-1.000000,-0.000000, 0.000000,
           0.000000, 0.000000,-1.000000, 0.000000,
           0.000000,-5.419199,-29.327002, 1.000000;;
        }
        Frame Armature_mixamorig_BackCloth2 {
          FrameTransformMatrix {
             1.000000,-0.000002, 0.000000, 0.000000,
             0.000002, 1.000000, 0.000000, 0.000000,
            -0.000000,-0.000000, 1.000000, 0.000000,
             0.000000,15.308604,-0.000000, 1.000000;;
          }
          Frame Armature_mixamorig_BackCloth3 {
            FrameTransformMatrix {
               1.000000, 0.000000,-0.000000, 0.000000,
               0.000000, 1.000000, 0.000000, 0.000000,
              -0.000000,-0.000000, 1.000000, 0.000000,
              -0.000000,17.777102,-0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_BackCloth4 {
              FrameTransformMatrix {
                 1.000000, 0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000, 0.000000, 0.000000,
                -0.000000,-0.000000, 1.000000, 0.000000,
                 0.000000,15.545406,-0.000001, 1.000000;;
              }
            } // End of Armature_mixamorig_BackCloth4
          } // End of Armature_mixamorig_BackCloth3
        } // End of Armature_mixamorig_BackCloth2
      } // End of Armature_mixamorig_BackCloth1
      Frame Armature_mixamorig_FrontCloth1 {
        FrameTransformMatrix {
           1.000000,-0.000002,-0.000000, 0.000000,
          -0.000002,-1.000000,-0.000000, 0.000000,
          -0.000000, 0.000000,-1.000000, 0.000000,
          -0.000000,-19.940702,22.170200, 1.000000;;
        }
        Frame Armature_mixamorig_FrontCloth2 {
          FrameTransformMatrix {
            -1.000000,-0.000000, 0.000000, 0.000000,
             0.000000, 1.000000, 0.000000, 0.000000,
            -0.000000, 0.000000,-1.000000, 0.000000,
             0.000000,10.763299,-0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_FrontCloth3 {
            FrameTransformMatrix {
              -1.000000, 0.000000,-0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
               0.000000,-0.000000,-1.000000, 0.000000,
               0.000000,13.749510, 0.000000, 1.000000;;
            }
            Frame Armature_mixamorig_FrontCloth4 {
              FrameTransformMatrix {
                 1.000000, 0.000000,-0.000000, 0.000000,
                -0.000000, 1.000000, 0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                -0.000000,14.182600,-0.000000, 1.000000;;
              }
            } // End of Armature_mixamorig_FrontCloth4
          } // End of Armature_mixamorig_FrontCloth3
        } // End of Armature_mixamorig_FrontCloth2
      } // End of Armature_mixamorig_FrontCloth1
      Frame Armature_mixamorig_LeftUpLeg {
        FrameTransformMatrix {
          -0.985836, 0.008294, 0.167505, 0.000000,
           0.156515,-0.313299, 0.936668, 0.000000,
           0.060248, 0.949619, 0.307564, 0.000000,
          19.899096,-7.885092,-3.429500, 1.000000;;
        }
        Frame Armature_mixamorig_LeftLeg {
          FrameTransformMatrix {
             0.997525, 0.070201,-0.004006, 0.000000,
             0.022721,-0.375721,-0.926454, 0.000000,
            -0.066543, 0.924070,-0.376386, 0.000000,
            -0.000003,38.282909, 0.000005, 1.000000;;
          }
          Frame Armature_mixamorig_LeftFoot {
            FrameTransformMatrix {
               0.997786,-0.060633,-0.027339, 0.000000,
               0.047668, 0.365242, 0.929691, 0.000000,
              -0.046385,-0.928936, 0.367324, 0.000000,
               0.000002,32.683990,-0.000000, 1.000000;;
            }
            Frame Armature_mixamorig_LeftToeBase {
              FrameTransformMatrix {
                 0.999841,-0.009038, 0.015370, 0.000000,
                -0.013306, 0.195555, 0.980602, 0.000000,
                -0.011868,-0.980651, 0.195404, 0.000000,
                -0.000000,27.100006,-0.000000, 1.000000;;
              }
              Frame Armature_mixamorig_LeftToe_End {
                FrameTransformMatrix {
                   1.000000, 0.000000,-0.000000, 0.000000,
                  -0.000000, 1.000000, 0.000000, 0.000000,
                   0.000000,-0.000000, 1.000000, 0.000000,
                   0.000002,16.631996, 0.000000, 1.000000;;
                }
              } // End of Armature_mixamorig_LeftToe_End
            } // End of Armature_mixamorig_LeftToeBase
          } // End of Armature_mixamorig_LeftFoot
        } // End of Armature_mixamorig_LeftLeg
      } // End of Armature_mixamorig_LeftUpLeg
      Frame Armature_mixamorig_RightUpLeg {
        FrameTransformMatrix {
          -0.962303,-0.140568,-0.232836, 0.000000,
          -0.083266,-0.662716, 0.744227, 0.000000,
          -0.258919, 0.735559, 0.626027, 0.000000,
          -19.899097,-7.884993,-3.429502, 1.000000;;
        }
        Frame Armature_mixamorig_RightLeg {
          FrameTransformMatrix {
             0.933174, 0.351573, 0.074721, 0.000000,
             0.110565,-0.082978,-0.990399, 0.000000,
            -0.341997, 0.932476,-0.116304, 0.000000,
            -0.000002,38.282913,-0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_RightFoot {
            FrameTransformMatrix {
               0.942069,-0.288438,-0.171202, 0.000000,
               0.136664,-0.136048, 0.981231, 0.000000,
              -0.306316,-0.947784,-0.088747, 0.000000,
               0.000003,32.684063, 0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_RightToeBase {
              FrameTransformMatrix {
                 1.000000, 0.000021, 0.000038, 0.000000,
                -0.000044, 0.458003, 0.888951, 0.000000,
                 0.000002,-0.888951, 0.458003, 0.000000,
                -0.000002,27.100008, 0.000000, 1.000000;;
              }
              Frame Armature_mixamorig_RightToe_End {
                FrameTransformMatrix {
                   1.000000,-0.000000,-0.000000, 0.000000,
                   0.000000, 1.000000, 0.000000, 0.000000,
                  -0.000000,-0.000000, 1.000000, 0.000000,
                  -0.000000,16.631945,-0.000000, 1.000000;;
                }
              } // End of Armature_mixamorig_RightToe_End
            } // End of Armature_mixamorig_RightToeBase
          } // End of Armature_mixamorig_RightFoot
        } // End of Armature_mixamorig_RightLeg
      } // End of Armature_mixamorig_RightUpLeg
      Frame Armature_mixamorig_Spine {
        FrameTransformMatrix {
           0.993080, 0.084314,-0.081756, 0.000000,
          -0.039786, 0.896493, 0.441267, 0.000000,
           0.110498,-0.434961, 0.893644, 0.000000,
           0.000000,13.784801, 0.064402, 1.000000;;
        }
        Frame Armature_mixamorig_Spine1 {
          FrameTransformMatrix {
             0.996040, 0.083101, 0.031597, 0.000000,
            -0.088590, 0.957627, 0.274048, 0.000000,
            -0.007485,-0.275762, 0.961197, 0.000000,
             0.000000,12.024298,-0.000002, 1.000000;;
          }
          Frame Armature_mixamorig_Spine2 {
            FrameTransformMatrix {
               0.996854, 0.074780, 0.026270, 0.000000,
              -0.079062, 0.961573, 0.262920, 0.000000,
              -0.005599,-0.264170, 0.964460, 0.000000,
               0.000000,17.815802,-0.000004, 1.000000;;
            }
            Frame Armature_mixamorig_LeftShoulder {
              FrameTransformMatrix {
                 0.109741, 0.059180,-0.992197, 0.000000,
                 0.986257, 0.117554, 0.116096, 0.000000,
                 0.123507,-0.991302,-0.045466, 0.000000,
                17.399502,24.614197, 1.157902, 1.000000;;
              }
              Frame Armature_mixamorig_LeftArm {
                FrameTransformMatrix {
                   0.910030, 0.308411, 0.276998, 0.000000,
                  -0.413562, 0.629503, 0.657794, 0.000000,
                   0.028500,-0.713168, 0.700414, 0.000000,
                   0.000004,19.910402,-0.000004, 1.000000;;
                }
                Frame Armature_mixamorig_LeftForeArm {
                  FrameTransformMatrix {
                     0.671053, 0.741400,-0.003685, 0.000000,
                    -0.741401, 0.671061, 0.001496, 0.000000,
                     0.003582, 0.001728, 0.999992, 0.000000,
                    -0.000006,49.301300, 0.000000, 1.000000;;
                  }
                  Frame Armature_mixamorig_LeftHand {
                    FrameTransformMatrix {
                       0.496063, 0.402786, 0.769211, 0.000000,
                      -0.207645, 0.915221,-0.345332, 0.000000,
                      -0.843092, 0.011584, 0.537644, 0.000000,
                      -0.000005,31.604708,-0.000005, 1.000000;;
                    }
                    Frame Armature_mixamorig_LeftHandIndex1 {
                      FrameTransformMatrix {
                         0.992744,-0.120211,-0.002996, 0.000000,
                         0.119774, 0.990732,-0.064061, 0.000000,
                         0.010669, 0.063237, 0.997942, 0.000000,
                        -6.192896,21.271088, 0.498711, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandIndex2 {
                        FrameTransformMatrix {
                           0.999143,-0.040372,-0.009136, 0.000000,
                           0.040372, 0.901742, 0.430385, 0.000000,
                          -0.009137,-0.430385, 0.902599, 0.000000,
                          -0.000000, 7.536497, 0.000001, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandIndex3 {
                          FrameTransformMatrix {
                             0.999993, 0.001237, 0.003502, 0.000000,
                            -0.002238, 0.953217, 0.302279, 0.000000,
                            -0.002964,-0.302284, 0.953213, 0.000000,
                             0.000004, 7.512298,-0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000009,10.212403, 0.000007, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandIndex4
                        } // End of Armature_mixamorig_LeftHandIndex3
                      } // End of Armature_mixamorig_LeftHandIndex2
                    } // End of Armature_mixamorig_LeftHandIndex1
                    Frame Armature_mixamorig_LeftHandMiddle1 {
                      FrameTransformMatrix {
                         0.992744,-0.120211,-0.002996, 0.000000,
                         0.119774, 0.990732,-0.064061, 0.000000,
                         0.010669, 0.063237, 0.997942, 0.000000,
                         0.016504,23.334381, 0.008605, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandMiddle2 {
                        FrameTransformMatrix {
                           0.999143,-0.040372,-0.009136, 0.000000,
                           0.040372, 0.901742, 0.430385, 0.000000,
                          -0.009137,-0.430385, 0.902599, 0.000000,
                           0.000001, 6.996598, 0.000009, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandMiddle3 {
                          FrameTransformMatrix {
                             0.999799,-0.019924,-0.002141, 0.000000,
                             0.019924, 0.976981, 0.212397, 0.000000,
                            -0.002140,-0.212397, 0.977181, 0.000000,
                            -0.000001, 7.016005,-0.000012, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000002, 7.721603,-0.000008, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandMiddle4
                        } // End of Armature_mixamorig_LeftHandMiddle3
                      } // End of Armature_mixamorig_LeftHandMiddle2
                    } // End of Armature_mixamorig_LeftHandMiddle1
                    Frame Armature_mixamorig_LeftHandPinky1 {
                      FrameTransformMatrix {
                         0.992744,-0.120211,-0.002996, 0.000000,
                         0.119774, 0.990732,-0.064061, 0.000000,
                         0.010669, 0.063237, 0.997942, 0.000000,
                        11.443204,18.881187, 0.461812, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandPinky2 {
                        FrameTransformMatrix {
                           0.999143,-0.040372,-0.009136, 0.000000,
                           0.040372, 0.901742, 0.430385, 0.000000,
                          -0.009137,-0.430385, 0.902599, 0.000000,
                           0.000002, 4.919600, 0.000010, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandPinky3 {
                          FrameTransformMatrix {
                             0.999799,-0.019924,-0.002141, 0.000000,
                             0.019924, 0.976980, 0.212397, 0.000000,
                            -0.002140,-0.212397, 0.977181, 0.000000,
                             0.000000, 5.232998, 0.000000, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandPinky4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000003, 5.571698, 0.000001, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandPinky4
                        } // End of Armature_mixamorig_LeftHandPinky3
                      } // End of Armature_mixamorig_LeftHandPinky2
                    } // End of Armature_mixamorig_LeftHandPinky1
                    Frame Armature_mixamorig_LeftHandRing1 {
                      FrameTransformMatrix {
                         0.992744,-0.120211,-0.002996, 0.000000,
                         0.119774, 0.990732,-0.064061, 0.000000,
                         0.010669, 0.063237, 0.997942, 0.000000,
                         6.516908,22.686588, 0.103605, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandRing2 {
                        FrameTransformMatrix {
                           0.999143,-0.040372,-0.009136, 0.000000,
                           0.040372, 0.901742, 0.430385, 0.000000,
                          -0.009137,-0.430385, 0.902599, 0.000000,
                          -0.000002, 6.408600, 0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandRing3 {
                          FrameTransformMatrix {
                             0.999799,-0.019924,-0.002141, 0.000000,
                             0.019924, 0.976980, 0.212397, 0.000000,
                            -0.002140,-0.212397, 0.977181, 0.000000,
                             0.000004, 6.150298,-0.000002, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandRing4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000001, 6.145401,-0.000004, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandRing4
                        } // End of Armature_mixamorig_LeftHandRing3
                      } // End of Armature_mixamorig_LeftHandRing2
                    } // End of Armature_mixamorig_LeftHandRing1
                    Frame Armature_mixamorig_LeftHandThumb1 {
                      FrameTransformMatrix {
                         0.702120, 0.669552, 0.242338, 0.000000,
                        -0.705616, 0.699912, 0.110589, 0.000000,
                        -0.095570,-0.248644, 0.963868, 0.000000,
                        -7.059594, 6.094486, 4.397211, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandThumb2 {
                        FrameTransformMatrix {
                           0.886655,-0.462009, 0.019777, 0.000000,
                           0.461723, 0.882120,-0.093147, 0.000000,
                           0.025589, 0.091721, 0.995456, 0.000000,
                          -0.000005, 7.536491,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandThumb3 {
                          FrameTransformMatrix {
                             0.922571,-0.380596, 0.063322, 0.000000,
                             0.382925, 0.923309,-0.029487, 0.000000,
                            -0.047243, 0.051451, 0.997557, 0.000000,
                            -0.000004, 7.512296, 0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000005,10.212404, 0.000003, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandThumb4
                        } // End of Armature_mixamorig_LeftHandThumb3
                      } // End of Armature_mixamorig_LeftHandThumb2
                    } // End of Armature_mixamorig_LeftHandThumb1
                  } // End of Armature_mixamorig_LeftHand
                } // End of Armature_mixamorig_LeftForeArm
              } // End of Armature_mixamorig_LeftArm
            } // End of Armature_mixamorig_LeftShoulder
            Frame Armature_mixamorig_Neck {
              FrameTransformMatrix {
                 0.920601,-0.381618,-0.082838, 0.000000,
                 0.348008, 0.705508, 0.617373, 0.000000,
                -0.177157,-0.597182, 0.782297, 0.000000,
                 0.000001,39.117603,11.976999, 1.000000;;
              }
              Frame Armature_mixamorig_Head {
                FrameTransformMatrix {
                   0.953975, 0.242735,-0.176103, 0.000000,
                  -0.260112, 0.961998,-0.083078, 0.000000,
                   0.149244, 0.125060, 0.980860, 0.000000,
                   0.000001,15.664109,-14.552526, 1.000000;;
                }
                Frame Armature_mixamorig_HeadTop_End {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                    -0.000000, 1.000000, 0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                     0.000001, 7.553704,-15.601688, 1.000000;;
                  }
                } // End of Armature_mixamorig_HeadTop_End
                Frame Armature_mixamorig_Jaw {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000,-0.587430, 0.809275, 0.000000,
                     0.000000,-0.809275,-0.587430, 0.000000,
                     0.000001, 3.620707, 2.317807, 1.000000;;
                  }
                } // End of Armature_mixamorig_Jaw
                Frame Armature_mixamorig_LeftEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                    -0.000000, 1.000000, 0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                     3.528702,12.838202,-2.462092, 1.000000;;
                  }
                } // End of Armature_mixamorig_LeftEye
                Frame Armature_mixamorig_RightEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                    -0.000000, 1.000000, 0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                    -3.528700,12.838204,-2.462087, 1.000000;;
                  }
                } // End of Armature_mixamorig_RightEye
              } // End of Armature_mixamorig_Head
            } // End of Armature_mixamorig_Neck
            Frame Armature_mixamorig_RightShoulder {
              FrameTransformMatrix {
                 0.128190,-0.037114, 0.991055, 0.000000,
                -0.974431, 0.181220, 0.132826, 0.000000,
                -0.184529,-0.982742,-0.012935, 0.000000,
                -17.399504,24.614304, 1.157895, 1.000000;;
              }
              Frame Armature_mixamorig_RightArm {
                FrameTransformMatrix {
                   0.643124,-0.399883,-0.653059, 0.000000,
                   0.667449, 0.710771, 0.222073, 0.000000,
                   0.375372,-0.578703, 0.724015, 0.000000,
                  -0.000006,19.910404,-0.000000, 1.000000;;
                }
                Frame Armature_mixamorig_RightArmour1 {
                  FrameTransformMatrix {
                     0.000000,-1.000000,-0.000001, 0.000000,
                     1.000000, 0.000000,-0.000000, 0.000000,
                     0.000000,-0.000001, 1.000000, 0.000000,
                    -1.467300, 5.012920,-18.471138, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightArmour2 {
                    FrameTransformMatrix {
                      -0.915899,-0.327535,-0.232054, 0.000000,
                      -0.183487,-0.172553, 0.967759, 0.000000,
                      -0.357017, 0.928949, 0.097943, 0.000000,
                       3.884901,-18.584898, 9.462717, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour3 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                         0.000006,11.039503, 0.000000, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour3
                  } // End of Armature_mixamorig_RightArmour2
                  Frame Armature_mixamorig_RightArmour4 {
                    FrameTransformMatrix {
                       0.708033, 0.659734, 0.251874, 0.000000,
                      -0.431906, 0.122374, 0.893578, 0.000000,
                       0.558700,-0.741469, 0.371588, 0.000000,
                      -2.648897,22.195307,11.494608, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour5 {
                      FrameTransformMatrix {
                         1.000000, 0.000000,-0.000000, 0.000000,
                         0.000000, 1.000000,-0.000000, 0.000000,
                         0.000000, 0.000000, 1.000000, 0.000000,
                        -0.000002,11.039503, 0.000003, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour5
                  } // End of Armature_mixamorig_RightArmour4
                } // End of Armature_mixamorig_RightArmour1
                Frame Armature_mixamorig_RightForeArm {
                  FrameTransformMatrix {
                     0.745882,-0.666070, 0.003269, 0.000000,
                     0.666070, 0.745888, 0.001127, 0.000000,
                    -0.003189, 0.001336, 0.999994, 0.000000,
                     0.000004,49.301304, 0.000017, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightHand {
                    FrameTransformMatrix {
                       0.690304,-0.210112,-0.692339, 0.000000,
                       0.277883, 0.960506,-0.014430, 0.000000,
                       0.668028,-0.182428, 0.721428, 0.000000,
                       0.000007,31.604986,-0.000005, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightHandIndex1 {
                      FrameTransformMatrix {
                         0.992744, 0.120211, 0.002997, 0.000000,
                        -0.119774, 0.990733,-0.064045, 0.000000,
                        -0.010668, 0.063221, 0.997943, 0.000000,
                         6.192895,21.270996, 0.499013, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandIndex2 {
                        FrameTransformMatrix {
                           0.999143, 0.040373, 0.009137, 0.000000,
                          -0.040373, 0.901742, 0.430385, 0.000000,
                           0.009137,-0.430385, 0.902599, 0.000000,
                          -0.000007, 7.535988,-0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandIndex3 {
                          FrameTransformMatrix {
                             0.999993,-0.001236,-0.003502, 0.000000,
                             0.002237, 0.953217, 0.302278, 0.000000,
                             0.002964,-0.302284, 0.953213, 0.000000,
                            -0.000008, 7.512996,-0.000005, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000008,10.212009,-0.000002, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandIndex4
                        } // End of Armature_mixamorig_RightHandIndex3
                      } // End of Armature_mixamorig_RightHandIndex2
                    } // End of Armature_mixamorig_RightHandIndex1
                    Frame Armature_mixamorig_RightHandMiddle1 {
                      FrameTransformMatrix {
                         0.992744, 0.120211, 0.002997, 0.000000,
                        -0.119774, 0.990733,-0.064045, 0.000000,
                        -0.010668, 0.063221, 0.997943, 0.000000,
                        -0.016502,23.333994, 0.008999, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandMiddle2 {
                        FrameTransformMatrix {
                           0.999143, 0.040373, 0.009137, 0.000000,
                          -0.040373, 0.901742, 0.430385, 0.000000,
                           0.009137,-0.430385, 0.902599, 0.000000,
                           0.000005, 6.996989,-0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandMiddle3 {
                          FrameTransformMatrix {
                             0.999799, 0.019924, 0.002140, 0.000000,
                            -0.019924, 0.976980, 0.212396, 0.000000,
                             0.002141,-0.212396, 0.977181, 0.000000,
                             0.000005, 7.016009,-0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000000, 7.720996,-0.000004, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandMiddle4
                        } // End of Armature_mixamorig_RightHandMiddle3
                      } // End of Armature_mixamorig_RightHandMiddle2
                    } // End of Armature_mixamorig_RightHandMiddle1
                    Frame Armature_mixamorig_RightHandPinky1 {
                      FrameTransformMatrix {
                         0.992744, 0.120211, 0.002997, 0.000000,
                        -0.119774, 0.990733,-0.064045, 0.000000,
                        -0.010668, 0.063221, 0.997943, 0.000000,
                        -11.443208,18.881002, 0.462009, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandPinky2 {
                        FrameTransformMatrix {
                           0.999143, 0.040373, 0.009137, 0.000000,
                          -0.040373, 0.901742, 0.430385, 0.000000,
                           0.009137,-0.430385, 0.902599, 0.000000,
                           0.000000, 4.919996, 0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandPinky3 {
                          FrameTransformMatrix {
                             0.999799, 0.019924, 0.002140, 0.000000,
                            -0.019924, 0.976980, 0.212396, 0.000000,
                             0.002141,-0.212396, 0.977181, 0.000000,
                            -0.000003, 5.233001,-0.000012, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandPinky4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000010, 5.571002, 0.000017, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandPinky4
                        } // End of Armature_mixamorig_RightHandPinky3
                      } // End of Armature_mixamorig_RightHandPinky2
                    } // End of Armature_mixamorig_RightHandPinky1
                    Frame Armature_mixamorig_RightHandRing1 {
                      FrameTransformMatrix {
                         0.992744, 0.120211, 0.002997, 0.000000,
                        -0.119774, 0.990733,-0.064045, 0.000000,
                        -0.010668, 0.063221, 0.997943, 0.000000,
                        -6.516901,22.686001, 0.103998, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandRing2 {
                        FrameTransformMatrix {
                           0.999143, 0.040373, 0.009137, 0.000000,
                          -0.040373, 0.901742, 0.430385, 0.000000,
                           0.009137,-0.430385, 0.902599, 0.000000,
                           0.000004, 6.408997, 0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandRing3 {
                          FrameTransformMatrix {
                             0.999799, 0.019924, 0.002140, 0.000000,
                            -0.019924, 0.976981, 0.212396, 0.000000,
                             0.002141,-0.212396, 0.977181, 0.000000,
                            -0.000001, 6.149997,-0.000003, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandRing4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000006, 6.146006,-0.000007, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandRing4
                        } // End of Armature_mixamorig_RightHandRing3
                      } // End of Armature_mixamorig_RightHandRing2
                    } // End of Armature_mixamorig_RightHandRing1
                    Frame Armature_mixamorig_RightHandThumb1 {
                      FrameTransformMatrix {
                         0.558287,-0.747350, 0.360255, 0.000000,
                         0.420195, 0.629124, 0.653941, 0.000000,
                        -0.715368,-0.213709, 0.665265, 0.000000,
                         7.059701, 6.094000, 4.396996, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandThumb2 {
                        FrameTransformMatrix {
                           0.898370, 0.431688,-0.081094, 0.000000,
                          -0.431009, 0.830811,-0.352113, 0.000000,
                          -0.084629, 0.351281, 0.932438, 0.000000,
                           0.000000, 7.536304, 0.000000, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandThumb3 {
                          FrameTransformMatrix {
                             0.966212, 0.254693,-0.039567, 0.000000,
                            -0.256678, 0.936829,-0.237630, 0.000000,
                            -0.023455, 0.239757, 0.970549, 0.000000,
                            -0.000003, 7.512699,-0.000012, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000001, 0.000002, 0.000000,
                               0.000001, 1.000000, 0.000001, 0.000000,
                              -0.000002,-0.000001, 1.000000, 0.000000,
                               0.000001,10.212732, 0.000007, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandThumb4
                        } // End of Armature_mixamorig_RightHandThumb3
                      } // End of Armature_mixamorig_RightHandThumb2
                    } // End of Armature_mixamorig_RightHandThumb1
                  } // End of Armature_mixamorig_RightHand
                } // End of Armature_mixamorig_RightForeArm
              } // End of Armature_mixamorig_RightArm
            } // End of Armature_mixamorig_RightShoulder
          } // End of Armature_mixamorig_Spine2
        } // End of Armature_mixamorig_Spine1
      } // End of Armature_mixamorig_Spine
    } // End of Armature_mixamorig_Hips
  } // End of Armature
} // End of Root
AnimationSet Global {
  Animation {
    {Armature}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      1;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      2;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      3;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      4;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      5;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      6;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      7;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      8;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      9;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      10;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      11;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      12;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      13;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      14;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      15;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      16;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      17;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      18;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      19;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      20;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      21;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      22;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      23;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      24;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      25;4;-0.707107, 0.707107, 0.000000, 0.000000;;,
      26;4;-0.707107, 0.707107, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 0.150000, 0.150000, 0.150000;;,
      1;3; 0.150000, 0.150000, 0.150000;;,
      2;3; 0.150000, 0.150000, 0.150000;;,
      3;3; 0.150000, 0.150000, 0.150000;;,
      4;3; 0.150000, 0.150000, 0.150000;;,
      5;3; 0.150000, 0.150000, 0.150000;;,
      6;3; 0.150000, 0.150000, 0.150000;;,
      7;3; 0.150000, 0.150000, 0.150000;;,
      8;3; 0.150000, 0.150000, 0.150000;;,
      9;3; 0.150000, 0.150000, 0.150000;;,
      10;3; 0.150000, 0.150000, 0.150000;;,
      11;3; 0.150000, 0.150000, 0.150000;;,
      12;3; 0.150000, 0.150000, 0.150000;;,
      13;3; 0.150000, 0.150000, 0.150000;;,
      14;3; 0.150000, 0.150000, 0.150000;;,
      15;3; 0.150000, 0.150000, 0.150000;;,
      16;3; 0.150000, 0.150000, 0.150000;;,
      17;3; 0.150000, 0.150000, 0.150000;;,
      18;3; 0.150000, 0.150000, 0.150000;;,
      19;3; 0.150000, 0.150000, 0.150000;;,
      20;3; 0.150000, 0.150000, 0.150000;;,
      21;3; 0.150000, 0.150000, 0.150000;;,
      22;3; 0.150000, 0.150000, 0.150000;;,
      23;3; 0.150000, 0.150000, 0.150000;;,
      24;3; 0.150000, 0.150000, 0.150000;;,
      25;3; 0.150000, 0.150000, 0.150000;;,
      26;3; 0.150000, 0.150000, 0.150000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000, 0.000000, 0.000000;;,
      1;3; 0.000000, 0.000000, 0.000000;;,
      2;3; 0.000000, 0.000000, 0.000000;;,
      3;3; 0.000000, 0.000000, 0.000000;;,
      4;3; 0.000000, 0.000000, 0.000000;;,
      5;3; 0.000000, 0.000000, 0.000000;;,
      6;3; 0.000000, 0.000000, 0.000000;;,
      7;3; 0.000000, 0.000000, 0.000000;;,
      8;3; 0.000000, 0.000000, 0.000000;;,
      9;3; 0.000000, 0.000000, 0.000000;;,
      10;3; 0.000000, 0.000000, 0.000000;;,
      11;3; 0.000000, 0.000000, 0.000000;;,
      12;3; 0.000000, 0.000000, 0.000000;;,
      13;3; 0.000000, 0.000000, 0.000000;;,
      14;3; 0.000000, 0.000000, 0.000000;;,
      15;3; 0.000000, 0.000000, 0.000000;;,
      16;3; 0.000000, 0.000000, 0.000000;;,
      17;3; 0.000000, 0.000000, 0.000000;;,
      18;3; 0.000000, 0.000000, 0.000000;;,
      19;3; 0.000000, 0.000000, 0.000000;;,
      20;3; 0.000000, 0.000000, 0.000000;;,
      21;3; 0.000000, 0.000000, 0.000000;;,
      22;3; 0.000000, 0.000000, 0.000000;;,
      23;3; 0.000000, 0.000000, 0.000000;;,
      24;3; 0.000000, 0.000000, 0.000000;;,
      25;3; 0.000000, 0.000000, 0.000000;;,
      26;3; 0.000000, 0.000000, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Hips}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.983646, 0.174724,-0.042870,-0.008642;;,
      1;4;-0.980799, 0.184826,-0.062213, 0.001818;;,
      2;4;-0.977114, 0.196858,-0.080113, 0.008747;;,
      3;4;-0.972308, 0.214011,-0.093297, 0.010580;;,
      4;4;-0.965707, 0.239213,-0.100617, 0.007952;;,
      5;4;-0.960447, 0.258821,-0.101844, 0.013487;;,
      6;4;-0.958759, 0.263717,-0.103457, 0.023033;;,
      7;4;-0.959748, 0.256851,-0.109432, 0.030592;;,
      8;4;-0.962304, 0.243453,-0.117147, 0.031276;;,
      9;4;-0.966955, 0.224177,-0.118101, 0.028191;;,
      10;4;-0.970744, 0.215447,-0.102498, 0.027082;;,
      11;4;-0.972823, 0.219770,-0.064891, 0.033243;;,
      12;4;-0.976875, 0.209906,-0.013938, 0.038219;;,
      13;4;-0.979097, 0.197234, 0.031649, 0.038278;;,
      14;4;-0.980102, 0.186082, 0.059970, 0.034312;;,
      15;4;-0.981789, 0.176807, 0.064967, 0.024688;;,
      16;4;-0.982112, 0.179541, 0.055191, 0.013258;;,
      17;4;-0.981949, 0.183706, 0.044596, 0.006237;;,
      18;4;-0.982046, 0.184190, 0.040652,-0.002514;;,
      19;4;-0.982190, 0.181542, 0.045605,-0.016274;;,
      20;4;-0.982871, 0.174846, 0.052198,-0.025871;;,
      21;4;-0.984371, 0.165732, 0.052845,-0.027450;;,
      22;4;-0.986331, 0.157120, 0.040980,-0.028001;;,
      23;4;-0.985943, 0.163132, 0.019767,-0.030214;;,
      24;4;-0.985972, 0.164458,-0.001497,-0.028473;;,
      25;4;-0.985381, 0.167532,-0.022287,-0.021484;;,
      26;4;-0.983644, 0.174728,-0.042874,-0.008708;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.185859,75.095871, 2.543150;;,
      1;3;-0.221108,78.213844, 2.543150;;,
      2;3;-0.400589,80.614403, 2.543150;;,
      3;3;-0.392052,83.148499, 2.543150;;,
      4;3;-0.266366,85.736420, 2.543150;;,
      5;3;-0.600042,86.817924, 2.543150;;,
      6;3;-1.232816,87.516571, 2.543150;;,
      7;3;-1.885216,87.901497, 2.543150;;,
      8;3;-1.870362,86.416245, 2.543150;;,
      9;3;-1.261917,81.897331, 2.543150;;,
      10;3;-0.331679,73.963104, 2.543150;;,
      11;3; 0.653131,67.715508, 2.543150;;,
      12;3; 1.811528,66.396530, 2.543150;;,
      13;3; 2.727654,69.211823, 2.543150;;,
      14;3; 3.382784,73.501289, 2.543150;;,
      15;3; 3.839527,77.945084, 2.543150;;,
      16;3; 4.182535,82.274521, 2.543150;;,
      17;3; 4.483569,86.860390, 2.543150;;,
      18;3; 4.591407,89.413437, 2.543150;;,
      19;3; 4.648551,89.196091, 2.543150;;,
      20;3; 4.389373,84.530930, 2.543150;;,
      21;3; 3.524472,77.767982, 2.543150;;,
      22;3; 2.391199,72.040749, 2.543150;;,
      23;3; 1.514955,69.591171, 2.543150;;,
      24;3; 0.997379,70.014969, 2.543150;;,
      25;3; 0.487327,71.911453, 2.543150;;,
      26;3; 0.183090,75.106590, 2.543150;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.972525, 0.225246, 0.049421, 0.031902;;,
      1;4;-0.973214, 0.218529, 0.070173, 0.013273;;,
      2;4;-0.973121, 0.212058, 0.089568,-0.006700;;,
      3;4;-0.972614, 0.205621, 0.105103,-0.026353;;,
      4;4;-0.976041, 0.179169, 0.116591,-0.040601;;,
      5;4;-0.978160, 0.159366, 0.119521,-0.059333;;,
      6;4;-0.977981, 0.150135, 0.119865,-0.081518;;,
      7;4;-0.975644, 0.149397, 0.120972,-0.105665;;,
      8;4;-0.972755, 0.156271, 0.122767,-0.119397;;,
      9;4;-0.971324, 0.166301, 0.122423,-0.117842;;,
      10;4;-0.971849, 0.175446, 0.115749,-0.106448;;,
      11;4;-0.974007, 0.184851, 0.091722,-0.093423;;,
      12;4;-0.976901, 0.194167, 0.052707,-0.072015;;,
      13;4;-0.977441, 0.204671, 0.015413,-0.049813;;,
      14;4;-0.975628, 0.217164,-0.012541,-0.028861;;,
      15;4;-0.973466, 0.226708,-0.028787,-0.011763;;,
      16;4;-0.973595, 0.225183,-0.037492, 0.000861;;,
      17;4;-0.974698, 0.218266,-0.046628, 0.012187;;,
      18;4;-0.975950, 0.209733,-0.052792, 0.027318;;,
      19;4;-0.976571, 0.202252,-0.054503, 0.049329;;,
      20;4;-0.976594, 0.197537,-0.054476, 0.065388;;,
      21;4;-0.976027, 0.199768,-0.050726, 0.069936;;,
      22;4;-0.973355, 0.217450,-0.034313, 0.064171;;,
      23;4;-0.970723, 0.233125,-0.012100, 0.056599;;,
      24;4;-0.970881, 0.233678, 0.009881, 0.051836;;,
      25;4;-0.972129, 0.228193, 0.030549, 0.044277;;,
      26;4;-0.972522, 0.225247, 0.049460, 0.031929;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,13.784801, 0.064402;;,
      1;3; 0.000000,13.784780, 0.064396;;,
      2;3;-0.000000,13.784801, 0.064398;;,
      3;3;-0.000000,13.784801, 0.064396;;,
      4;3; 0.000000,13.784796, 0.064404;;,
      5;3; 0.000002,13.784796, 0.064401;;,
      6;3; 0.000001,13.784809, 0.064404;;,
      7;3; 0.000001,13.784798, 0.064399;;,
      8;3;-0.000000,13.784806, 0.064399;;,
      9;3;-0.000000,13.784787, 0.064400;;,
      10;3; 0.000000,13.784800, 0.064402;;,
      11;3; 0.000000,13.784799, 0.064398;;,
      12;3; 0.000000,13.784799, 0.064399;;,
      13;3; 0.000000,13.784795, 0.064397;;,
      14;3;-0.000001,13.784794, 0.064400;;,
      15;3; 0.000000,13.784799, 0.064400;;,
      16;3; 0.000000,13.784785, 0.064399;;,
      17;3; 0.000000,13.784799, 0.064399;;,
      18;3;-0.000000,13.784807, 0.064402;;,
      19;3; 0.000000,13.784798, 0.064400;;,
      20;3; 0.000000,13.784786, 0.064397;;,
      21;3; 0.000001,13.784795, 0.064401;;,
      22;3;-0.000000,13.784799, 0.064400;;,
      23;3; 0.000000,13.784794, 0.064402;;,
      24;3; 0.000000,13.784801, 0.064401;;,
      25;3; 0.000000,13.784797, 0.064396;;,
      26;3; 0.000000,13.784795, 0.064398;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.989301, 0.138939,-0.009876, 0.043387;;,
      1;4;-0.990497, 0.133147,-0.002018, 0.034417;;,
      2;4;-0.991586, 0.127121, 0.004921, 0.023946;;,
      3;4;-0.992440, 0.121533, 0.011258, 0.012895;;,
      4;4;-0.993872, 0.109034, 0.017658, 0.004223;;,
      5;4;-0.994979, 0.097105, 0.024225,-0.000533;;,
      6;4;-0.995574, 0.088947, 0.030107,-0.003802;;,
      7;4;-0.995534, 0.087423, 0.034305,-0.009577;;,
      8;4;-0.994941, 0.092572, 0.035659,-0.015845;;,
      9;4;-0.994249, 0.099813, 0.033436,-0.019717;;,
      10;4;-0.993660, 0.106719, 0.027469,-0.022288;;,
      11;4;-0.993104, 0.113794, 0.017700,-0.021938;;,
      12;4;-0.992561, 0.120772, 0.005215,-0.014461;;,
      13;4;-0.991766, 0.127773,-0.007406,-0.004451;;,
      14;4;-0.990709, 0.134538,-0.018647, 0.006960;;,
      15;4;-0.989653, 0.139550,-0.028824, 0.016782;;,
      16;4;-0.989072, 0.140438,-0.038828, 0.022502;;,
      17;4;-0.989019, 0.137136,-0.048737, 0.025683;;,
      18;4;-0.989451, 0.130071,-0.058198, 0.026111;;,
      19;4;-0.990385, 0.119065,-0.065304, 0.026412;;,
      20;4;-0.990986, 0.112212,-0.067321, 0.028677;;,
      21;4;-0.990738, 0.115255,-0.063582, 0.033329;;,
      22;4;-0.989084, 0.131432,-0.054828, 0.037840;;,
      23;4;-0.988049, 0.141379,-0.043199, 0.043644;;,
      24;4;-0.987841, 0.144438,-0.030292, 0.048889;;,
      25;4;-0.988456, 0.141920,-0.018575, 0.049692;;,
      26;4;-0.989301, 0.138944,-0.009878, 0.043372;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,12.024298,-0.000002;;,
      1;3;-0.000001,12.024300,-0.000004;;,
      2;3; 0.000000,12.024305,-0.000005;;,
      3;3; 0.000000,12.024305, 0.000004;;,
      4;3;-0.000000,12.024300, 0.000000;;,
      5;3; 0.000000,12.024302, 0.000002;;,
      6;3; 0.000000,12.024298, 0.000007;;,
      7;3; 0.000000,12.024302,-0.000006;;,
      8;3; 0.000000,12.024287,-0.000003;;,
      9;3;-0.000000,12.024299,-0.000000;;,
      10;3;-0.000000,12.024313, 0.000006;;,
      11;3;-0.000000,12.024296, 0.000005;;,
      12;3; 0.000000,12.024303,-0.000004;;,
      13;3; 0.000000,12.024300, 0.000003;;,
      14;3; 0.000001,12.024300,-0.000013;;,
      15;3; 0.000000,12.024289, 0.000001;;,
      16;3; 0.000000,12.024292, 0.000004;;,
      17;3;-0.000000,12.024291,-0.000010;;,
      18;3;-0.000000,12.024308, 0.000005;;,
      19;3;-0.000000,12.024297,-0.000004;;,
      20;3; 0.000000,12.024293, 0.000007;;,
      21;3;-0.000000,12.024292, 0.000003;;,
      22;3; 0.000000,12.024303,-0.000002;;,
      23;3;-0.000000,12.024297, 0.000003;;,
      24;3; 0.000000,12.024298,-0.000001;;,
      25;3; 0.000000,12.024295,-0.000003;;,
      26;3;-0.000000,12.024296, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.990314, 0.133061,-0.008045, 0.038837;;,
      1;4;-0.991396, 0.127169,-0.001012, 0.031010;;,
      2;4;-0.992427, 0.120790, 0.004972, 0.021778;;,
      3;4;-0.993261, 0.114805, 0.010383, 0.012002;;,
      4;4;-0.994629, 0.102084, 0.016532, 0.004233;;,
      5;4;-0.995655, 0.090090, 0.023568, 0.000109;;,
      6;4;-0.996190, 0.081837, 0.030023,-0.002740;;,
      7;4;-0.996142, 0.080336, 0.034330,-0.008274;;,
      8;4;-0.995594, 0.085453, 0.035746,-0.014599;;,
      9;4;-0.994958, 0.092448, 0.033841,-0.019157;;,
      10;4;-0.994422, 0.099103, 0.027743,-0.023118;;,
      11;4;-0.993915, 0.105996, 0.017771,-0.024128;;,
      12;4;-0.993399, 0.113142, 0.006363,-0.017803;;,
      13;4;-0.992663, 0.120473,-0.004991,-0.009050;;,
      14;4;-0.991703, 0.127658,-0.015109, 0.000994;;,
      15;4;-0.990729, 0.133245,-0.024688, 0.009625;;,
      16;4;-0.990179, 0.134570,-0.035052, 0.014456;;,
      17;4;-0.990107, 0.131579,-0.045740, 0.016809;;,
      18;4;-0.990463, 0.124568,-0.056473, 0.016632;;,
      19;4;-0.991290, 0.113465,-0.064668, 0.016962;;,
      20;4;-0.991825, 0.106484,-0.067559, 0.019515;;,
      21;4;-0.991590, 0.109471,-0.064663, 0.024176;;,
      22;4;-0.990024, 0.125479,-0.057392, 0.028518;;,
      23;4;-0.989076, 0.135644,-0.045525, 0.035455;;,
      24;4;-0.988995, 0.138481,-0.030878, 0.041945;;,
      25;4;-0.989589, 0.135965,-0.017219, 0.043939;;,
      26;4;-0.990314, 0.133065,-0.008052, 0.038822;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,17.815802,-0.000004;;,
      1;3; 0.000000,17.815796, 0.000014;;,
      2;3; 0.000000,17.815800,-0.000004;;,
      3;3;-0.000001,17.815798, 0.000002;;,
      4;3;-0.000000,17.815794, 0.000002;;,
      5;3;-0.000001,17.815786,-0.000001;;,
      6;3;-0.000001,17.815792, 0.000006;;,
      7;3; 0.000001,17.815805,-0.000000;;,
      8;3; 0.000000,17.815796,-0.000004;;,
      9;3;-0.000001,17.815804,-0.000006;;,
      10;3;-0.000000,17.815802,-0.000005;;,
      11;3; 0.000001,17.815800, 0.000006;;,
      12;3; 0.000001,17.815800,-0.000000;;,
      13;3; 0.000001,17.815800,-0.000009;;,
      14;3; 0.000000,17.815802, 0.000003;;,
      15;3;-0.000000,17.815802,-0.000008;;,
      16;3; 0.000000,17.815804, 0.000011;;,
      17;3;-0.000001,17.815800, 0.000000;;,
      18;3; 0.000000,17.815802,-0.000004;;,
      19;3; 0.000001,17.815796,-0.000005;;,
      20;3; 0.000000,17.815815,-0.000001;;,
      21;3;-0.000000,17.815800, 0.000007;;,
      22;3;-0.000001,17.815804, 0.000007;;,
      23;3; 0.000001,17.815796,-0.000006;;,
      24;3; 0.000001,17.815798,-0.000004;;,
      25;3;-0.000000,17.815800,-0.000001;;,
      26;3;-0.000000,17.815800,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.923093, 0.328936,-0.025544,-0.197603;;,
      1;4;-0.919043, 0.352153,-0.018802,-0.176053;;,
      2;4;-0.926727, 0.344331,-0.010227,-0.150029;;,
      3;4;-0.937634, 0.328132,-0.000757,-0.114770;;,
      4;4;-0.927946, 0.363996, 0.008954,-0.079640;;,
      5;4;-0.900389, 0.432194, 0.020588,-0.045660;;,
      6;4;-0.877277, 0.478575, 0.036272,-0.005965;;,
      7;4;-0.868509, 0.491525, 0.056423, 0.030211;;,
      8;4;-0.870916, 0.482302, 0.077548, 0.053636;;,
      9;4;-0.876377, 0.468638, 0.093706, 0.059680;;,
      10;4;-0.902950, 0.415690, 0.096386, 0.050926;;,
      11;4;-0.940236, 0.324027, 0.095427, 0.043090;;,
      12;4;-0.946693, 0.301049, 0.106600, 0.042168;;,
      13;4;-0.936100, 0.330510, 0.117220, 0.027182;;,
      14;4;-0.935936, 0.333462, 0.112678,-0.011437;;,
      15;4;-0.937541, 0.326228, 0.102424,-0.064044;;,
      16;4;-0.927318, 0.342641, 0.091661,-0.119482;;,
      17;4;-0.904564, 0.384708, 0.078057,-0.166347;;,
      18;4;-0.876464, 0.434798, 0.057962,-0.198498;;,
      19;4;-0.853597, 0.472655, 0.032315,-0.216622;;,
      20;4;-0.845965, 0.485218, 0.010744,-0.220887;;,
      21;4;-0.860047, 0.464153, 0.001948,-0.211843;;,
      22;4;-0.889428, 0.411206, 0.001867,-0.199560;;,
      23;4;-0.909369, 0.365059,-0.002560,-0.199433;;,
      24;4;-0.912400, 0.352877,-0.012152,-0.207017;;,
      25;4;-0.913429, 0.348404,-0.020550,-0.209379;;,
      26;4;-0.923207, 0.329304,-0.021188,-0.196976;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000001,39.117603,11.976999;;,
      1;3; 0.000001,39.117596,11.977011;;,
      2;3; 0.000000,39.117599,11.977001;;,
      3;3; 0.000001,39.117599,11.976994;;,
      4;3;-0.000001,39.117584,11.976994;;,
      5;3; 0.000000,39.117596,11.977009;;,
      6;3; 0.000001,39.117599,11.976999;;,
      7;3;-0.000001,39.117599,11.976999;;,
      8;3;-0.000000,39.117603,11.977003;;,
      9;3;-0.000001,39.117599,11.977004;;,
      10;3;-0.000000,39.117603,11.976987;;,
      11;3;-0.000001,39.117599,11.976999;;,
      12;3; 0.000001,39.117596,11.977000;;,
      13;3;-0.000000,39.117599,11.977009;;,
      14;3;-0.000000,39.117603,11.977000;;,
      15;3;-0.000001,39.117596,11.977001;;,
      16;3; 0.000001,39.117592,11.977005;;,
      17;3; 0.000000,39.117607,11.976998;;,
      18;3; 0.000001,39.117599,11.976999;;,
      19;3; 0.000001,39.117588,11.976997;;,
      20;3; 0.000001,39.117592,11.976987;;,
      21;3;-0.000000,39.117599,11.977008;;,
      22;3; 0.000000,39.117607,11.976995;;,
      23;3;-0.000001,39.117599,11.976996;;,
      24;3;-0.000002,39.117599,11.977004;;,
      25;3; 0.000002,39.117599,11.977003;;,
      26;3; 0.000000,39.117592,11.976997;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.987020,-0.052719, 0.082406, 0.127365;;,
      1;4;-0.985523,-0.075475, 0.069450, 0.135000;;,
      2;4;-0.985677,-0.071174, 0.056406, 0.142102;;,
      3;4;-0.987013,-0.059850, 0.041613, 0.143153;;,
      4;4;-0.985543,-0.089377, 0.023876, 0.141937;;,
      5;4;-0.979964,-0.146075,-0.001587, 0.135391;;,
      6;4;-0.974057,-0.189125,-0.032446, 0.119964;;,
      7;4;-0.970713,-0.209205,-0.058915, 0.102369;;,
      8;4;-0.969887,-0.213286,-0.080709, 0.085530;;,
      9;4;-0.970055,-0.210136,-0.095210, 0.075967;;,
      10;4;-0.978910,-0.162303,-0.095939, 0.078670;;,
      11;4;-0.990427,-0.066029,-0.093522, 0.077121;;,
      12;4;-0.992863,-0.025392,-0.097882, 0.063224;;,
      13;4;-0.993136,-0.042993,-0.094806, 0.053336;;,
      14;4;-0.994324,-0.048637,-0.076961, 0.055053;;,
      15;4;-0.995500,-0.054194,-0.049625, 0.059832;;,
      16;4;-0.993828,-0.088635,-0.021054, 0.063299;;,
      17;4;-0.987310,-0.145687, 0.002513, 0.063143;;,
      18;4;-0.977127,-0.201953, 0.026403, 0.061157;;,
      19;4;-0.968327,-0.236521, 0.051495, 0.061227;;,
      20;4;-0.966183,-0.241092, 0.065803, 0.063518;;,
      21;4;-0.970182,-0.223418, 0.064048, 0.068764;;,
      22;4;-0.976879,-0.190943, 0.056749, 0.077645;;,
      23;4;-0.982270,-0.152826, 0.058428, 0.091521;;,
      24;4;-0.985053,-0.114515, 0.069100, 0.108550;;,
      25;4;-0.985970,-0.078979, 0.079511, 0.123704;;,
      26;4;-0.987283,-0.052806, 0.078050, 0.128031;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000001,15.664109,-14.552526;;,
      1;3; 0.000001,15.664103,-14.552502;;,
      2;3;-0.000000,15.664104,-14.552513;;,
      3;3; 0.000000,15.664101,-14.552495;;,
      4;3; 0.000002,15.664113,-14.552491;;,
      5;3;-0.000000,15.664108,-14.552517;;,
      6;3; 0.000002,15.664102,-14.552526;;,
      7;3;-0.000001,15.664094,-14.552508;;,
      8;3; 0.000000,15.664112,-14.552492;;,
      9;3;-0.000001,15.664097,-14.552514;;,
      10;3; 0.000001,15.664107,-14.552497;;,
      11;3;-0.000004,15.664104,-14.552491;;,
      12;3; 0.000000,15.664100,-14.552503;;,
      13;3;-0.000001,15.664112,-14.552507;;,
      14;3; 0.000001,15.664094,-14.552494;;,
      15;3; 0.000003,15.664116,-14.552514;;,
      16;3;-0.000003,15.664111,-14.552501;;,
      17;3;-0.000000,15.664098,-14.552515;;,
      18;3;-0.000001,15.664117,-14.552517;;,
      19;3;-0.000001,15.664118,-14.552502;;,
      20;3; 0.000000,15.664093,-14.552489;;,
      21;3;-0.000001,15.664102,-14.552492;;,
      22;3;-0.000002,15.664114,-14.552513;;,
      23;3; 0.000001,15.664105,-14.552517;;,
      24;3; 0.000000,15.664104,-14.552497;;,
      25;3;-0.000000,15.664115,-14.552508;;,
      26;3;-0.000001,15.664108,-14.552502;;;
    }
  }
  Animation {
    {Armature_mixamorig_HeadTop_End}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000001, 7.553704,-15.601688;;,
      1;3; 0.000003, 7.553697,-15.601698;;,
      2;3;-0.000002, 7.553696,-15.601704;;,
      3;3; 0.000002, 7.553689,-15.601697;;,
      4;3; 0.000003, 7.553695,-15.601686;;,
      5;3;-0.000000, 7.553706,-15.601699;;,
      6;3; 0.000002, 7.553703,-15.601719;;,
      7;3;-0.000000, 7.553696,-15.601677;;,
      8;3; 0.000000, 7.553702,-15.601704;;,
      9;3;-0.000000, 7.553709,-15.601703;;,
      10;3;-0.000000, 7.553703,-15.601701;;,
      11;3; 0.000001, 7.553709,-15.601691;;,
      12;3;-0.000000, 7.553700,-15.601696;;,
      13;3;-0.000001, 7.553704,-15.601684;;,
      14;3; 0.000001, 7.553705,-15.601692;;,
      15;3;-0.000000, 7.553704,-15.601687;;,
      16;3;-0.000000, 7.553700,-15.601682;;,
      17;3;-0.000001, 7.553709,-15.601702;;,
      18;3;-0.000001, 7.553709,-15.601700;;,
      19;3;-0.000000, 7.553697,-15.601723;;,
      20;3; 0.000000, 7.553689,-15.601688;;,
      21;3; 0.000000, 7.553689,-15.601695;;,
      22;3; 0.000001, 7.553705,-15.601712;;,
      23;3; 0.000000, 7.553695,-15.601691;;,
      24;3; 0.000001, 7.553703,-15.601690;;,
      25;3; 0.000001, 7.553699,-15.601715;;,
      26;3; 0.000000, 7.553692,-15.601709;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftEye}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 3.528702,12.838202,-2.462092;;,
      1;3; 3.528703,12.838197,-2.462093;;,
      2;3; 3.528697,12.838202,-2.462099;;,
      3;3; 3.528702,12.838198,-2.462092;;,
      4;3; 3.528703,12.838203,-2.462091;;,
      5;3; 3.528699,12.838210,-2.462104;;,
      6;3; 3.528702,12.838205,-2.462114;;,
      7;3; 3.528700,12.838196,-2.462082;;,
      8;3; 3.528700,12.838199,-2.462101;;,
      9;3; 3.528701,12.838201,-2.462101;;,
      10;3; 3.528699,12.838207,-2.462103;;,
      11;3; 3.528700,12.838207,-2.462099;;,
      12;3; 3.528699,12.838204,-2.462096;;,
      13;3; 3.528699,12.838202,-2.462086;;,
      14;3; 3.528701,12.838211,-2.462092;;,
      15;3; 3.528700,12.838212,-2.462084;;,
      16;3; 3.528700,12.838202,-2.462075;;,
      17;3; 3.528700,12.838198,-2.462104;;,
      18;3; 3.528700,12.838198,-2.462108;;,
      19;3; 3.528700,12.838202,-2.462114;;,
      20;3; 3.528700,12.838193,-2.462082;;,
      21;3; 3.528700,12.838193,-2.462092;;,
      22;3; 3.528700,12.838196,-2.462115;;,
      23;3; 3.528700,12.838198,-2.462094;;,
      24;3; 3.528700,12.838200,-2.462097;;,
      25;3; 3.528700,12.838199,-2.462112;;,
      26;3; 3.528702,12.838190,-2.462112;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightEye}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-3.528700,12.838204,-2.462087;;,
      1;3;-3.528699,12.838202,-2.462096;;,
      2;3;-3.528704,12.838202,-2.462096;;,
      3;3;-3.528699,12.838192,-2.462084;;,
      4;3;-3.528697,12.838198,-2.462091;;,
      5;3;-3.528701,12.838207,-2.462105;;,
      6;3;-3.528699,12.838211,-2.462104;;,
      7;3;-3.528700,12.838199,-2.462087;;,
      8;3;-3.528700,12.838202,-2.462103;;,
      9;3;-3.528700,12.838201,-2.462097;;,
      10;3;-3.528700,12.838210,-2.462102;;,
      11;3;-3.528699,12.838206,-2.462089;;,
      12;3;-3.528700,12.838204,-2.462091;;,
      13;3;-3.528700,12.838203,-2.462080;;,
      14;3;-3.528699,12.838213,-2.462095;;,
      15;3;-3.528700,12.838203,-2.462085;;,
      16;3;-3.528701,12.838201,-2.462077;;,
      17;3;-3.528701,12.838199,-2.462102;;,
      18;3;-3.528700,12.838195,-2.462105;;,
      19;3;-3.528700,12.838205,-2.462112;;,
      20;3;-3.528699,12.838186,-2.462090;;,
      21;3;-3.528699,12.838192,-2.462094;;,
      22;3;-3.528700,12.838205,-2.462110;;,
      23;3;-3.528698,12.838196,-2.462090;;,
      24;3;-3.528700,12.838203,-2.462086;;,
      25;3;-3.528702,12.838207,-2.462110;;,
      26;3;-3.528699,12.838189,-2.462103;;;
    }
  }
  Animation {
    {Armature_mixamorig_Jaw}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      1;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      2;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      3;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      4;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      5;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      6;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      7;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      8;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      9;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      10;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      11;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      12;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      13;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      14;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      15;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      16;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      17;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      18;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      19;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      20;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      21;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      22;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      23;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      24;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      25;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      26;4;-0.454186, 0.890907,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000001, 3.620707, 2.317807;;,
      1;3; 0.000002, 3.620693, 2.317800;;,
      2;3;-0.000003, 3.620701, 2.317796;;,
      3;3; 0.000002, 3.620689, 2.317801;;,
      4;3; 0.000002, 3.620699, 2.317806;;,
      5;3; 0.000000, 3.620697, 2.317783;;,
      6;3; 0.000001, 3.620705, 2.317781;;,
      7;3; 0.000000, 3.620694, 2.317808;;,
      8;3; 0.000000, 3.620702, 2.317791;;,
      9;3; 0.000000, 3.620709, 2.317795;;,
      10;3; 0.000000, 3.620706, 2.317793;;,
      11;3; 0.000001, 3.620698, 2.317797;;,
      12;3; 0.000000, 3.620697, 2.317802;;,
      13;3; 0.000000, 3.620706, 2.317810;;,
      14;3; 0.000000, 3.620706, 2.317801;;,
      15;3; 0.000000, 3.620700, 2.317808;;,
      16;3;-0.000001, 3.620700, 2.317818;;,
      17;3;-0.000000, 3.620693, 2.317786;;,
      18;3;-0.000000, 3.620704, 2.317781;;,
      19;3; 0.000000, 3.620700, 2.317776;;,
      20;3; 0.000000, 3.620685, 2.317810;;,
      21;3; 0.000000, 3.620690, 2.317804;;,
      22;3; 0.000000, 3.620694, 2.317788;;,
      23;3; 0.000000, 3.620691, 2.317801;;,
      24;3; 0.000000, 3.620701, 2.317799;;,
      25;3;-0.000001, 3.620698, 2.317779;;,
      26;3;-0.000001, 3.620684, 2.317791;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.543560, 0.509326, 0.513147,-0.426392;;,
      1;4;-0.556296, 0.513417, 0.509522,-0.409053;;,
      2;4;-0.568030, 0.513705, 0.510299,-0.391209;;,
      3;4;-0.579702, 0.510565, 0.515012,-0.371525;;,
      4;4;-0.591818, 0.504446, 0.522703,-0.349381;;,
      5;4;-0.604049, 0.494988, 0.533189,-0.325301;;,
      6;4;-0.614782, 0.481107, 0.546815,-0.302610;;,
      7;4;-0.621921, 0.461810, 0.564108,-0.285879;;,
      8;4;-0.623777, 0.438249, 0.584113,-0.278660;;,
      9;4;-0.619617, 0.414020, 0.604369,-0.281780;;,
      10;4;-0.609955, 0.393471, 0.622097,-0.293480;;,
      11;4;-0.596614, 0.380009, 0.634821,-0.310882;;,
      12;4;-0.582015, 0.375160, 0.640589,-0.331902;;,
      13;4;-0.567846, 0.377827, 0.638708,-0.356161;;,
      14;4;-0.554373, 0.384533, 0.630439,-0.383865;;,
      15;4;-0.541072, 0.391398, 0.618634,-0.413933;;,
      16;4;-0.527852, 0.396606, 0.606255,-0.443318;;,
      17;4;-0.515932, 0.401418, 0.595147,-0.467416;;,
      18;4;-0.505823, 0.408301, 0.585038,-0.484936;;,
      19;4;-0.498799, 0.420117, 0.575602,-0.493340;;,
      20;4;-0.494231, 0.436737, 0.566008,-0.494602;;,
      21;4;-0.492170, 0.455259, 0.556494,-0.490737;;,
      22;4;-0.493754, 0.471872, 0.547728,-0.483257;;,
      23;4;-0.500337, 0.484646, 0.539556,-0.472927;;,
      24;4;-0.512024, 0.494164, 0.531134,-0.459924;;,
      25;4;-0.527103, 0.501943, 0.522253,-0.444373;;,
      26;4;-0.543560, 0.509327, 0.513147,-0.426391;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;17.399502,24.614197, 1.157902;;,
      1;3;17.399500,24.614191, 1.157903;;,
      2;3;17.399502,24.614201, 1.157903;;,
      3;3;17.399502,24.614191, 1.157891;;,
      4;3;17.399500,24.614185, 1.157894;;,
      5;3;17.399502,24.614193, 1.157906;;,
      6;3;17.399500,24.614202, 1.157898;;,
      7;3;17.399500,24.614191, 1.157894;;,
      8;3;17.399500,24.614197, 1.157903;;,
      9;3;17.399498,24.614199, 1.157903;;,
      10;3;17.399498,24.614199, 1.157888;;,
      11;3;17.399498,24.614201, 1.157898;;,
      12;3;17.399498,24.614201, 1.157899;;,
      13;3;17.399500,24.614193, 1.157903;;,
      14;3;17.399500,24.614201, 1.157900;;,
      15;3;17.399500,24.614201, 1.157893;;,
      16;3;17.399502,24.614193, 1.157909;;,
      17;3;17.399500,24.614197, 1.157902;;,
      18;3;17.399498,24.614195, 1.157905;;,
      19;3;17.399502,24.614197, 1.157889;;,
      20;3;17.399500,24.614189, 1.157894;;,
      21;3;17.399498,24.614195, 1.157902;;,
      22;3;17.399498,24.614197, 1.157897;;,
      23;3;17.399498,24.614193, 1.157897;;,
      24;3;17.399498,24.614197, 1.157908;;,
      25;3;17.399500,24.614197, 1.157894;;,
      26;3;17.399498,24.614193, 1.157902;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.899993, 0.380826,-0.069028, 0.200550;;,
      1;4;-0.881584, 0.445128,-0.050466, 0.148742;;,
      2;4;-0.856930, 0.505031,-0.035270, 0.096803;;,
      3;4;-0.828340, 0.557863,-0.020991, 0.046917;;,
      4;4;-0.799913, 0.600078,-0.006202, 0.002618;;,
      5;4;-0.779169, 0.626057, 0.011053,-0.028736;;,
      6;4;-0.772307, 0.633405, 0.026700,-0.040345;;,
      7;4;-0.780304, 0.624013, 0.031201,-0.027552;;,
      8;4;-0.796922, 0.603822, 0.014593, 0.010038;;,
      9;4;-0.812502, 0.578497,-0.027353, 0.066584;;,
      10;4;-0.820176, 0.549647,-0.090909, 0.130138;;,
      11;4;-0.819078, 0.515691,-0.166491, 0.188296;;,
      12;4;-0.812846, 0.474467,-0.242019, 0.235776;;,
      13;4;-0.806436, 0.425238,-0.304496, 0.275892;;,
      14;4;-0.802792, 0.373514,-0.345432, 0.310949;;,
      15;4;-0.799271, 0.336246,-0.372667, 0.330491;;,
      16;4;-0.798887, 0.318998,-0.383787, 0.335749;;,
      17;4;-0.804024, 0.319452,-0.379483, 0.327856;;,
      18;4;-0.811461, 0.328747,-0.366696, 0.314629;;,
      19;4;-0.819004, 0.345030,-0.347279, 0.299305;;,
      20;4;-0.826010, 0.360906,-0.326014, 0.284903;;,
      21;4;-0.834728, 0.369699,-0.306002, 0.270026;;,
      22;4;-0.848113, 0.367266,-0.283100, 0.256271;;,
      23;4;-0.867750, 0.354419,-0.241135, 0.251497;;,
      24;4;-0.886837, 0.345511,-0.185539, 0.244373;;,
      25;4;-0.899392, 0.351571,-0.125439, 0.227502;;,
      26;4;-0.899993, 0.380826,-0.069028, 0.200550;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000004,19.910402,-0.000004;;,
      1;3; 0.000010,19.910404,-0.000010;;,
      2;3;-0.000006,19.910400, 0.000002;;,
      3;3;-0.000002,19.910397, 0.000009;;,
      4;3;-0.000006,19.910402,-0.000001;;,
      5;3;-0.000004,19.910402,-0.000002;;,
      6;3; 0.000005,19.910404, 0.000009;;,
      7;3;-0.000015,19.910398,-0.000005;;,
      8;3;-0.000009,19.910397, 0.000000;;,
      9;3;-0.000002,19.910400,-0.000001;;,
      10;3;-0.000012,19.910400,-0.000002;;,
      11;3; 0.000005,19.910402, 0.000000;;,
      12;3; 0.000004,19.910404, 0.000004;;,
      13;3;-0.000004,19.910400, 0.000010;;,
      14;3;-0.000000,19.910400,-0.000007;;,
      15;3; 0.000008,19.910398, 0.000000;;,
      16;3; 0.000003,19.910400,-0.000006;;,
      17;3; 0.000007,19.910400, 0.000010;;,
      18;3; 0.000006,19.910400,-0.000005;;,
      19;3;-0.000007,19.910397, 0.000003;;,
      20;3; 0.000006,19.910406,-0.000008;;,
      21;3;-0.000005,19.910397,-0.000008;;,
      22;3;-0.000003,19.910404,-0.000010;;,
      23;3; 0.000004,19.910395, 0.000003;;,
      24;3;-0.000000,19.910400,-0.000001;;,
      25;3; 0.000010,19.910400,-0.000001;;,
      26;3;-0.000001,19.910400,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.914071,-0.000064, 0.001988, 0.405549;;,
      1;4;-0.903626,-0.000067, 0.002108, 0.428318;;,
      2;4;-0.891813,-0.000070, 0.002236, 0.452398;;,
      3;4;-0.882363,-0.000072, 0.002330, 0.470564;;,
      4;4;-0.877006,-0.000074, 0.002385, 0.480473;;,
      5;4;-0.872685,-0.000076, 0.002426, 0.488277;;,
      6;4;-0.863605,-0.000078, 0.002510, 0.504163;;,
      7;4;-0.851808,-0.000081, 0.002615, 0.523848;;,
      8;4;-0.848837,-0.000081, 0.002640, 0.528648;;,
      9;4;-0.862975,-0.000078, 0.002516, 0.505240;;,
      10;4;-0.885095,-0.000072, 0.002305, 0.465404;;,
      11;4;-0.900096,-0.000068, 0.002147, 0.435686;;,
      12;4;-0.906046,-0.000066, 0.002081, 0.423174;;,
      13;4;-0.911069,-0.000065, 0.002023, 0.412249;;,
      14;4;-0.919069,-0.000062, 0.001927, 0.394091;;,
      15;4;-0.925516,-0.000065, 0.001859, 0.378703;;,
      16;4;-0.927784,-0.000075, 0.001858, 0.373113;;,
      17;4;-0.928921,-0.000082, 0.001863, 0.370274;;,
      18;4;-0.929459,-0.000084, 0.001860, 0.368921;;,
      19;4;-0.926533,-0.000068, 0.001855, 0.376210;;,
      20;4;-0.918484,-0.000062, 0.001934, 0.395453;;,
      21;4;-0.909116,-0.000065, 0.002046, 0.416539;;,
      22;4;-0.905273,-0.000067, 0.002089, 0.424826;;,
      23;4;-0.909747,-0.000065, 0.002038, 0.415158;;,
      24;4;-0.916912,-0.000063, 0.001953, 0.399085;;,
      25;4;-0.919385,-0.000062, 0.001923, 0.393355;;,
      26;4;-0.914071,-0.000064, 0.001988, 0.405549;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000006,49.301300, 0.000000;;,
      1;3; 0.000015,49.301285, 0.000002;;,
      2;3; 0.000010,49.301292, 0.000005;;,
      3;3;-0.000007,49.301296,-0.000007;;,
      4;3; 0.000003,49.301300, 0.000001;;,
      5;3;-0.000008,49.301296, 0.000007;;,
      6;3; 0.000010,49.301296, 0.000004;;,
      7;3; 0.000004,49.301292,-0.000004;;,
      8;3;-0.000002,49.301296, 0.000015;;,
      9;3;-0.000009,49.301296,-0.000008;;,
      10;3;-0.000012,49.301292, 0.000012;;,
      11;3; 0.000004,49.301296,-0.000004;;,
      12;3; 0.000000,49.301296,-0.000004;;,
      13;3;-0.000002,49.301304, 0.000002;;,
      14;3; 0.000000,49.301296,-0.000004;;,
      15;3; 0.000013,49.301289, 0.000004;;,
      16;3;-0.000003,49.301308, 0.000011;;,
      17;3;-0.000008,49.301308, 0.000004;;,
      18;3; 0.000003,49.301300, 0.000011;;,
      19;3; 0.000004,49.301292,-0.000015;;,
      20;3; 0.000000,49.301300,-0.000008;;,
      21;3; 0.000007,49.301296,-0.000004;;,
      22;3; 0.000004,49.301281,-0.000002;;,
      23;3; 0.000002,49.301308, 0.000002;;,
      24;3; 0.000002,49.301300,-0.000006;;,
      25;3; 0.000002,49.301296, 0.000003;;,
      26;3;-0.000006,49.301300,-0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      1;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      2;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      3;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      4;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      5;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      6;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      7;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      8;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      9;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      10;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      11;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      12;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      13;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      14;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      15;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      16;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      17;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      18;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      19;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      20;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      21;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      22;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      23;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      24;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      25;4;-0.858622,-0.103921,-0.469445, 0.177736;;,
      26;4;-0.858622,-0.103921,-0.469445, 0.177736;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000005,31.604708,-0.000005;;,
      1;3; 0.000006,31.604708,-0.000006;;,
      2;3; 0.000000,31.604710,-0.000003;;,
      3;3; 0.000005,31.604706,-0.000004;;,
      4;3;-0.000002,31.604702, 0.000001;;,
      5;3; 0.000006,31.604696,-0.000007;;,
      6;3;-0.000004,31.604712, 0.000016;;,
      7;3; 0.000004,31.604713,-0.000005;;,
      8;3; 0.000002,31.604706,-0.000003;;,
      9;3; 0.000001,31.604706, 0.000003;;,
      10;3;-0.000001,31.604717, 0.000001;;,
      11;3;-0.000001,31.604710, 0.000008;;,
      12;3; 0.000001,31.604706, 0.000005;;,
      13;3;-0.000000,31.604710, 0.000008;;,
      14;3;-0.000008,31.604706,-0.000008;;,
      15;3; 0.000002,31.604706,-0.000008;;,
      16;3; 0.000005,31.604713,-0.000008;;,
      17;3;-0.000003,31.604706,-0.000006;;,
      18;3;-0.000000,31.604704,-0.000008;;,
      19;3; 0.000005,31.604704,-0.000008;;,
      20;3; 0.000003,31.604708, 0.000006;;,
      21;3;-0.000001,31.604708, 0.000002;;,
      22;3;-0.000005,31.604704,-0.000002;;,
      23;3;-0.000001,31.604708,-0.000019;;,
      24;3;-0.000007,31.604710,-0.000005;;,
      25;3;-0.000012,31.604706, 0.000003;;,
      26;3;-0.000001,31.604706, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      1;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      2;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      3;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      4;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      5;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      6;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      7;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      8;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      9;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      10;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      11;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      12;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      13;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      14;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      15;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      16;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      17;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      18;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      19;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      20;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      21;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      22;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      23;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      24;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      25;4;-0.917320, 0.097903,-0.092091, 0.374779;;,
      26;4;-0.917320, 0.097903,-0.092091, 0.374779;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-7.059594, 6.094486, 4.397211;;,
      1;3;-7.059608, 6.094489, 4.397208;;,
      2;3;-7.059596, 6.094483, 4.397213;;,
      3;3;-7.059601, 6.094490, 4.397217;;,
      4;3;-7.059601, 6.094491, 4.397205;;,
      5;3;-7.059605, 6.094488, 4.397214;;,
      6;3;-7.059601, 6.094493, 4.397218;;,
      7;3;-7.059602, 6.094477, 4.397213;;,
      8;3;-7.059599, 6.094488, 4.397212;;,
      9;3;-7.059603, 6.094490, 4.397210;;,
      10;3;-7.059602, 6.094487, 4.397201;;,
      11;3;-7.059594, 6.094487, 4.397200;;,
      12;3;-7.059597, 6.094486, 4.397215;;,
      13;3;-7.059609, 6.094492, 4.397211;;,
      14;3;-7.059604, 6.094503, 4.397207;;,
      15;3;-7.059592, 6.094499, 4.397209;;,
      16;3;-7.059599, 6.094488, 4.397211;;,
      17;3;-7.059604, 6.094492, 4.397209;;,
      18;3;-7.059598, 6.094483, 4.397207;;,
      19;3;-7.059609, 6.094494, 4.397209;;,
      20;3;-7.059602, 6.094487, 4.397214;;,
      21;3;-7.059608, 6.094497, 4.397207;;,
      22;3;-7.059593, 6.094495, 4.397210;;,
      23;3;-7.059609, 6.094487, 4.397211;;,
      24;3;-7.059604, 6.094486, 4.397209;;,
      25;3;-7.059600, 6.094483, 4.397219;;,
      26;3;-7.059604, 6.094487, 4.397214;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      1;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      2;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      3;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      4;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      5;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      6;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      7;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      8;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      9;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      10;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      11;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      12;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      13;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      14;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      15;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      16;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      17;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      18;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      19;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      20;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      21;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      22;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      23;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      24;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      25;4;-0.970081,-0.047642, 0.001498,-0.238055;;,
      26;4;-0.970081,-0.047642, 0.001498,-0.238055;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000005, 7.536491,-0.000006;;,
      1;3;-0.000001, 7.536500,-0.000002;;,
      2;3;-0.000007, 7.536494,-0.000006;;,
      3;3; 0.000006, 7.536498,-0.000006;;,
      4;3;-0.000007, 7.536501, 0.000003;;,
      5;3; 0.000001, 7.536500,-0.000003;;,
      6;3;-0.000002, 7.536498, 0.000000;;,
      7;3;-0.000001, 7.536503, 0.000001;;,
      8;3; 0.000003, 7.536492, 0.000003;;,
      9;3; 0.000000, 7.536491, 0.000002;;,
      10;3; 0.000002, 7.536501, 0.000016;;,
      11;3; 0.000000, 7.536498,-0.000003;;,
      12;3; 0.000002, 7.536491,-0.000009;;,
      13;3;-0.000001, 7.536489,-0.000005;;,
      14;3;-0.000002, 7.536506,-0.000003;;,
      15;3; 0.000004, 7.536488,-0.000000;;,
      16;3; 0.000009, 7.536493,-0.000012;;,
      17;3;-0.000005, 7.536489, 0.000002;;,
      18;3;-0.000002, 7.536495,-0.000002;;,
      19;3; 0.000002, 7.536492,-0.000005;;,
      20;3;-0.000013, 7.536498, 0.000007;;,
      21;3; 0.000002, 7.536495, 0.000000;;,
      22;3; 0.000000, 7.536497, 0.000000;;,
      23;3;-0.000000, 7.536482,-0.000003;;,
      24;3; 0.000000, 7.536492, 0.000004;;,
      25;3; 0.000001, 7.536493,-0.000013;;,
      26;3;-0.000003, 7.536495, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      1;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      2;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      3;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      4;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      5;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      6;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      7;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      8;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      9;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      10;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      11;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      12;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      13;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      14;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      15;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      16;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      17;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      18;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      19;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      20;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      21;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      22;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      23;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      24;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      25;4;-0.980234,-0.020643,-0.028199,-0.194729;;,
      26;4;-0.980234,-0.020643,-0.028199,-0.194729;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000004, 7.512296, 0.000004;;,
      1;3;-0.000001, 7.512298,-0.000004;;,
      2;3; 0.000003, 7.512296,-0.000000;;,
      3;3;-0.000002, 7.512296, 0.000003;;,
      4;3;-0.000002, 7.512295,-0.000005;;,
      5;3; 0.000004, 7.512293, 0.000000;;,
      6;3; 0.000004, 7.512296, 0.000005;;,
      7;3; 0.000000, 7.512300,-0.000001;;,
      8;3; 0.000002, 7.512299, 0.000005;;,
      9;3; 0.000004, 7.512305, 0.000001;;,
      10;3; 0.000002, 7.512292,-0.000003;;,
      11;3; 0.000002, 7.512297,-0.000005;;,
      12;3; 0.000000, 7.512294,-0.000004;;,
      13;3;-0.000004, 7.512302, 0.000009;;,
      14;3; 0.000006, 7.512299, 0.000000;;,
      15;3;-0.000001, 7.512294,-0.000001;;,
      16;3;-0.000004, 7.512300, 0.000006;;,
      17;3; 0.000001, 7.512283, 0.000008;;,
      18;3;-0.000005, 7.512307, 0.000010;;,
      19;3; 0.000003, 7.512299,-0.000004;;,
      20;3;-0.000011, 7.512294,-0.000002;;,
      21;3; 0.000002, 7.512305, 0.000002;;,
      22;3;-0.000001, 7.512294, 0.000004;;,
      23;3;-0.000003, 7.512311, 0.000007;;,
      24;3; 0.000001, 7.512301, 0.000004;;,
      25;3; 0.000001, 7.512295,-0.000006;;,
      26;3; 0.000003, 7.512296, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000005,10.212404, 0.000003;;,
      1;3;-0.000001,10.212398, 0.000007;;,
      2;3;-0.000005,10.212404, 0.000011;;,
      3;3;-0.000001,10.212407,-0.000004;;,
      4;3; 0.000001,10.212403, 0.000004;;,
      5;3; 0.000002,10.212397, 0.000006;;,
      6;3; 0.000002,10.212400, 0.000006;;,
      7;3;-0.000008,10.212399, 0.000003;;,
      8;3;-0.000005,10.212400, 0.000007;;,
      9;3;-0.000007,10.212406,-0.000002;;,
      10;3;-0.000008,10.212408, 0.000011;;,
      11;3; 0.000001,10.212399, 0.000006;;,
      12;3; 0.000006,10.212400,-0.000005;;,
      13;3; 0.000004,10.212408, 0.000001;;,
      14;3; 0.000012,10.212398, 0.000003;;,
      15;3; 0.000010,10.212393, 0.000000;;,
      16;3; 0.000000,10.212403, 0.000009;;,
      17;3;-0.000004,10.212396,-0.000002;;,
      18;3;-0.000008,10.212396,-0.000002;;,
      19;3;-0.000016,10.212404, 0.000000;;,
      20;3;-0.000007,10.212393, 0.000004;;,
      21;3;-0.000010,10.212395, 0.000002;;,
      22;3;-0.000012,10.212404,-0.000005;;,
      23;3;-0.000003,10.212400, 0.000001;;,
      24;3;-0.000003,10.212400,-0.000004;;,
      25;3;-0.000004,10.212399, 0.000003;;,
      26;3;-0.000012,10.212402, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031899, 0.003424,-0.060136;;,
      1;4;-0.997742,-0.029198, 0.003253,-0.060399;;,
      2;4;-0.997341,-0.042430, 0.004090,-0.059108;;,
      3;4;-0.996199,-0.065799, 0.005569,-0.056802;;,
      4;4;-0.993372,-0.101589, 0.007832,-0.053201;;,
      5;4;-0.990693,-0.125969, 0.009372,-0.050701;;,
      6;4;-0.992124,-0.113649, 0.008594,-0.051969;;,
      7;4;-0.994386,-0.090528, 0.007132,-0.054323;;,
      8;4;-0.995818,-0.071782, 0.005947,-0.056206;;,
      9;4;-0.996403,-0.062346, 0.005350,-0.057145;;,
      10;4;-0.996584,-0.059097, 0.005145,-0.057467;;,
      11;4;-0.996742,-0.056071, 0.004953,-0.057766;;,
      12;4;-0.997025,-0.050156, 0.004579,-0.058350;;,
      13;4;-0.997285,-0.043910, 0.004184,-0.058963;;,
      14;4;-0.997325,-0.042849, 0.004117,-0.059067;;,
      15;4;-0.997066,-0.049233, 0.004521,-0.058440;;,
      16;4;-0.996561,-0.059505, 0.005171,-0.057427;;,
      17;4;-0.996070,-0.067893, 0.005702,-0.056588;;,
      18;4;-0.995726,-0.073147, 0.006034,-0.056069;;,
      19;4;-0.995569,-0.075410, 0.006177,-0.055843;;,
      20;4;-0.995364,-0.078246, 0.006356,-0.055559;;,
      21;4;-0.994944,-0.083758, 0.006705,-0.055005;;,
      22;4;-0.994375,-0.090648, 0.007140,-0.054311;;,
      23;4;-0.994124,-0.093524, 0.007322,-0.054020;;,
      24;4;-0.994786,-0.085736, 0.006830,-0.054806;;,
      25;4;-0.996428,-0.061912, 0.005323,-0.057188;;,
      26;4;-0.997675,-0.031899, 0.003424,-0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-6.192896,21.271088, 0.498711;;,
      1;3;-6.192905,21.271091, 0.498711;;,
      2;3;-6.192898,21.271080, 0.498706;;,
      3;3;-6.192902,21.271084, 0.498715;;,
      4;3;-6.192900,21.271088, 0.498709;;,
      5;3;-6.192905,21.271088, 0.498713;;,
      6;3;-6.192900,21.271080, 0.498717;;,
      7;3;-6.192901,21.271080, 0.498712;;,
      8;3;-6.192900,21.271088, 0.498710;;,
      9;3;-6.192904,21.271088, 0.498716;;,
      10;3;-6.192900,21.271088, 0.498701;;,
      11;3;-6.192895,21.271090, 0.498699;;,
      12;3;-6.192894,21.271082, 0.498712;;,
      13;3;-6.192904,21.271091, 0.498706;;,
      14;3;-6.192902,21.271103, 0.498703;;,
      15;3;-6.192884,21.271088, 0.498707;;,
      16;3;-6.192901,21.271088, 0.498716;;,
      17;3;-6.192901,21.271080, 0.498712;;,
      18;3;-6.192900,21.271088, 0.498700;;,
      19;3;-6.192911,21.271095, 0.498712;;,
      20;3;-6.192896,21.271080, 0.498712;;,
      21;3;-6.192909,21.271090, 0.498711;;,
      22;3;-6.192896,21.271099, 0.498710;;,
      23;3;-6.192906,21.271091, 0.498708;;,
      24;3;-6.192901,21.271082, 0.498711;;,
      25;3;-6.192896,21.271082, 0.498719;;,
      26;3;-6.192906,21.271091, 0.498713;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000,-0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000,-0.020804;;,
      2;4;-0.976095, 0.216396, 0.000000,-0.020299;;,
      3;4;-0.978177, 0.206864, 0.000000,-0.019405;;,
      4;4;-0.981191, 0.192196,-0.000000,-0.018029;;,
      5;4;-0.983122, 0.182149,-0.000000,-0.017086;;,
      6;4;-0.982159, 0.187233, 0.000000,-0.017563;;,
      7;4;-0.980282, 0.196739,-0.000000,-0.018455;;,
      8;4;-0.978696, 0.204418, 0.000000,-0.019175;;,
      9;4;-0.977875, 0.208275, 0.000000,-0.019537;;,
      10;4;-0.977589, 0.209601,-0.000000,-0.019661;;,
      11;4;-0.977321, 0.210836, 0.000000,-0.019777;;,
      12;4;-0.976793, 0.213248, 0.000000,-0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000,-0.020242;;,
      14;4;-0.976133, 0.216225,-0.000000,-0.020283;;,
      15;4;-0.976710, 0.213625,-0.000000,-0.020039;;,
      16;4;-0.977625, 0.209434, 0.000000,-0.019646;;,
      17;4;-0.978360, 0.206008,-0.000000,-0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000,-0.019123;;,
      19;4;-0.979007, 0.202934,-0.000000,-0.019036;;,
      20;4;-0.979249, 0.201773, 0.000000,-0.018927;;,
      21;4;-0.979716, 0.199515, 0.000000,-0.018715;;,
      22;4;-0.980292, 0.196690, 0.000000,-0.018450;;,
      23;4;-0.980530, 0.195509,-0.000000,-0.018340;;,
      24;4;-0.979882, 0.198704,-0.000000,-0.018639;;,
      25;4;-0.977837, 0.208452, 0.000000,-0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000,-0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000000, 7.536497, 0.000001;;,
      1;3; 0.000003, 7.536498, 0.000005;;,
      2;3;-0.000000, 7.536494,-0.000001;;,
      3;3; 0.000003, 7.536500, 0.000004;;,
      4;3; 0.000000, 7.536494, 0.000005;;,
      5;3; 0.000007, 7.536497, 0.000005;;,
      6;3; 0.000000, 7.536496, 0.000002;;,
      7;3; 0.000001, 7.536504,-0.000010;;,
      8;3;-0.000006, 7.536492, 0.000012;;,
      9;3;-0.000003, 7.536491, 0.000006;;,
      10;3; 0.000013, 7.536497,-0.000010;;,
      11;3;-0.000006, 7.536495,-0.000006;;,
      12;3; 0.000000, 7.536499, 0.000002;;,
      13;3; 0.000002, 7.536501,-0.000003;;,
      14;3; 0.000007, 7.536495,-0.000016;;,
      15;3;-0.000009, 7.536501, 0.000002;;,
      16;3; 0.000002, 7.536519, 0.000006;;,
      17;3;-0.000003, 7.536506,-0.000003;;,
      18;3;-0.000006, 7.536487,-0.000001;;,
      19;3;-0.000012, 7.536500, 0.000008;;,
      20;3;-0.000012, 7.536493, 0.000003;;,
      21;3; 0.000010, 7.536492, 0.000001;;,
      22;3;-0.000002, 7.536495,-0.000001;;,
      23;3; 0.000002, 7.536509, 0.000000;;,
      24;3;-0.000007, 7.536495,-0.000010;;,
      25;3;-0.000004, 7.536495, 0.000005;;,
      26;3; 0.000004, 7.536495, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      1;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      2;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      3;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      4;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      5;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      6;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      7;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      8;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      9;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      10;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      11;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      12;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      13;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      14;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      15;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      16;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      17;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      18;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      19;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      20;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      21;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      22;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      23;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      24;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      25;4;-0.988234, 0.152940,-0.001636, 0.000879;;,
      26;4;-0.988234, 0.152940,-0.001636, 0.000879;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000004, 7.512298,-0.000001;;,
      1;3; 0.000001, 7.512298, 0.000010;;,
      2;3; 0.000004, 7.512298, 0.000011;;,
      3;3;-0.000004, 7.512298,-0.000000;;,
      4;3;-0.000000, 7.512292,-0.000000;;,
      5;3; 0.000005, 7.512298, 0.000000;;,
      6;3; 0.000001, 7.512294, 0.000002;;,
      7;3; 0.000000, 7.512299,-0.000010;;,
      8;3; 0.000002, 7.512296,-0.000003;;,
      9;3;-0.000005, 7.512290,-0.000005;;,
      10;3; 0.000003, 7.512298, 0.000005;;,
      11;3; 0.000006, 7.512297,-0.000008;;,
      12;3; 0.000004, 7.512295, 0.000004;;,
      13;3; 0.000000, 7.512299, 0.000002;;,
      14;3; 0.000003, 7.512298,-0.000001;;,
      15;3;-0.000000, 7.512300, 0.000004;;,
      16;3;-0.000002, 7.512286, 0.000001;;,
      17;3; 0.000002, 7.512289, 0.000003;;,
      18;3;-0.000004, 7.512308,-0.000001;;,
      19;3;-0.000005, 7.512289, 0.000001;;,
      20;3; 0.000005, 7.512284, 0.000000;;,
      21;3; 0.000006, 7.512294,-0.000001;;,
      22;3; 0.000000, 7.512294,-0.000003;;,
      23;3; 0.000010, 7.512300,-0.000003;;,
      24;3; 0.000007, 7.512294, 0.000003;;,
      25;3; 0.000003, 7.512294,-0.000001;;,
      26;3; 0.000005, 7.512297,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      26;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000009,10.212403, 0.000007;;,
      1;3; 0.000003,10.212400, 0.000004;;,
      2;3; 0.000004,10.212395,-0.000002;;,
      3;3;-0.000004,10.212402, 0.000008;;,
      4;3; 0.000004,10.212399, 0.000005;;,
      5;3; 0.000002,10.212401,-0.000004;;,
      6;3; 0.000002,10.212394,-0.000007;;,
      7;3; 0.000000,10.212397,-0.000004;;,
      8;3;-0.000001,10.212399, 0.000008;;,
      9;3; 0.000005,10.212395, 0.000001;;,
      10;3;-0.000000,10.212399,-0.000003;;,
      11;3; 0.000002,10.212402,-0.000003;;,
      12;3; 0.000007,10.212395, 0.000004;;,
      13;3;-0.000009,10.212401,-0.000004;;,
      14;3; 0.000002,10.212394, 0.000008;;,
      15;3;-0.000004,10.212402, 0.000006;;,
      16;3; 0.000004,10.212402, 0.000002;;,
      17;3;-0.000007,10.212402, 0.000002;;,
      18;3;-0.000003,10.212389, 0.000002;;,
      19;3;-0.000002,10.212404,-0.000010;;,
      20;3; 0.000017,10.212404, 0.000005;;,
      21;3;-0.000006,10.212397,-0.000002;;,
      22;3; 0.000005,10.212396,-0.000005;;,
      23;3;-0.000005,10.212404, 0.000003;;,
      24;3;-0.000000,10.212397, 0.000000;;,
      25;3;-0.000004,10.212398, 0.000001;;,
      26;3; 0.000005,10.212399,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031899, 0.003424,-0.060136;;,
      1;4;-0.997742,-0.029198, 0.003253,-0.060399;;,
      2;4;-0.997341,-0.042430, 0.004090,-0.059108;;,
      3;4;-0.996199,-0.065799, 0.005569,-0.056802;;,
      4;4;-0.993372,-0.101589, 0.007832,-0.053201;;,
      5;4;-0.990693,-0.125969, 0.009372,-0.050701;;,
      6;4;-0.992124,-0.113649, 0.008594,-0.051969;;,
      7;4;-0.994386,-0.090528, 0.007132,-0.054323;;,
      8;4;-0.995818,-0.071782, 0.005947,-0.056206;;,
      9;4;-0.996403,-0.062346, 0.005350,-0.057145;;,
      10;4;-0.996584,-0.059097, 0.005145,-0.057467;;,
      11;4;-0.996742,-0.056071, 0.004954,-0.057766;;,
      12;4;-0.997025,-0.050156, 0.004579,-0.058350;;,
      13;4;-0.997285,-0.043910, 0.004184,-0.058963;;,
      14;4;-0.997325,-0.042849, 0.004117,-0.059067;;,
      15;4;-0.997066,-0.049233, 0.004521,-0.058440;;,
      16;4;-0.996561,-0.059505, 0.005171,-0.057427;;,
      17;4;-0.996070,-0.067893, 0.005702,-0.056588;;,
      18;4;-0.995726,-0.073147, 0.006034,-0.056069;;,
      19;4;-0.995569,-0.075410, 0.006177,-0.055843;;,
      20;4;-0.995364,-0.078246, 0.006356,-0.055559;;,
      21;4;-0.994944,-0.083758, 0.006705,-0.055005;;,
      22;4;-0.994375,-0.090648, 0.007140,-0.054311;;,
      23;4;-0.994124,-0.093524, 0.007322,-0.054020;;,
      24;4;-0.994786,-0.085736, 0.006830,-0.054806;;,
      25;4;-0.996428,-0.061912, 0.005323,-0.057188;;,
      26;4;-0.997675,-0.031899, 0.003424,-0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.016504,23.334381, 0.008605;;,
      1;3; 0.016493,23.334385, 0.008603;;,
      2;3; 0.016502,23.334373, 0.008604;;,
      3;3; 0.016496,23.334375, 0.008616;;,
      4;3; 0.016498,23.334381, 0.008605;;,
      5;3; 0.016496,23.334383, 0.008611;;,
      6;3; 0.016500,23.334381, 0.008612;;,
      7;3; 0.016502,23.334373, 0.008616;;,
      8;3; 0.016498,23.334379, 0.008608;;,
      9;3; 0.016497,23.334381, 0.008607;;,
      10;3; 0.016500,23.334377, 0.008602;;,
      11;3; 0.016505,23.334383, 0.008591;;,
      12;3; 0.016503,23.334373, 0.008613;;,
      13;3; 0.016492,23.334385, 0.008602;;,
      14;3; 0.016496,23.334393, 0.008601;;,
      15;3; 0.016510,23.334393, 0.008604;;,
      16;3; 0.016501,23.334377, 0.008613;;,
      17;3; 0.016499,23.334375, 0.008607;;,
      18;3; 0.016505,23.334383, 0.008606;;,
      19;3; 0.016488,23.334385, 0.008612;;,
      20;3; 0.016506,23.334370, 0.008608;;,
      21;3; 0.016487,23.334398, 0.008610;;,
      22;3; 0.016510,23.334389, 0.008610;;,
      23;3; 0.016494,23.334381, 0.008606;;,
      24;3; 0.016495,23.334379, 0.008611;;,
      25;3; 0.016498,23.334379, 0.008619;;,
      26;3; 0.016500,23.334381, 0.008612;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000,-0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000,-0.020804;;,
      2;4;-0.976095, 0.216396, 0.000000,-0.020299;;,
      3;4;-0.978177, 0.206864, 0.000000,-0.019405;;,
      4;4;-0.981191, 0.192197,-0.000000,-0.018029;;,
      5;4;-0.983122, 0.182149, 0.000000,-0.017086;;,
      6;4;-0.982159, 0.187233, 0.000000,-0.017563;;,
      7;4;-0.980282, 0.196739,-0.000000,-0.018455;;,
      8;4;-0.978696, 0.204418, 0.000000,-0.019175;;,
      9;4;-0.977875, 0.208275, 0.000000,-0.019537;;,
      10;4;-0.977589, 0.209601,-0.000000,-0.019661;;,
      11;4;-0.977321, 0.210836, 0.000000,-0.019777;;,
      12;4;-0.976793, 0.213249, 0.000000,-0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000,-0.020242;;,
      14;4;-0.976133, 0.216226,-0.000000,-0.020283;;,
      15;4;-0.976710, 0.213625, 0.000000,-0.020039;;,
      16;4;-0.977625, 0.209435, 0.000000,-0.019646;;,
      17;4;-0.978359, 0.206008,-0.000000,-0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000,-0.019123;;,
      19;4;-0.979007, 0.202935,-0.000000,-0.019036;;,
      20;4;-0.979249, 0.201773, 0.000000,-0.018927;;,
      21;4;-0.979716, 0.199515, 0.000000,-0.018715;;,
      22;4;-0.980292, 0.196690, 0.000000,-0.018450;;,
      23;4;-0.980530, 0.195510,-0.000000,-0.018340;;,
      24;4;-0.979882, 0.198705,-0.000000,-0.018639;;,
      25;4;-0.977837, 0.208452, 0.000000,-0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000,-0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000001, 6.996598, 0.000009;;,
      1;3; 0.000001, 6.996594,-0.000006;;,
      2;3;-0.000008, 6.996594,-0.000003;;,
      3;3;-0.000002, 6.996596, 0.000009;;,
      4;3;-0.000003, 6.996594, 0.000002;;,
      5;3;-0.000004, 6.996599, 0.000005;;,
      6;3;-0.000001, 6.996593, 0.000005;;,
      7;3;-0.000005, 6.996599,-0.000010;;,
      8;3;-0.000005, 6.996596, 0.000013;;,
      9;3; 0.000001, 6.996598, 0.000001;;,
      10;3; 0.000002, 6.996596,-0.000004;;,
      11;3;-0.000003, 6.996588, 0.000001;;,
      12;3;-0.000003, 6.996588,-0.000005;;,
      13;3; 0.000003, 6.996599,-0.000006;;,
      14;3;-0.000001, 6.996590,-0.000003;;,
      15;3;-0.000000, 6.996601, 0.000001;;,
      16;3; 0.000000, 6.996598,-0.000003;;,
      17;3; 0.000006, 6.996610,-0.000001;;,
      18;3; 0.000002, 6.996593,-0.000000;;,
      19;3;-0.000002, 6.996587,-0.000007;;,
      20;3; 0.000006, 6.996604,-0.000003;;,
      21;3;-0.000011, 6.996589, 0.000000;;,
      22;3;-0.000004, 6.996590, 0.000003;;,
      23;3; 0.000012, 6.996594, 0.000012;;,
      24;3; 0.000010, 6.996598,-0.000001;;,
      25;3;-0.000005, 6.996595, 0.000000;;,
      26;3; 0.000001, 6.996597, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      1;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      2;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      3;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      4;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      5;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      6;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      7;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      8;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      9;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      10;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      11;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      12;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      13;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      14;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      15;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      16;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      17;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      18;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      19;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      20;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      21;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      22;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      23;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      24;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      25;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      26;4;-0.994228, 0.106815, 0.000000,-0.010020;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000001, 7.016005,-0.000012;;,
      1;3;-0.000007, 7.015998,-0.000006;;,
      2;3; 0.000000, 7.016004,-0.000006;;,
      3;3; 0.000002, 7.016004,-0.000002;;,
      4;3; 0.000003, 7.016006, 0.000005;;,
      5;3;-0.000000, 7.016006,-0.000008;;,
      6;3;-0.000003, 7.016009, 0.000002;;,
      7;3;-0.000001, 7.016006,-0.000003;;,
      8;3; 0.000004, 7.016008, 0.000004;;,
      9;3;-0.000007, 7.016012,-0.000004;;,
      10;3;-0.000003, 7.016011, 0.000006;;,
      11;3;-0.000003, 7.016006, 0.000010;;,
      12;3; 0.000002, 7.016004,-0.000001;;,
      13;3;-0.000009, 7.016005,-0.000008;;,
      14;3; 0.000000, 7.015999, 0.000007;;,
      15;3;-0.000003, 7.016012,-0.000005;;,
      16;3;-0.000001, 7.016014, 0.000001;;,
      17;3; 0.000011, 7.016000, 0.000009;;,
      18;3;-0.000006, 7.015996, 0.000004;;,
      19;3; 0.000001, 7.016001, 0.000001;;,
      20;3; 0.000002, 7.016013, 0.000001;;,
      21;3;-0.000006, 7.016008, 0.000009;;,
      22;3;-0.000003, 7.016006,-0.000001;;,
      23;3;-0.000004, 7.016001,-0.000005;;,
      24;3; 0.000010, 7.016002,-0.000004;;,
      25;3;-0.000003, 7.016006, 0.000000;;,
      26;3; 0.000002, 7.016005,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000002, 7.721603,-0.000008;;,
      1;3; 0.000000, 7.721599,-0.000005;;,
      2;3; 0.000002, 7.721602,-0.000002;;,
      3;3;-0.000001, 7.721597,-0.000002;;,
      4;3; 0.000002, 7.721601, 0.000000;;,
      5;3; 0.000001, 7.721600,-0.000000;;,
      6;3; 0.000005, 7.721604, 0.000000;;,
      7;3; 0.000002, 7.721600, 0.000003;;,
      8;3;-0.000003, 7.721607, 0.000001;;,
      9;3; 0.000002, 7.721601, 0.000000;;,
      10;3;-0.000001, 7.721600, 0.000019;;,
      11;3;-0.000006, 7.721601,-0.000010;;,
      12;3;-0.000000, 7.721604, 0.000000;;,
      13;3;-0.000009, 7.721602, 0.000004;;,
      14;3;-0.000007, 7.721606, 0.000007;;,
      15;3; 0.000008, 7.721591,-0.000002;;,
      16;3; 0.000007, 7.721596, 0.000000;;,
      17;3;-0.000001, 7.721619,-0.000004;;,
      18;3; 0.000006, 7.721605, 0.000006;;,
      19;3;-0.000008, 7.721603, 0.000001;;,
      20;3; 0.000003, 7.721605,-0.000003;;,
      21;3;-0.000006, 7.721596, 0.000008;;,
      22;3; 0.000001, 7.721606, 0.000000;;,
      23;3; 0.000000, 7.721611,-0.000000;;,
      24;3; 0.000009, 7.721603, 0.000011;;,
      25;3; 0.000001, 7.721600,-0.000000;;,
      26;3; 0.000003, 7.721599,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031899, 0.003424,-0.060136;;,
      1;4;-0.997742,-0.029198, 0.003253,-0.060399;;,
      2;4;-0.997341,-0.042430, 0.004090,-0.059108;;,
      3;4;-0.996199,-0.065799, 0.005569,-0.056802;;,
      4;4;-0.993372,-0.101589, 0.007832,-0.053201;;,
      5;4;-0.990693,-0.125969, 0.009372,-0.050701;;,
      6;4;-0.992124,-0.113649, 0.008594,-0.051969;;,
      7;4;-0.994386,-0.090528, 0.007132,-0.054323;;,
      8;4;-0.995818,-0.071782, 0.005947,-0.056206;;,
      9;4;-0.996403,-0.062346, 0.005350,-0.057145;;,
      10;4;-0.996584,-0.059097, 0.005145,-0.057467;;,
      11;4;-0.996742,-0.056071, 0.004954,-0.057766;;,
      12;4;-0.997025,-0.050156, 0.004579,-0.058350;;,
      13;4;-0.997285,-0.043910, 0.004184,-0.058963;;,
      14;4;-0.997325,-0.042849, 0.004117,-0.059067;;,
      15;4;-0.997066,-0.049233, 0.004521,-0.058440;;,
      16;4;-0.996561,-0.059505, 0.005171,-0.057427;;,
      17;4;-0.996070,-0.067893, 0.005702,-0.056588;;,
      18;4;-0.995726,-0.073147, 0.006034,-0.056069;;,
      19;4;-0.995569,-0.075410, 0.006177,-0.055843;;,
      20;4;-0.995364,-0.078246, 0.006356,-0.055559;;,
      21;4;-0.994944,-0.083758, 0.006705,-0.055005;;,
      22;4;-0.994375,-0.090648, 0.007140,-0.054311;;,
      23;4;-0.994124,-0.093524, 0.007322,-0.054020;;,
      24;4;-0.994786,-0.085736, 0.006830,-0.054806;;,
      25;4;-0.996428,-0.061912, 0.005323,-0.057188;;,
      26;4;-0.997675,-0.031899, 0.003424,-0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 6.516908,22.686588, 0.103605;;,
      1;3; 6.516892,22.686592, 0.103606;;,
      2;3; 6.516903,22.686586, 0.103601;;,
      3;3; 6.516899,22.686588, 0.103610;;,
      4;3; 6.516899,22.686590, 0.103600;;,
      5;3; 6.516897,22.686600, 0.103604;;,
      6;3; 6.516901,22.686592, 0.103610;;,
      7;3; 6.516900,22.686583, 0.103606;;,
      8;3; 6.516902,22.686588, 0.103605;;,
      9;3; 6.516899,22.686592, 0.103607;;,
      10;3; 6.516898,22.686588, 0.103595;;,
      11;3; 6.516906,22.686592, 0.103598;;,
      12;3; 6.516905,22.686583, 0.103607;;,
      13;3; 6.516898,22.686592, 0.103594;;,
      14;3; 6.516898,22.686604, 0.103600;;,
      15;3; 6.516916,22.686602, 0.103605;;,
      16;3; 6.516905,22.686590, 0.103606;;,
      17;3; 6.516896,22.686600, 0.103606;;,
      18;3; 6.516903,22.686584, 0.103603;;,
      19;3; 6.516890,22.686596, 0.103603;;,
      20;3; 6.516903,22.686586, 0.103610;;,
      21;3; 6.516895,22.686600, 0.103603;;,
      22;3; 6.516909,22.686605, 0.103598;;,
      23;3; 6.516896,22.686596, 0.103604;;,
      24;3; 6.516897,22.686592, 0.103608;;,
      25;3; 6.516902,22.686588, 0.103611;;,
      26;3; 6.516900,22.686594, 0.103601;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000,-0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000,-0.020804;;,
      2;4;-0.976095, 0.216396, 0.000000,-0.020299;;,
      3;4;-0.978177, 0.206864, 0.000000,-0.019405;;,
      4;4;-0.981191, 0.192196,-0.000000,-0.018029;;,
      5;4;-0.983122, 0.182149, 0.000000,-0.017086;;,
      6;4;-0.982159, 0.187233, 0.000000,-0.017563;;,
      7;4;-0.980282, 0.196739,-0.000000,-0.018455;;,
      8;4;-0.978696, 0.204418, 0.000000,-0.019175;;,
      9;4;-0.977875, 0.208275, 0.000000,-0.019537;;,
      10;4;-0.977589, 0.209601,-0.000000,-0.019661;;,
      11;4;-0.977321, 0.210836, 0.000000,-0.019777;;,
      12;4;-0.976793, 0.213248, 0.000000,-0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000,-0.020242;;,
      14;4;-0.976133, 0.216226,-0.000000,-0.020283;;,
      15;4;-0.976710, 0.213625, 0.000000,-0.020039;;,
      16;4;-0.977625, 0.209434, 0.000000,-0.019646;;,
      17;4;-0.978360, 0.206008,-0.000000,-0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000,-0.019123;;,
      19;4;-0.979007, 0.202934,-0.000000,-0.019036;;,
      20;4;-0.979249, 0.201773, 0.000000,-0.018927;;,
      21;4;-0.979716, 0.199515, 0.000000,-0.018715;;,
      22;4;-0.980292, 0.196690, 0.000000,-0.018450;;,
      23;4;-0.980530, 0.195510,-0.000000,-0.018340;;,
      24;4;-0.979882, 0.198704,-0.000000,-0.018639;;,
      25;4;-0.977837, 0.208452, 0.000000,-0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000,-0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000002, 6.408600, 0.000002;;,
      1;3;-0.000001, 6.408601,-0.000011;;,
      2;3; 0.000002, 6.408597,-0.000001;;,
      3;3;-0.000001, 6.408600, 0.000001;;,
      4;3; 0.000003, 6.408603, 0.000010;;,
      5;3;-0.000002, 6.408601, 0.000007;;,
      6;3;-0.000002, 6.408598, 0.000003;;,
      7;3;-0.000003, 6.408600, 0.000005;;,
      8;3; 0.000001, 6.408593, 0.000000;;,
      9;3;-0.000001, 6.408605,-0.000005;;,
      10;3; 0.000003, 6.408599, 0.000004;;,
      11;3;-0.000010, 6.408600, 0.000003;;,
      12;3; 0.000003, 6.408595, 0.000002;;,
      13;3;-0.000005, 6.408599,-0.000002;;,
      14;3;-0.000006, 6.408604,-0.000006;;,
      15;3; 0.000005, 6.408602, 0.000010;;,
      16;3;-0.000002, 6.408602, 0.000000;;,
      17;3;-0.000010, 6.408607, 0.000004;;,
      18;3;-0.000011, 6.408593, 0.000000;;,
      19;3;-0.000005, 6.408592, 0.000006;;,
      20;3; 0.000004, 6.408598, 0.000003;;,
      21;3;-0.000003, 6.408590,-0.000006;;,
      22;3;-0.000002, 6.408601,-0.000008;;,
      23;3;-0.000006, 6.408601,-0.000000;;,
      24;3; 0.000007, 6.408596,-0.000015;;,
      25;3; 0.000001, 6.408606,-0.000003;;,
      26;3;-0.000001, 6.408599, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      1;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      2;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      3;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      4;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      5;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      6;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      7;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      8;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      9;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      10;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      11;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      12;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      13;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      14;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      15;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      16;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      17;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      18;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      19;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      20;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      21;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      22;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      23;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      24;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      25;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      26;4;-0.994228, 0.106815, 0.000000,-0.010020;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000004, 6.150298,-0.000002;;,
      1;3;-0.000001, 6.150290, 0.000002;;,
      2;3; 0.000001, 6.150298, 0.000003;;,
      3;3; 0.000003, 6.150294, 0.000005;;,
      4;3; 0.000006, 6.150300, 0.000013;;,
      5;3;-0.000006, 6.150296,-0.000003;;,
      6;3;-0.000002, 6.150297,-0.000001;;,
      7;3; 0.000004, 6.150290, 0.000001;;,
      8;3;-0.000002, 6.150301,-0.000001;;,
      9;3; 0.000000, 6.150295, 0.000005;;,
      10;3; 0.000004, 6.150298,-0.000007;;,
      11;3; 0.000000, 6.150295, 0.000001;;,
      12;3; 0.000003, 6.150299, 0.000001;;,
      13;3; 0.000007, 6.150291,-0.000003;;,
      14;3; 0.000004, 6.150298, 0.000000;;,
      15;3; 0.000000, 6.150297, 0.000007;;,
      16;3; 0.000002, 6.150297,-0.000003;;,
      17;3; 0.000003, 6.150290,-0.000003;;,
      18;3;-0.000001, 6.150298, 0.000003;;,
      19;3;-0.000001, 6.150292,-0.000004;;,
      20;3; 0.000017, 6.150290, 0.000001;;,
      21;3;-0.000002, 6.150299, 0.000002;;,
      22;3; 0.000002, 6.150291, 0.000001;;,
      23;3; 0.000003, 6.150293,-0.000009;;,
      24;3;-0.000001, 6.150299, 0.000001;;,
      25;3; 0.000004, 6.150295, 0.000009;;,
      26;3;-0.000001, 6.150294, 0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      26;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000001, 6.145401,-0.000004;;,
      1;3; 0.000005, 6.145396,-0.000008;;,
      2;3; 0.000006, 6.145400,-0.000003;;,
      3;3; 0.000001, 6.145400, 0.000000;;,
      4;3;-0.000003, 6.145402, 0.000002;;,
      5;3;-0.000004, 6.145399,-0.000001;;,
      6;3;-0.000002, 6.145403,-0.000005;;,
      7;3; 0.000003, 6.145401,-0.000004;;,
      8;3;-0.000003, 6.145393, 0.000000;;,
      9;3; 0.000002, 6.145396,-0.000003;;,
      10;3;-0.000003, 6.145394, 0.000003;;,
      11;3; 0.000001, 6.145397,-0.000002;;,
      12;3;-0.000001, 6.145399, 0.000004;;,
      13;3;-0.000006, 6.145398, 0.000003;;,
      14;3;-0.000002, 6.145394, 0.000005;;,
      15;3; 0.000005, 6.145397, 0.000011;;,
      16;3; 0.000001, 6.145404,-0.000002;;,
      17;3; 0.000002, 6.145412, 0.000003;;,
      18;3;-0.000005, 6.145391, 0.000000;;,
      19;3; 0.000006, 6.145405,-0.000006;;,
      20;3;-0.000000, 6.145399,-0.000005;;,
      21;3; 0.000004, 6.145405, 0.000003;;,
      22;3; 0.000005, 6.145408, 0.000000;;,
      23;3;-0.000001, 6.145399, 0.000009;;,
      24;3;-0.000003, 6.145400, 0.000008;;,
      25;3;-0.000000, 6.145399,-0.000008;;,
      26;3; 0.000001, 6.145405, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031899, 0.003424,-0.060136;;,
      1;4;-0.997742,-0.029198, 0.003253,-0.060399;;,
      2;4;-0.997341,-0.042430, 0.004090,-0.059108;;,
      3;4;-0.996199,-0.065799, 0.005569,-0.056802;;,
      4;4;-0.993372,-0.101589, 0.007832,-0.053201;;,
      5;4;-0.990693,-0.125969, 0.009372,-0.050701;;,
      6;4;-0.992124,-0.113649, 0.008594,-0.051969;;,
      7;4;-0.994386,-0.090528, 0.007132,-0.054323;;,
      8;4;-0.995818,-0.071782, 0.005947,-0.056206;;,
      9;4;-0.996403,-0.062346, 0.005350,-0.057145;;,
      10;4;-0.996584,-0.059097, 0.005145,-0.057467;;,
      11;4;-0.996742,-0.056071, 0.004953,-0.057766;;,
      12;4;-0.997025,-0.050156, 0.004579,-0.058350;;,
      13;4;-0.997285,-0.043910, 0.004184,-0.058963;;,
      14;4;-0.997325,-0.042849, 0.004117,-0.059067;;,
      15;4;-0.997066,-0.049233, 0.004521,-0.058440;;,
      16;4;-0.996561,-0.059505, 0.005171,-0.057427;;,
      17;4;-0.996070,-0.067893, 0.005702,-0.056588;;,
      18;4;-0.995726,-0.073147, 0.006034,-0.056069;;,
      19;4;-0.995569,-0.075410, 0.006177,-0.055843;;,
      20;4;-0.995364,-0.078246, 0.006356,-0.055559;;,
      21;4;-0.994944,-0.083758, 0.006705,-0.055005;;,
      22;4;-0.994375,-0.090648, 0.007140,-0.054311;;,
      23;4;-0.994124,-0.093524, 0.007322,-0.054020;;,
      24;4;-0.994786,-0.085736, 0.006830,-0.054806;;,
      25;4;-0.996428,-0.061912, 0.005323,-0.057188;;,
      26;4;-0.997675,-0.031899, 0.003424,-0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;11.443204,18.881187, 0.461812;;,
      1;3;11.443195,18.881193, 0.461811;;,
      2;3;11.443204,18.881184, 0.461807;;,
      3;3;11.443200,18.881184, 0.461819;;,
      4;3;11.443202,18.881189, 0.461806;;,
      5;3;11.443197,18.881193, 0.461809;;,
      6;3;11.443203,18.881189, 0.461819;;,
      7;3;11.443203,18.881182, 0.461817;;,
      8;3;11.443201,18.881187, 0.461807;;,
      9;3;11.443201,18.881187, 0.461814;;,
      10;3;11.443200,18.881187, 0.461800;;,
      11;3;11.443209,18.881189, 0.461800;;,
      12;3;11.443205,18.881184, 0.461814;;,
      13;3;11.443193,18.881191, 0.461807;;,
      14;3;11.443197,18.881199, 0.461805;;,
      15;3;11.443219,18.881199, 0.461818;;,
      16;3;11.443208,18.881187, 0.461818;;,
      17;3;11.443196,18.881187, 0.461809;;,
      18;3;11.443205,18.881187, 0.461807;;,
      19;3;11.443193,18.881189, 0.461812;;,
      20;3;11.443204,18.881189, 0.461813;;,
      21;3;11.443198,18.881195, 0.461809;;,
      22;3;11.443209,18.881193, 0.461813;;,
      23;3;11.443201,18.881191, 0.461810;;,
      24;3;11.443199,18.881186, 0.461820;;,
      25;3;11.443203,18.881187, 0.461822;;,
      26;3;11.443201,18.881187, 0.461811;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000,-0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000,-0.020804;;,
      2;4;-0.976095, 0.216396, 0.000000,-0.020299;;,
      3;4;-0.978177, 0.206864, 0.000000,-0.019405;;,
      4;4;-0.981191, 0.192196,-0.000000,-0.018029;;,
      5;4;-0.983122, 0.182149,-0.000000,-0.017086;;,
      6;4;-0.982159, 0.187233, 0.000000,-0.017563;;,
      7;4;-0.980282, 0.196739,-0.000000,-0.018455;;,
      8;4;-0.978696, 0.204418,-0.000000,-0.019175;;,
      9;4;-0.977875, 0.208275, 0.000000,-0.019537;;,
      10;4;-0.977589, 0.209601,-0.000000,-0.019661;;,
      11;4;-0.977321, 0.210836, 0.000000,-0.019777;;,
      12;4;-0.976793, 0.213249, 0.000000,-0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000,-0.020242;;,
      14;4;-0.976133, 0.216226,-0.000000,-0.020283;;,
      15;4;-0.976710, 0.213625, 0.000000,-0.020039;;,
      16;4;-0.977625, 0.209435, 0.000000,-0.019646;;,
      17;4;-0.978359, 0.206008,-0.000000,-0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000,-0.019123;;,
      19;4;-0.979007, 0.202934,-0.000000,-0.019036;;,
      20;4;-0.979249, 0.201773, 0.000000,-0.018927;;,
      21;4;-0.979716, 0.199515, 0.000000,-0.018715;;,
      22;4;-0.980292, 0.196690, 0.000000,-0.018450;;,
      23;4;-0.980530, 0.195510,-0.000000,-0.018340;;,
      24;4;-0.979882, 0.198704,-0.000000,-0.018639;;,
      25;4;-0.977837, 0.208452, 0.000000,-0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000,-0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000002, 4.919600, 0.000010;;,
      1;3; 0.000000, 4.919597,-0.000002;;,
      2;3; 0.000005, 4.919597, 0.000001;;,
      3;3;-0.000003, 4.919603,-0.000003;;,
      4;3;-0.000001, 4.919604, 0.000004;;,
      5;3;-0.000003, 4.919601, 0.000004;;,
      6;3;-0.000001, 4.919601, 0.000003;;,
      7;3; 0.000000, 4.919606,-0.000002;;,
      8;3;-0.000001, 4.919600, 0.000003;;,
      9;3; 0.000000, 4.919600,-0.000004;;,
      10;3; 0.000000, 4.919604, 0.000003;;,
      11;3;-0.000002, 4.919600, 0.000004;;,
      12;3;-0.000002, 4.919600, 0.000005;;,
      13;3; 0.000000, 4.919597, 0.000002;;,
      14;3; 0.000003, 4.919605,-0.000006;;,
      15;3; 0.000002, 4.919600, 0.000008;;,
      16;3; 0.000002, 4.919613,-0.000004;;,
      17;3;-0.000010, 4.919605, 0.000005;;,
      18;3; 0.000003, 4.919595,-0.000007;;,
      19;3; 0.000005, 4.919605, 0.000005;;,
      20;3; 0.000000, 4.919602, 0.000005;;,
      21;3;-0.000004, 4.919599,-0.000003;;,
      22;3;-0.000005, 4.919602,-0.000009;;,
      23;3; 0.000009, 4.919606,-0.000006;;,
      24;3;-0.000002, 4.919603,-0.000002;;,
      25;3; 0.000001, 4.919600,-0.000005;;,
      26;3;-0.000003, 4.919596,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      1;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      2;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      3;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      4;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      5;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      6;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      7;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      8;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      9;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      10;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      11;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      12;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      13;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      14;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      15;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      16;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      17;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      18;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      19;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      20;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      21;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      22;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      23;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      24;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      25;4;-0.994228, 0.106815, 0.000000,-0.010020;;,
      26;4;-0.994228, 0.106815, 0.000000,-0.010020;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000, 5.232998, 0.000000;;,
      1;3; 0.000000, 5.233000, 0.000002;;,
      2;3; 0.000001, 5.233004,-0.000002;;,
      3;3; 0.000001, 5.232999,-0.000003;;,
      4;3; 0.000001, 5.233003, 0.000009;;,
      5;3;-0.000001, 5.233000,-0.000009;;,
      6;3;-0.000003, 5.233000,-0.000006;;,
      7;3;-0.000002, 5.232996,-0.000003;;,
      8;3; 0.000001, 5.232999, 0.000006;;,
      9;3; 0.000003, 5.233002, 0.000002;;,
      10;3; 0.000005, 5.232995,-0.000002;;,
      11;3; 0.000003, 5.232996, 0.000003;;,
      12;3; 0.000000, 5.233007,-0.000001;;,
      13;3; 0.000005, 5.233002, 0.000002;;,
      14;3;-0.000003, 5.232995, 0.000010;;,
      15;3; 0.000004, 5.233008, 0.000004;;,
      16;3;-0.000006, 5.232992,-0.000008;;,
      17;3; 0.000007, 5.232987,-0.000003;;,
      18;3; 0.000002, 5.233006,-0.000005;;,
      19;3; 0.000005, 5.233001,-0.000000;;,
      20;3;-0.000003, 5.233009, 0.000003;;,
      21;3;-0.000003, 5.232998, 0.000014;;,
      22;3; 0.000000, 5.232998, 0.000004;;,
      23;3;-0.000003, 5.232996,-0.000004;;,
      24;3; 0.000005, 5.233000,-0.000005;;,
      25;3; 0.000010, 5.232998,-0.000011;;,
      26;3;-0.000001, 5.233001,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000003, 5.571698, 0.000001;;,
      1;3; 0.000001, 5.571704,-0.000001;;,
      2;3; 0.000002, 5.571696,-0.000002;;,
      3;3; 0.000001, 5.571698, 0.000003;;,
      4;3;-0.000004, 5.571697,-0.000001;;,
      5;3; 0.000004, 5.571700,-0.000002;;,
      6;3; 0.000000, 5.571701,-0.000000;;,
      7;3;-0.000001, 5.571699, 0.000009;;,
      8;3;-0.000001, 5.571701, 0.000004;;,
      9;3; 0.000000, 5.571702,-0.000008;;,
      10;3;-0.000004, 5.571701,-0.000003;;,
      11;3;-0.000002, 5.571697,-0.000008;;,
      12;3; 0.000003, 5.571695,-0.000009;;,
      13;3;-0.000004, 5.571707,-0.000009;;,
      14;3; 0.000003, 5.571699,-0.000005;;,
      15;3;-0.000002, 5.571709,-0.000000;;,
      16;3; 0.000005, 5.571701, 0.000008;;,
      17;3;-0.000003, 5.571703,-0.000007;;,
      18;3;-0.000006, 5.571695,-0.000002;;,
      19;3;-0.000005, 5.571703, 0.000004;;,
      20;3;-0.000002, 5.571709, 0.000007;;,
      21;3;-0.000009, 5.571700, 0.000006;;,
      22;3;-0.000003, 5.571711, 0.000001;;,
      23;3;-0.000001, 5.571700,-0.000005;;,
      24;3;-0.000001, 5.571701,-0.000002;;,
      25;3;-0.000003, 5.571701,-0.000001;;,
      26;3; 0.000004, 5.571701,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.569314, 0.489873,-0.516228, 0.411599;;,
      1;4;-0.582505, 0.484652,-0.519654, 0.394665;;,
      2;4;-0.597537, 0.477118,-0.524900, 0.373883;;,
      3;4;-0.613452, 0.464958,-0.533854, 0.349988;;,
      4;4;-0.619600, 0.455378,-0.541176, 0.340374;;,
      5;4;-0.618473, 0.448696,-0.547071, 0.341871;;,
      6;4;-0.612709, 0.443853,-0.552224, 0.350188;;,
      7;4;-0.604503, 0.439522,-0.557306, 0.361672;;,
      8;4;-0.596797, 0.434786,-0.562520, 0.371976;;,
      9;4;-0.591494, 0.430208,-0.567080, 0.378782;;,
      10;4;-0.588004, 0.427855,-0.569431, 0.383327;;,
      11;4;-0.583845, 0.430048,-0.568072, 0.389201;;,
      12;4;-0.577022, 0.437329,-0.562712, 0.398929;;,
      13;4;-0.568253, 0.447222,-0.555120, 0.411002;;,
      14;4;-0.561135, 0.455788,-0.548284, 0.420440;;,
      15;4;-0.559306, 0.460894,-0.543983, 0.422890;;,
      16;4;-0.563123, 0.463682,-0.541357, 0.418120;;,
      17;4;-0.569703, 0.466826,-0.538219, 0.409673;;,
      18;4;-0.576152, 0.470554,-0.534467, 0.401213;;,
      19;4;-0.581658, 0.473527,-0.531319, 0.393886;;,
      20;4;-0.586082, 0.474000,-0.530492, 0.387828;;,
      21;4;-0.587819, 0.473021,-0.531289, 0.385295;;,
      22;4;-0.583868, 0.473752,-0.531062, 0.390680;;,
      23;4;-0.572370, 0.478975,-0.527152, 0.406308;;,
      24;4;-0.562579, 0.487005,-0.520210, 0.419182;;,
      25;4;-0.561160, 0.491406,-0.515809, 0.421379;;,
      26;4;-0.569314, 0.489873,-0.516228, 0.411599;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-17.399504,24.614304, 1.157895;;,
      1;3;-17.399502,24.614304, 1.157906;;,
      2;3;-17.399504,24.614309, 1.157897;;,
      3;3;-17.399502,24.614304, 1.157889;;,
      4;3;-17.399500,24.614294, 1.157892;;,
      5;3;-17.399502,24.614300, 1.157903;;,
      6;3;-17.399498,24.614311, 1.157897;;,
      7;3;-17.399502,24.614300, 1.157890;;,
      8;3;-17.399502,24.614300, 1.157906;;,
      9;3;-17.399502,24.614304, 1.157895;;,
      10;3;-17.399502,24.614305, 1.157884;;,
      11;3;-17.399502,24.614302, 1.157898;;,
      12;3;-17.399502,24.614309, 1.157896;;,
      13;3;-17.399502,24.614300, 1.157901;;,
      14;3;-17.399500,24.614307, 1.157900;;,
      15;3;-17.399504,24.614311, 1.157900;;,
      16;3;-17.399502,24.614300, 1.157908;;,
      17;3;-17.399502,24.614304, 1.157900;;,
      18;3;-17.399498,24.614300, 1.157903;;,
      19;3;-17.399500,24.614302, 1.157890;;,
      20;3;-17.399500,24.614300, 1.157888;;,
      21;3;-17.399504,24.614302, 1.157908;;,
      22;3;-17.399506,24.614304, 1.157891;;,
      23;3;-17.399504,24.614304, 1.157890;;,
      24;3;-17.399500,24.614309, 1.157902;;,
      25;3;-17.399498,24.614300, 1.157898;;,
      26;3;-17.399502,24.614307, 1.157907;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.877199, 0.228220, 0.293101,-0.304188;;,
      1;4;-0.878753, 0.198977, 0.306636,-0.306880;;,
      2;4;-0.882940, 0.179585, 0.311725,-0.301651;;,
      3;4;-0.893253, 0.192887, 0.297802,-0.276056;;,
      4;4;-0.895177, 0.234463, 0.287206,-0.247382;;,
      5;4;-0.886915, 0.288680, 0.281556,-0.225327;;,
      6;4;-0.877333, 0.333301, 0.272346,-0.212192;;,
      7;4;-0.869788, 0.364972, 0.260520,-0.205898;;,
      8;4;-0.860857, 0.390735, 0.254390,-0.203806;;,
      9;4;-0.846243, 0.417638, 0.261035,-0.203252;;,
      10;4;-0.827010, 0.444996, 0.278152,-0.201654;;,
      11;4;-0.810646, 0.465825, 0.294339,-0.198052;;,
      12;4;-0.805290, 0.474351, 0.298050,-0.194077;;,
      13;4;-0.811900, 0.471504, 0.285901,-0.191739;;,
      14;4;-0.823695, 0.464330, 0.263493,-0.191037;;,
      15;4;-0.833167, 0.460636, 0.239217,-0.190845;;,
      16;4;-0.837724, 0.463889, 0.216696,-0.189918;;,
      17;4;-0.839322, 0.473156, 0.192814,-0.185700;;,
      18;4;-0.840462, 0.484751, 0.165439,-0.176835;;,
      19;4;-0.842581, 0.495808, 0.134740,-0.161482;;,
      20;4;-0.847127, 0.499081, 0.109673,-0.145827;;,
      21;4;-0.857186, 0.484550, 0.101943,-0.141604;;,
      22;4;-0.873323, 0.444716, 0.117798,-0.160183;;,
      23;4;-0.887832, 0.382362, 0.154828,-0.203916;;,
      24;4;-0.885982, 0.321558, 0.216101,-0.254827;;,
      25;4;-0.879365, 0.268436, 0.266124,-0.289547;;,
      26;4;-0.877199, 0.228220, 0.293100,-0.304188;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000006,19.910404,-0.000000;;,
      1;3; 0.000004,19.910398,-0.000006;;,
      2;3;-0.000002,19.910408, 0.000000;;,
      3;3;-0.000005,19.910406, 0.000001;;,
      4;3;-0.000009,19.910406, 0.000006;;,
      5;3;-0.000002,19.910402,-0.000008;;,
      6;3;-0.000007,19.910400, 0.000006;;,
      7;3; 0.000002,19.910402,-0.000002;;,
      8;3;-0.000019,19.910406,-0.000005;;,
      9;3;-0.000010,19.910402,-0.000007;;,
      10;3;-0.000006,19.910408, 0.000002;;,
      11;3;-0.000004,19.910391, 0.000009;;,
      12;3;-0.000010,19.910400, 0.000004;;,
      13;3;-0.000001,19.910402,-0.000007;;,
      14;3;-0.000009,19.910400, 0.000003;;,
      15;3; 0.000004,19.910400, 0.000002;;,
      16;3;-0.000010,19.910406,-0.000003;;,
      17;3;-0.000001,19.910404, 0.000002;;,
      18;3; 0.000016,19.910400, 0.000005;;,
      19;3;-0.000011,19.910400, 0.000002;;,
      20;3; 0.000005,19.910404,-0.000003;;,
      21;3;-0.000009,19.910404,-0.000006;;,
      22;3;-0.000003,19.910402,-0.000010;;,
      23;3;-0.000004,19.910406,-0.000001;;,
      24;3; 0.000000,19.910404, 0.000003;;,
      25;3; 0.000015,19.910402,-0.000001;;,
      26;3;-0.000007,19.910408,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.934313,-0.000056,-0.001728,-0.356449;;,
      1;4;-0.931011,-0.000057,-0.001773,-0.364986;;,
      2;4;-0.924144,-0.000060,-0.001863,-0.382040;;,
      3;4;-0.909353,-0.000062,-0.002020,-0.416021;;,
      4;4;-0.898650,-0.000068,-0.002162,-0.438661;;,
      5;4;-0.895291,-0.000069,-0.002199,-0.445477;;,
      6;4;-0.894906,-0.000069,-0.002203,-0.446249;;,
      7;4;-0.895116,-0.000069,-0.002200,-0.445828;;,
      8;4;-0.897753,-0.000068,-0.002172,-0.440494;;,
      9;4;-0.905917,-0.000065,-0.002082,-0.423449;;,
      10;4;-0.918919,-0.000061,-0.001929,-0.394443;;,
      11;4;-0.931298,-0.000057,-0.001769,-0.364254;;,
      12;4;-0.937125,-0.000055,-0.001688,-0.348991;;,
      13;4;-0.933921,-0.000056,-0.001733,-0.357474;;,
      14;4;-0.923436,-0.000060,-0.001872,-0.383748;;,
      15;4;-0.910684,-0.000064,-0.002027,-0.413100;;,
      16;4;-0.900347,-0.000067,-0.002144,-0.435166;;,
      17;4;-0.892897,-0.000066,-0.002223,-0.450256;;,
      18;4;-0.885065,-0.000072,-0.002305,-0.465461;;,
      19;4;-0.874972,-0.000074,-0.002404,-0.484168;;,
      20;4;-0.865171,-0.000077,-0.002496,-0.501471;;,
      21;4;-0.863124,-0.000077,-0.002514,-0.504986;;,
      22;4;-0.875585,-0.000074,-0.002398,-0.483058;;,
      23;4;-0.899925,-0.000068,-0.002149,-0.436039;;,
      24;4;-0.920794,-0.000061,-0.001905,-0.390045;;,
      25;4;-0.932187,-0.000057,-0.001757,-0.361973;;,
      26;4;-0.934313,-0.000056,-0.001728,-0.356449;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000004,49.301304, 0.000017;;,
      1;3; 0.000006,49.301296, 0.000017;;,
      2;3; 0.000004,49.301300, 0.000019;;,
      3;3; 0.000008,49.301304, 0.000029;;,
      4;3;-0.000006,49.301304, 0.000023;;,
      5;3; 0.000008,49.301292, 0.000025;;,
      6;3;-0.000006,49.301292, 0.000015;;,
      7;3;-0.000004,49.301300, 0.000017;;,
      8;3; 0.000000,49.301304, 0.000017;;,
      9;3; 0.000000,49.301315, 0.000015;;,
      10;3; 0.000013,49.301300, 0.000013;;,
      11;3; 0.000004,49.301304, 0.000021;;,
      12;3;-0.000010,49.301292, 0.000023;;,
      13;3; 0.000004,49.301311, 0.000017;;,
      14;3; 0.000000,49.301311, 0.000023;;,
      15;3;-0.000001,49.301315, 0.000025;;,
      16;3;-0.000002,49.301304, 0.000021;;,
      17;3;-0.000006,49.301304, 0.000015;;,
      18;3; 0.000000,49.301308, 0.000014;;,
      19;3; 0.000003,49.301319, 0.000029;;,
      20;3; 0.000005,49.301311, 0.000022;;,
      21;3; 0.000001,49.301304, 0.000021;;,
      22;3;-0.000006,49.301304, 0.000020;;,
      23;3;-0.000003,49.301304, 0.000022;;,
      24;3; 0.000004,49.301319, 0.000013;;,
      25;3;-0.000004,49.301300, 0.000019;;,
      26;3;-0.000002,49.301308, 0.000027;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.918183, 0.045742, 0.370397,-0.132870;;,
      1;4;-0.929832, 0.038234, 0.336855,-0.143107;;,
      2;4;-0.940631, 0.026974, 0.301948,-0.152687;;,
      3;4;-0.950709, 0.010732, 0.265769,-0.159385;;,
      4;4;-0.959662, 0.006182, 0.231370,-0.159618;;,
      5;4;-0.967506, 0.012007, 0.198840,-0.155725;;,
      6;4;-0.973995, 0.019114, 0.166887,-0.152042;;,
      7;4;-0.978564, 0.023786, 0.136182,-0.152649;;,
      8;4;-0.980448, 0.025959, 0.109122,-0.161682;;,
      9;4;-0.979287, 0.027457, 0.091074,-0.178744;;,
      10;4;-0.975376, 0.030932, 0.096868,-0.195709;;,
      11;4;-0.972277, 0.035321, 0.108964,-0.203855;;,
      12;4;-0.972395, 0.037244, 0.116571,-0.198675;;,
      13;4;-0.974625, 0.035136, 0.124164,-0.182908;;,
      14;4;-0.975819, 0.030319, 0.140850,-0.164373;;,
      15;4;-0.973641, 0.025511, 0.169703,-0.150245;;,
      16;4;-0.967943, 0.022733, 0.205756,-0.142249;;,
      17;4;-0.960527, 0.021794, 0.241166,-0.136940;;,
      18;4;-0.953017, 0.020568, 0.272474,-0.130744;;,
      19;4;-0.946709, 0.017569, 0.297228,-0.122840;;,
      20;4;-0.941435, 0.013237, 0.316369,-0.115910;;,
      21;4;-0.936824, 0.010312, 0.330834,-0.113149;;,
      22;4;-0.932852, 0.012472, 0.340867,-0.115940;;,
      23;4;-0.929975, 0.021840, 0.345856,-0.122691;;,
      24;4;-0.930185, 0.036385, 0.342284,-0.127570;;,
      25;4;-0.927247, 0.045664, 0.347879,-0.130796;;,
      26;4;-0.918183, 0.045742, 0.370397,-0.132870;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000007,31.604986,-0.000005;;,
      1;3; 0.000000,31.604992, 0.000006;;,
      2;3;-0.000010,31.604994,-0.000004;;,
      3;3; 0.000004,31.604990,-0.000002;;,
      4;3; 0.000002,31.604990, 0.000004;;,
      5;3; 0.000005,31.604992,-0.000004;;,
      6;3; 0.000004,31.604990, 0.000013;;,
      7;3; 0.000003,31.604986, 0.000013;;,
      8;3; 0.000006,31.604996,-0.000004;;,
      9;3; 0.000005,31.604988, 0.000006;;,
      10;3;-0.000003,31.604994,-0.000006;;,
      11;3;-0.000003,31.604984, 0.000011;;,
      12;3; 0.000006,31.604996, 0.000010;;,
      13;3; 0.000005,31.604996, 0.000006;;,
      14;3;-0.000002,31.604992,-0.000004;;,
      15;3; 0.000002,31.604986,-0.000006;;,
      16;3;-0.000002,31.604986,-0.000002;;,
      17;3;-0.000000,31.604994,-0.000004;;,
      18;3;-0.000002,31.604996,-0.000011;;,
      19;3;-0.000001,31.604994,-0.000010;;,
      20;3;-0.000000,31.604980, 0.000000;;,
      21;3; 0.000001,31.605001,-0.000001;;,
      22;3; 0.000003,31.604988, 0.000009;;,
      23;3; 0.000002,31.604992, 0.000003;;,
      24;3;-0.000003,31.604992,-0.000003;;,
      25;3; 0.000000,31.604996,-0.000011;;,
      26;3;-0.000001,31.604994,-0.000009;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      1;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      2;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      3;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      4;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      5;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      6;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      7;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      8;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      9;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      10;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      11;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      12;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      13;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      14;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      15;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      16;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      17;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      18;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      19;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      20;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      21;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      22;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      23;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      24;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      25;4;-0.844493, 0.256855,-0.318423,-0.345635;;,
      26;4;-0.844493, 0.256855,-0.318423,-0.345635;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 7.059701, 6.094000, 4.396996;;,
      1;3; 7.059702, 6.093994, 4.396998;;,
      2;3; 7.059706, 6.093995, 4.396988;;,
      3;3; 7.059700, 6.094000, 4.396980;;,
      4;3; 7.059698, 6.094004, 4.396979;;,
      5;3; 7.059706, 6.094007, 4.396981;;,
      6;3; 7.059700, 6.094002, 4.396994;;,
      7;3; 7.059698, 6.093998, 4.396999;;,
      8;3; 7.059708, 6.094008, 4.396980;;,
      9;3; 7.059701, 6.094000, 4.396994;;,
      10;3; 7.059700, 6.094001, 4.397011;;,
      11;3; 7.059698, 6.094000, 4.396985;;,
      12;3; 7.059698, 6.093995, 4.396989;;,
      13;3; 7.059713, 6.094000, 4.396995;;,
      14;3; 7.059706, 6.094000, 4.396985;;,
      15;3; 7.059704, 6.093998, 4.396982;;,
      16;3; 7.059694, 6.094002, 4.396994;;,
      17;3; 7.059707, 6.093991, 4.396994;;,
      18;3; 7.059702, 6.093995, 4.396989;;,
      19;3; 7.059700, 6.094000, 4.396989;;,
      20;3; 7.059707, 6.093998, 4.396996;;,
      21;3; 7.059703, 6.093997, 4.397000;;,
      22;3; 7.059703, 6.093997, 4.396986;;,
      23;3; 7.059700, 6.094006, 4.397001;;,
      24;3; 7.059703, 6.093996, 4.396988;;,
      25;3; 7.059695, 6.094003, 4.396999;;,
      26;3; 7.059700, 6.094003, 4.396987;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      1;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      2;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      3;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      4;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      5;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      6;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      7;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      8;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      9;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      10;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      11;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      12;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      13;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      14;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      15;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      16;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      17;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      18;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      19;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      20;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      21;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      22;4;-0.956768,-0.183794,-0.000924, 0.225420;;,
      23;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      24;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      25;4;-0.956768,-0.183794,-0.000924, 0.225419;;,
      26;4;-0.956768,-0.183794,-0.000924, 0.225419;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000, 7.536304, 0.000000;;,
      1;3; 0.000001, 7.536301, 0.000014;;,
      2;3; 0.000000, 7.536312,-0.000002;;,
      3;3;-0.000001, 7.536307, 0.000005;;,
      4;3;-0.000007, 7.536312, 0.000003;;,
      5;3;-0.000002, 7.536306,-0.000003;;,
      6;3;-0.000004, 7.536304, 0.000008;;,
      7;3;-0.000003, 7.536304,-0.000001;;,
      8;3;-0.000011, 7.536303,-0.000010;;,
      9;3; 0.000006, 7.536310,-0.000019;;,
      10;3; 0.000000, 7.536303, 0.000004;;,
      11;3;-0.000004, 7.536309,-0.000008;;,
      12;3; 0.000004, 7.536310, 0.000007;;,
      13;3;-0.000003, 7.536303,-0.000006;;,
      14;3;-0.000002, 7.536310, 0.000002;;,
      15;3;-0.000006, 7.536308,-0.000002;;,
      16;3;-0.000002, 7.536301, 0.000000;;,
      17;3;-0.000005, 7.536301, 0.000008;;,
      18;3; 0.000003, 7.536291,-0.000004;;,
      19;3;-0.000001, 7.536295, 0.000005;;,
      20;3; 0.000004, 7.536306, 0.000000;;,
      21;3; 0.000000, 7.536304, 0.000000;;,
      22;3; 0.000007, 7.536312, 0.000003;;,
      23;3; 0.000000, 7.536297,-0.000005;;,
      24;3;-0.000004, 7.536304,-0.000009;;,
      25;3;-0.000001, 7.536301, 0.000007;;,
      26;3;-0.000004, 7.536310, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      1;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      2;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      3;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      4;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      5;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      6;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      7;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      8;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      9;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      10;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      11;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      12;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      13;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      14;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      15;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      16;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      17;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      18;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      19;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      20;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      21;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      22;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      23;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      24;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      25;4;-0.984072,-0.121279, 0.004093, 0.129912;;,
      26;4;-0.984072,-0.121279, 0.004093, 0.129912;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000003, 7.512699,-0.000012;;,
      1;3; 0.000004, 7.512699, 0.000003;;,
      2;3;-0.000002, 7.512689, 0.000008;;,
      3;3; 0.000002, 7.512690, 0.000006;;,
      4;3; 0.000002, 7.512696, 0.000002;;,
      5;3; 0.000004, 7.512692, 0.000007;;,
      6;3; 0.000006, 7.512689, 0.000002;;,
      7;3;-0.000004, 7.512691,-0.000010;;,
      8;3; 0.000004, 7.512700,-0.000001;;,
      9;3; 0.000006, 7.512693,-0.000002;;,
      10;3; 0.000000, 7.512697,-0.000001;;,
      11;3; 0.000000, 7.512699,-0.000009;;,
      12;3;-0.000001, 7.512702,-0.000002;;,
      13;3;-0.000000, 7.512695,-0.000002;;,
      14;3; 0.000000, 7.512698, 0.000000;;,
      15;3; 0.000001, 7.512695,-0.000004;;,
      16;3; 0.000004, 7.512700, 0.000000;;,
      17;3;-0.000001, 7.512700, 0.000002;;,
      18;3; 0.000004, 7.512702, 0.000004;;,
      19;3;-0.000002, 7.512691, 0.000004;;,
      20;3;-0.000004, 7.512695, 0.000008;;,
      21;3; 0.000000, 7.512693,-0.000005;;,
      22;3;-0.000004, 7.512696, 0.000001;;,
      23;3;-0.000003, 7.512692,-0.000003;;,
      24;3;-0.000004, 7.512696,-0.000002;;,
      25;3; 0.000001, 7.512692, 0.000000;;,
      26;3; 0.000000, 7.512694,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      1;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      2;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      3;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      4;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      5;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      6;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      7;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      8;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      9;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      10;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      11;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      12;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      13;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      14;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      15;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      16;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      17;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      18;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      19;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      20;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      21;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      22;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      23;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      24;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      25;4;-1.000000, 0.000001,-0.000001,-0.000001;;,
      26;4;-1.000000, 0.000001,-0.000001,-0.000001;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000001,10.212732, 0.000007;;,
      1;3; 0.000002,10.212725,-0.000010;;,
      2;3;-0.000005,10.212725,-0.000002;;,
      3;3;-0.000003,10.212718,-0.000008;;,
      4;3; 0.000002,10.212721, 0.000007;;,
      5;3; 0.000000,10.212729, 0.000000;;,
      6;3;-0.000004,10.212731, 0.000012;;,
      7;3; 0.000000,10.212724, 0.000001;;,
      8;3;-0.000002,10.212733, 0.000008;;,
      9;3;-0.000006,10.212725, 0.000013;;,
      10;3; 0.000000,10.212720,-0.000002;;,
      11;3;-0.000002,10.212726,-0.000003;;,
      12;3;-0.000002,10.212725,-0.000004;;,
      13;3; 0.000004,10.212717, 0.000005;;,
      14;3;-0.000001,10.212721, 0.000002;;,
      15;3; 0.000000,10.212726,-0.000004;;,
      16;3;-0.000002,10.212723, 0.000000;;,
      17;3;-0.000002,10.212727, 0.000000;;,
      18;3;-0.000002,10.212729, 0.000006;;,
      19;3;-0.000004,10.212729,-0.000013;;,
      20;3;-0.000002,10.212734,-0.000005;;,
      21;3;-0.000002,10.212725, 0.000003;;,
      22;3;-0.000005,10.212729,-0.000003;;,
      23;3;-0.000004,10.212723, 0.000001;;,
      24;3; 0.000007,10.212726,-0.000010;;,
      25;3; 0.000000,10.212730,-0.000016;;,
      26;3; 0.000001,10.212729, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031891,-0.003424, 0.060136;;,
      1;4;-0.997742,-0.029190,-0.003254, 0.060398;;,
      2;4;-0.997341,-0.042422,-0.004091, 0.059108;;,
      3;4;-0.996200,-0.065791,-0.005569, 0.056802;;,
      4;4;-0.993373,-0.101581,-0.007832, 0.053201;;,
      5;4;-0.990694,-0.125961,-0.009372, 0.050700;;,
      6;4;-0.992125,-0.113641,-0.008594, 0.051969;;,
      7;4;-0.994386,-0.090520,-0.007133, 0.054322;;,
      8;4;-0.995818,-0.071774,-0.005948, 0.056205;;,
      9;4;-0.996403,-0.062338,-0.005351, 0.057145;;,
      10;4;-0.996584,-0.059089,-0.005146, 0.057467;;,
      11;4;-0.996742,-0.056062,-0.004954, 0.057766;;,
      12;4;-0.997025,-0.050148,-0.004580, 0.058349;;,
      13;4;-0.997286,-0.043902,-0.004185, 0.058963;;,
      14;4;-0.997326,-0.042841,-0.004117, 0.059067;;,
      15;4;-0.997066,-0.049225,-0.004522, 0.058440;;,
      16;4;-0.996562,-0.059497,-0.005171, 0.057426;;,
      17;4;-0.996071,-0.067884,-0.005701, 0.056588;;,
      18;4;-0.995726,-0.073139,-0.006034, 0.056069;;,
      19;4;-0.995569,-0.075401,-0.006177, 0.055843;;,
      20;4;-0.995365,-0.078238,-0.006357, 0.055559;;,
      21;4;-0.994945,-0.083749,-0.006705, 0.055005;;,
      22;4;-0.994376,-0.090640,-0.007141, 0.054310;;,
      23;4;-0.994124,-0.093516,-0.007322, 0.054019;;,
      24;4;-0.994787,-0.085728,-0.006830, 0.054806;;,
      25;4;-0.996428,-0.061904,-0.005324, 0.057188;;,
      26;4;-0.997675,-0.031890,-0.003424, 0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 6.192895,21.270996, 0.499013;;,
      1;3; 6.192900,21.270996, 0.499005;;,
      2;3; 6.192905,21.270992, 0.498999;;,
      3;3; 6.192898,21.270994, 0.498993;;,
      4;3; 6.192896,21.270996, 0.498993;;,
      5;3; 6.192904,21.271002, 0.498994;;,
      6;3; 6.192900,21.270992, 0.499002;;,
      7;3; 6.192898,21.271004, 0.499008;;,
      8;3; 6.192909,21.271004, 0.498996;;,
      9;3; 6.192895,21.271000, 0.499003;;,
      10;3; 6.192902,21.270996, 0.499016;;,
      11;3; 6.192896,21.271002, 0.498996;;,
      12;3; 6.192897,21.270996, 0.498995;;,
      13;3; 6.192911,21.271000, 0.499008;;,
      14;3; 6.192904,21.271002, 0.498991;;,
      15;3; 6.192899,21.270992, 0.498994;;,
      16;3; 6.192892,21.270996, 0.498997;;,
      17;3; 6.192904,21.270988, 0.499005;;,
      18;3; 6.192899,21.270992, 0.498994;;,
      19;3; 6.192901,21.271000, 0.498998;;,
      20;3; 6.192907,21.271000, 0.499005;;,
      21;3; 6.192901,21.270994, 0.499004;;,
      22;3; 6.192902,21.270996, 0.499000;;,
      23;3; 6.192902,21.271000, 0.499011;;,
      24;3; 6.192904,21.270996, 0.498997;;,
      25;3; 6.192897,21.271002, 0.499002;;,
      26;3; 6.192890,21.270998, 0.499004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000, 0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000, 0.020805;;,
      2;4;-0.976095, 0.216396, 0.000000, 0.020299;;,
      3;4;-0.978177, 0.206864,-0.000000, 0.019405;;,
      4;4;-0.981191, 0.192196, 0.000000, 0.018029;;,
      5;4;-0.983122, 0.182149,-0.000000, 0.017087;;,
      6;4;-0.982159, 0.187233,-0.000000, 0.017564;;,
      7;4;-0.980282, 0.196739,-0.000000, 0.018456;;,
      8;4;-0.978696, 0.204418, 0.000000, 0.019176;;,
      9;4;-0.977875, 0.208274,-0.000000, 0.019538;;,
      10;4;-0.977589, 0.209601, 0.000000, 0.019662;;,
      11;4;-0.977321, 0.210836, 0.000000, 0.019778;;,
      12;4;-0.976793, 0.213248, 0.000000, 0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000, 0.020243;;,
      14;4;-0.976133, 0.216226, 0.000000, 0.020283;;,
      15;4;-0.976710, 0.213624, 0.000000, 0.020040;;,
      16;4;-0.977625, 0.209434, 0.000000, 0.019646;;,
      17;4;-0.978360, 0.206008, 0.000000, 0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000, 0.019123;;,
      19;4;-0.979007, 0.202934,-0.000000, 0.019037;;,
      20;4;-0.979249, 0.201773,-0.000000, 0.018928;;,
      21;4;-0.979716, 0.199515,-0.000000, 0.018716;;,
      22;4;-0.980292, 0.196690, 0.000000, 0.018451;;,
      23;4;-0.980530, 0.195509,-0.000000, 0.018340;;,
      24;4;-0.979882, 0.198704, 0.000000, 0.018640;;,
      25;4;-0.977837, 0.208452,-0.000000, 0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000, 0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000007, 7.535988,-0.000004;;,
      1;3;-0.000004, 7.536005,-0.000001;;,
      2;3;-0.000006, 7.535995, 0.000011;;,
      3;3; 0.000004, 7.535999, 0.000008;;,
      4;3;-0.000006, 7.536001,-0.000009;;,
      5;3;-0.000006, 7.536000,-0.000008;;,
      6;3; 0.000004, 7.535988, 0.000004;;,
      7;3; 0.000002, 7.536003, 0.000002;;,
      8;3; 0.000004, 7.535998, 0.000000;;,
      9;3; 0.000000, 7.536000, 0.000008;;,
      10;3; 0.000005, 7.535994,-0.000015;;,
      11;3; 0.000001, 7.535994,-0.000012;;,
      12;3; 0.000003, 7.535999, 0.000004;;,
      13;3; 0.000001, 7.535996, 0.000012;;,
      14;3;-0.000006, 7.535997,-0.000011;;,
      15;3;-0.000001, 7.535996, 0.000006;;,
      16;3; 0.000001, 7.535995, 0.000003;;,
      17;3; 0.000001, 7.535997, 0.000002;;,
      18;3;-0.000004, 7.535995, 0.000015;;,
      19;3;-0.000001, 7.535998,-0.000002;;,
      20;3;-0.000003, 7.536000,-0.000003;;,
      21;3;-0.000002, 7.535995, 0.000010;;,
      22;3;-0.000000, 7.535997, 0.000004;;,
      23;3; 0.000004, 7.535996,-0.000002;;,
      24;3;-0.000001, 7.535998, 0.000003;;,
      25;3;-0.000004, 7.535996, 0.000007;;,
      26;3; 0.000001, 7.535990,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      1;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      2;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      3;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      4;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      5;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      6;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      7;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      8;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      9;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      10;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      11;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      12;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      13;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      14;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      15;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      16;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      17;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      18;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      19;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      20;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      21;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      22;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      23;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      24;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      25;4;-0.988234, 0.152940, 0.001636,-0.000879;;,
      26;4;-0.988234, 0.152940, 0.001636,-0.000879;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000008, 7.512996,-0.000005;;,
      1;3; 0.000002, 7.513008, 0.000003;;,
      2;3;-0.000016, 7.512998, 0.000006;;,
      3;3; 0.000002, 7.513004, 0.000001;;,
      4;3;-0.000006, 7.513004, 0.000013;;,
      5;3; 0.000010, 7.513002,-0.000012;;,
      6;3; 0.000000, 7.513000, 0.000008;;,
      7;3; 0.000004, 7.513005,-0.000012;;,
      8;3;-0.000004, 7.512999,-0.000006;;,
      9;3; 0.000000, 7.512999, 0.000002;;,
      10;3;-0.000001, 7.512996, 0.000018;;,
      11;3;-0.000003, 7.513000,-0.000001;;,
      12;3;-0.000001, 7.513004, 0.000006;;,
      13;3; 0.000003, 7.513003, 0.000001;;,
      14;3;-0.000004, 7.512999,-0.000001;;,
      15;3;-0.000001, 7.513002,-0.000002;;,
      16;3; 0.000007, 7.513008, 0.000001;;,
      17;3;-0.000005, 7.513003, 0.000012;;,
      18;3; 0.000003, 7.513010, 0.000001;;,
      19;3; 0.000005, 7.512999,-0.000000;;,
      20;3;-0.000007, 7.513000, 0.000009;;,
      21;3;-0.000001, 7.513000,-0.000007;;,
      22;3; 0.000001, 7.513001, 0.000001;;,
      23;3;-0.000004, 7.513002, 0.000007;;,
      24;3;-0.000006, 7.513004, 0.000008;;,
      25;3;-0.000007, 7.513000, 0.000001;;,
      26;3; 0.000007, 7.513002, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000008,10.212009,-0.000002;;,
      1;3; 0.000008,10.212007,-0.000003;;,
      2;3; 0.000000,10.212006,-0.000001;;,
      3;3; 0.000004,10.212006,-0.000009;;,
      4;3; 0.000000,10.212008, 0.000006;;,
      5;3; 0.000002,10.212009, 0.000004;;,
      6;3;-0.000002,10.212008, 0.000007;;,
      7;3; 0.000004,10.212005, 0.000003;;,
      8;3;-0.000003,10.212002,-0.000008;;,
      9;3;-0.000004,10.212012,-0.000007;;,
      10;3;-0.000003,10.212009,-0.000005;;,
      11;3;-0.000005,10.212009, 0.000004;;,
      12;3;-0.000002,10.212012,-0.000006;;,
      13;3; 0.000002,10.212008, 0.000009;;,
      14;3;-0.000000,10.212007, 0.000007;;,
      15;3;-0.000006,10.212004,-0.000002;;,
      16;3; 0.000004,10.212011, 0.000000;;,
      17;3; 0.000002,10.212011, 0.000004;;,
      18;3;-0.000002,10.212004,-0.000000;;,
      19;3; 0.000002,10.212003, 0.000006;;,
      20;3; 0.000004,10.212010, 0.000007;;,
      21;3;-0.000003,10.212008, 0.000005;;,
      22;3; 0.000003,10.212010, 0.000005;;,
      23;3;-0.000003,10.212011,-0.000001;;,
      24;3; 0.000000,10.212008, 0.000001;;,
      25;3; 0.000008,10.212011, 0.000011;;,
      26;3;-0.000001,10.211998, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031891,-0.003424, 0.060136;;,
      1;4;-0.997742,-0.029190,-0.003254, 0.060398;;,
      2;4;-0.997341,-0.042422,-0.004091, 0.059108;;,
      3;4;-0.996200,-0.065791,-0.005569, 0.056802;;,
      4;4;-0.993373,-0.101581,-0.007832, 0.053201;;,
      5;4;-0.990694,-0.125961,-0.009372, 0.050700;;,
      6;4;-0.992125,-0.113641,-0.008594, 0.051969;;,
      7;4;-0.994386,-0.090520,-0.007133, 0.054322;;,
      8;4;-0.995818,-0.071774,-0.005948, 0.056205;;,
      9;4;-0.996403,-0.062338,-0.005351, 0.057145;;,
      10;4;-0.996584,-0.059089,-0.005146, 0.057467;;,
      11;4;-0.996742,-0.056062,-0.004954, 0.057766;;,
      12;4;-0.997025,-0.050148,-0.004580, 0.058349;;,
      13;4;-0.997286,-0.043902,-0.004185, 0.058963;;,
      14;4;-0.997326,-0.042841,-0.004117, 0.059067;;,
      15;4;-0.997066,-0.049225,-0.004522, 0.058440;;,
      16;4;-0.996562,-0.059497,-0.005171, 0.057426;;,
      17;4;-0.996071,-0.067884,-0.005701, 0.056588;;,
      18;4;-0.995726,-0.073139,-0.006034, 0.056069;;,
      19;4;-0.995569,-0.075401,-0.006177, 0.055843;;,
      20;4;-0.995365,-0.078238,-0.006357, 0.055559;;,
      21;4;-0.994945,-0.083749,-0.006705, 0.055005;;,
      22;4;-0.994376,-0.090640,-0.007141, 0.054310;;,
      23;4;-0.994124,-0.093516,-0.007322, 0.054019;;,
      24;4;-0.994787,-0.085728,-0.006830, 0.054806;;,
      25;4;-0.996428,-0.061904,-0.005324, 0.057188;;,
      26;4;-0.997675,-0.031890,-0.003424, 0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.016502,23.333994, 0.008999;;,
      1;3;-0.016507,23.333986, 0.009002;;,
      2;3;-0.016497,23.333984, 0.008990;;,
      3;3;-0.016500,23.333992, 0.008988;;,
      4;3;-0.016502,23.333992, 0.008981;;,
      5;3;-0.016500,23.333996, 0.008986;;,
      6;3;-0.016500,23.333998, 0.008995;;,
      7;3;-0.016506,23.333992, 0.009005;;,
      8;3;-0.016493,23.333996, 0.008985;;,
      9;3;-0.016503,23.333992, 0.009000;;,
      10;3;-0.016499,23.333992, 0.009016;;,
      11;3;-0.016509,23.333994, 0.008992;;,
      12;3;-0.016499,23.333990, 0.008993;;,
      13;3;-0.016495,23.333990, 0.009002;;,
      14;3;-0.016497,23.333994, 0.008986;;,
      15;3;-0.016501,23.333988, 0.008988;;,
      16;3;-0.016502,23.333994, 0.009001;;,
      17;3;-0.016499,23.333986, 0.008998;;,
      18;3;-0.016499,23.333988, 0.008985;;,
      19;3;-0.016504,23.333996, 0.008991;;,
      20;3;-0.016494,23.333992, 0.008997;;,
      21;3;-0.016501,23.333986, 0.009001;;,
      22;3;-0.016500,23.333990, 0.008995;;,
      23;3;-0.016504,23.333994, 0.009006;;,
      24;3;-0.016501,23.333990, 0.008998;;,
      25;3;-0.016505,23.333996, 0.009001;;,
      26;3;-0.016508,23.333992, 0.009002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000, 0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000, 0.020805;;,
      2;4;-0.976095, 0.216396, 0.000000, 0.020299;;,
      3;4;-0.978177, 0.206864, 0.000000, 0.019405;;,
      4;4;-0.981191, 0.192196, 0.000000, 0.018029;;,
      5;4;-0.983122, 0.182149,-0.000000, 0.017087;;,
      6;4;-0.982159, 0.187233, 0.000000, 0.017564;;,
      7;4;-0.980282, 0.196739,-0.000000, 0.018456;;,
      8;4;-0.978696, 0.204418, 0.000000, 0.019176;;,
      9;4;-0.977875, 0.208274,-0.000000, 0.019538;;,
      10;4;-0.977589, 0.209601, 0.000000, 0.019662;;,
      11;4;-0.977321, 0.210836, 0.000000, 0.019778;;,
      12;4;-0.976793, 0.213248, 0.000000, 0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000, 0.020243;;,
      14;4;-0.976133, 0.216226, 0.000000, 0.020283;;,
      15;4;-0.976710, 0.213624, 0.000000, 0.020040;;,
      16;4;-0.977625, 0.209434, 0.000000, 0.019646;;,
      17;4;-0.978360, 0.206008, 0.000000, 0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000, 0.019123;;,
      19;4;-0.979007, 0.202934,-0.000000, 0.019037;;,
      20;4;-0.979249, 0.201773,-0.000000, 0.018928;;,
      21;4;-0.979716, 0.199515,-0.000000, 0.018716;;,
      22;4;-0.980292, 0.196690, 0.000000, 0.018451;;,
      23;4;-0.980530, 0.195509,-0.000000, 0.018340;;,
      24;4;-0.979882, 0.198704, 0.000000, 0.018640;;,
      25;4;-0.977837, 0.208452,-0.000000, 0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000, 0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000005, 6.996989,-0.000003;;,
      1;3;-0.000001, 6.996997, 0.000000;;,
      2;3; 0.000006, 6.996995, 0.000004;;,
      3;3;-0.000004, 6.996987,-0.000003;;,
      4;3; 0.000000, 6.996994,-0.000007;;,
      5;3;-0.000002, 6.996995,-0.000001;;,
      6;3; 0.000006, 6.996987,-0.000002;;,
      7;3; 0.000000, 6.996999,-0.000010;;,
      8;3;-0.000004, 6.996997, 0.000002;;,
      9;3; 0.000002, 6.996991,-0.000007;;,
      10;3; 0.000003, 6.996991, 0.000000;;,
      11;3;-0.000002, 6.996992,-0.000009;;,
      12;3;-0.000002, 6.996998, 0.000001;;,
      13;3; 0.000006, 6.996995,-0.000005;;,
      14;3;-0.000001, 6.996995,-0.000004;;,
      15;3;-0.000001, 6.996997,-0.000007;;,
      16;3;-0.000001, 6.996994, 0.000003;;,
      17;3;-0.000001, 6.996994,-0.000003;;,
      18;3;-0.000002, 6.996998,-0.000006;;,
      19;3; 0.000004, 6.996998, 0.000001;;,
      20;3;-0.000002, 6.996989, 0.000002;;,
      21;3;-0.000001, 6.996995, 0.000000;;,
      22;3; 0.000002, 6.996992,-0.000002;;,
      23;3;-0.000001, 6.996994, 0.000002;;,
      24;3;-0.000002, 6.996995,-0.000008;;,
      25;3;-0.000007, 6.996995, 0.000002;;,
      26;3;-0.000003, 6.996989,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      1;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      2;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      3;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      4;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      5;4;-0.994228, 0.106814, 0.000000, 0.010020;;,
      6;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      7;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      8;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      9;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      10;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      11;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      12;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      13;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      14;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      15;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      16;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      17;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      18;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      19;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      20;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      21;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      22;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      23;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      24;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      25;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      26;4;-0.994229, 0.106814, 0.000000, 0.010020;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000005, 7.016009,-0.000001;;,
      1;3; 0.000008, 7.016011,-0.000003;;,
      2;3;-0.000005, 7.016006, 0.000007;;,
      3;3; 0.000000, 7.016008,-0.000005;;,
      4;3;-0.000004, 7.016009,-0.000002;;,
      5;3; 0.000002, 7.016005,-0.000001;;,
      6;3; 0.000006, 7.016014,-0.000004;;,
      7;3; 0.000004, 7.016009,-0.000010;;,
      8;3;-0.000003, 7.016005, 0.000001;;,
      9;3; 0.000004, 7.016006,-0.000001;;,
      10;3;-0.000003, 7.016006, 0.000002;;,
      11;3; 0.000000, 7.016008,-0.000011;;,
      12;3; 0.000006, 7.016010, 0.000014;;,
      13;3;-0.000001, 7.016006,-0.000000;;,
      14;3;-0.000005, 7.016007, 0.000002;;,
      15;3;-0.000002, 7.016006,-0.000002;;,
      16;3;-0.000003, 7.016005,-0.000001;;,
      17;3; 0.000000, 7.016009, 0.000004;;,
      18;3;-0.000001, 7.016011,-0.000005;;,
      19;3; 0.000001, 7.016011,-0.000007;;,
      20;3; 0.000006, 7.016002, 0.000004;;,
      21;3; 0.000008, 7.016009,-0.000003;;,
      22;3; 0.000004, 7.016007, 0.000005;;,
      23;3; 0.000003, 7.016007,-0.000002;;,
      24;3;-0.000006, 7.016008,-0.000002;;,
      25;3; 0.000001, 7.016009,-0.000008;;,
      26;3;-0.000003, 7.016005,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000, 7.720996,-0.000004;;,
      1;3; 0.000007, 7.720991,-0.000005;;,
      2;3;-0.000004, 7.720997, 0.000006;;,
      3;3; 0.000002, 7.720994,-0.000012;;,
      4;3;-0.000003, 7.720995, 0.000002;;,
      5;3;-0.000001, 7.720993, 0.000007;;,
      6;3;-0.000002, 7.720995,-0.000012;;,
      7;3; 0.000003, 7.720993, 0.000006;;,
      8;3; 0.000000, 7.721000, 0.000010;;,
      9;3; 0.000002, 7.720990,-0.000004;;,
      10;3;-0.000001, 7.720995, 0.000002;;,
      11;3; 0.000000, 7.720996, 0.000003;;,
      12;3; 0.000006, 7.720998,-0.000011;;,
      13;3; 0.000000, 7.720995,-0.000002;;,
      14;3;-0.000005, 7.720994,-0.000001;;,
      15;3; 0.000007, 7.720993,-0.000010;;,
      16;3; 0.000004, 7.720998, 0.000003;;,
      17;3; 0.000000, 7.720995, 0.000006;;,
      18;3;-0.000006, 7.720994,-0.000002;;,
      19;3; 0.000006, 7.720998, 0.000002;;,
      20;3;-0.000003, 7.720997,-0.000002;;,
      21;3; 0.000003, 7.720993,-0.000004;;,
      22;3; 0.000004, 7.720994, 0.000006;;,
      23;3; 0.000000, 7.720997,-0.000002;;,
      24;3;-0.000003, 7.720995, 0.000002;;,
      25;3;-0.000001, 7.720998,-0.000006;;,
      26;3;-0.000001, 7.720994, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031891,-0.003424, 0.060136;;,
      1;4;-0.997742,-0.029190,-0.003254, 0.060398;;,
      2;4;-0.997341,-0.042422,-0.004091, 0.059108;;,
      3;4;-0.996200,-0.065791,-0.005569, 0.056802;;,
      4;4;-0.993373,-0.101581,-0.007832, 0.053201;;,
      5;4;-0.990694,-0.125961,-0.009372, 0.050700;;,
      6;4;-0.992125,-0.113641,-0.008594, 0.051969;;,
      7;4;-0.994386,-0.090520,-0.007133, 0.054322;;,
      8;4;-0.995818,-0.071774,-0.005948, 0.056205;;,
      9;4;-0.996403,-0.062338,-0.005351, 0.057145;;,
      10;4;-0.996584,-0.059089,-0.005146, 0.057467;;,
      11;4;-0.996742,-0.056062,-0.004954, 0.057766;;,
      12;4;-0.997025,-0.050148,-0.004580, 0.058349;;,
      13;4;-0.997286,-0.043902,-0.004185, 0.058963;;,
      14;4;-0.997326,-0.042841,-0.004117, 0.059067;;,
      15;4;-0.997066,-0.049225,-0.004522, 0.058440;;,
      16;4;-0.996562,-0.059497,-0.005171, 0.057426;;,
      17;4;-0.996071,-0.067884,-0.005701, 0.056588;;,
      18;4;-0.995726,-0.073139,-0.006034, 0.056069;;,
      19;4;-0.995569,-0.075401,-0.006177, 0.055843;;,
      20;4;-0.995365,-0.078238,-0.006357, 0.055559;;,
      21;4;-0.994945,-0.083749,-0.006705, 0.055005;;,
      22;4;-0.994376,-0.090640,-0.007141, 0.054310;;,
      23;4;-0.994124,-0.093516,-0.007322, 0.054019;;,
      24;4;-0.994787,-0.085728,-0.006830, 0.054806;;,
      25;4;-0.996428,-0.061904,-0.005324, 0.057188;;,
      26;4;-0.997675,-0.031890,-0.003424, 0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-6.516901,22.686001, 0.103998;;,
      1;3;-6.516903,22.686001, 0.103999;;,
      2;3;-6.516899,22.686005, 0.103988;;,
      3;3;-6.516901,22.686007, 0.103982;;,
      4;3;-6.516903,22.686001, 0.103984;;,
      5;3;-6.516899,22.686012, 0.103983;;,
      6;3;-6.516907,22.686001, 0.103994;;,
      7;3;-6.516905,22.686008, 0.104002;;,
      8;3;-6.516895,22.686012, 0.103988;;,
      9;3;-6.516902,22.686005, 0.103994;;,
      10;3;-6.516904,22.685997, 0.104018;;,
      11;3;-6.516903,22.686005, 0.103986;;,
      12;3;-6.516901,22.686001, 0.103981;;,
      13;3;-6.516895,22.686001, 0.103997;;,
      14;3;-6.516900,22.686005, 0.103991;;,
      15;3;-6.516903,22.686001, 0.103986;;,
      16;3;-6.516907,22.686007, 0.103997;;,
      17;3;-6.516899,22.685999, 0.103994;;,
      18;3;-6.516901,22.685997, 0.103990;;,
      19;3;-6.516904,22.686008, 0.103982;;,
      20;3;-6.516894,22.686005, 0.103990;;,
      21;3;-6.516900,22.685999, 0.103998;;,
      22;3;-6.516901,22.686001, 0.103984;;,
      23;3;-6.516904,22.686007, 0.103995;;,
      24;3;-6.516897,22.686001, 0.103992;;,
      25;3;-6.516904,22.686007, 0.103999;;,
      26;3;-6.516906,22.686005, 0.103993;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000, 0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000, 0.020805;;,
      2;4;-0.976095, 0.216396, 0.000000, 0.020299;;,
      3;4;-0.978177, 0.206864, 0.000000, 0.019405;;,
      4;4;-0.981191, 0.192196, 0.000000, 0.018029;;,
      5;4;-0.983122, 0.182149,-0.000000, 0.017087;;,
      6;4;-0.982159, 0.187233, 0.000000, 0.017564;;,
      7;4;-0.980282, 0.196739,-0.000000, 0.018456;;,
      8;4;-0.978696, 0.204418, 0.000000, 0.019176;;,
      9;4;-0.977875, 0.208274,-0.000000, 0.019538;;,
      10;4;-0.977589, 0.209601, 0.000000, 0.019662;;,
      11;4;-0.977321, 0.210836, 0.000000, 0.019778;;,
      12;4;-0.976793, 0.213248, 0.000000, 0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000, 0.020243;;,
      14;4;-0.976133, 0.216226, 0.000000, 0.020283;;,
      15;4;-0.976710, 0.213624, 0.000000, 0.020040;;,
      16;4;-0.977625, 0.209434, 0.000000, 0.019646;;,
      17;4;-0.978360, 0.206008, 0.000000, 0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000, 0.019123;;,
      19;4;-0.979007, 0.202934,-0.000000, 0.019037;;,
      20;4;-0.979249, 0.201773,-0.000000, 0.018928;;,
      21;4;-0.979716, 0.199515,-0.000000, 0.018716;;,
      22;4;-0.980292, 0.196690, 0.000000, 0.018451;;,
      23;4;-0.980530, 0.195509,-0.000000, 0.018340;;,
      24;4;-0.979882, 0.198704, 0.000000, 0.018640;;,
      25;4;-0.977837, 0.208452,-0.000000, 0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000, 0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000004, 6.408997, 0.000002;;,
      1;3; 0.000003, 6.409009,-0.000003;;,
      2;3; 0.000008, 6.409001,-0.000011;;,
      3;3;-0.000001, 6.409003, 0.000003;;,
      4;3; 0.000002, 6.408993, 0.000010;;,
      5;3; 0.000002, 6.408996, 0.000002;;,
      6;3; 0.000004, 6.408996,-0.000014;;,
      7;3;-0.000002, 6.408990,-0.000004;;,
      8;3; 0.000003, 6.409006, 0.000003;;,
      9;3; 0.000001, 6.408994, 0.000003;;,
      10;3; 0.000004, 6.409002,-0.000003;;,
      11;3; 0.000002, 6.408994, 0.000000;;,
      12;3;-0.000006, 6.408995,-0.000002;;,
      13;3; 0.000006, 6.408997, 0.000008;;,
      14;3;-0.000007, 6.408999,-0.000003;;,
      15;3; 0.000002, 6.408999, 0.000004;;,
      16;3; 0.000002, 6.408994, 0.000001;;,
      17;3; 0.000003, 6.409003,-0.000010;;,
      18;3; 0.000000, 6.408999,-0.000011;;,
      19;3;-0.000005, 6.408998,-0.000002;;,
      20;3;-0.000003, 6.408998, 0.000002;;,
      21;3; 0.000000, 6.408999, 0.000005;;,
      22;3; 0.000005, 6.408998, 0.000002;;,
      23;3; 0.000001, 6.408997,-0.000004;;,
      24;3; 0.000000, 6.408997, 0.000008;;,
      25;3;-0.000002, 6.408997, 0.000005;;,
      26;3;-0.000003, 6.408996,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      1;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      2;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      3;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      4;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      5;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      6;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      7;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      8;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      9;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      10;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      11;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      12;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      13;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      14;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      15;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      16;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      17;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      18;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      19;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      20;4;-0.994229, 0.106814, 0.000000, 0.010020;;,
      21;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      22;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      23;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      24;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      25;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      26;4;-0.994228, 0.106814, 0.000000, 0.010020;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000001, 6.149997,-0.000003;;,
      1;3;-0.000006, 6.149999,-0.000000;;,
      2;3;-0.000003, 6.149996, 0.000001;;,
      3;3; 0.000003, 6.149996,-0.000010;;,
      4;3; 0.000002, 6.149998,-0.000011;;,
      5;3;-0.000008, 6.149993, 0.000002;;,
      6;3; 0.000002, 6.149993,-0.000005;;,
      7;3; 0.000002, 6.149999, 0.000002;;,
      8;3; 0.000000, 6.149994,-0.000006;;,
      9;3; 0.000001, 6.149992, 0.000004;;,
      10;3; 0.000000, 6.149993, 0.000007;;,
      11;3;-0.000002, 6.149995,-0.000010;;,
      12;3;-0.000002, 6.149994,-0.000009;;,
      13;3; 0.000002, 6.149996, 0.000000;;,
      14;3; 0.000000, 6.149993, 0.000008;;,
      15;3; 0.000001, 6.149994, 0.000006;;,
      16;3;-0.000003, 6.149999, 0.000010;;,
      17;3;-0.000001, 6.149996,-0.000001;;,
      18;3;-0.000006, 6.150000,-0.000002;;,
      19;3; 0.000000, 6.150000,-0.000001;;,
      20;3;-0.000002, 6.149991,-0.000001;;,
      21;3;-0.000003, 6.149993, 0.000007;;,
      22;3; 0.000002, 6.149994, 0.000000;;,
      23;3; 0.000006, 6.149994,-0.000001;;,
      24;3;-0.000006, 6.149994,-0.000001;;,
      25;3;-0.000002, 6.149995,-0.000004;;,
      26;3;-0.000008, 6.149997, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000006, 6.146006,-0.000007;;,
      1;3;-0.000001, 6.145999, 0.000003;;,
      2;3;-0.000002, 6.145995, 0.000005;;,
      3;3; 0.000004, 6.145998, 0.000005;;,
      4;3; 0.000003, 6.145997,-0.000008;;,
      5;3; 0.000004, 6.145996, 0.000011;;,
      6;3; 0.000002, 6.145996,-0.000007;;,
      7;3; 0.000006, 6.145998,-0.000007;;,
      8;3;-0.000001, 6.146000,-0.000008;;,
      9;3; 0.000001, 6.145996,-0.000002;;,
      10;3; 0.000003, 6.145997, 0.000001;;,
      11;3;-0.000003, 6.145993, 0.000011;;,
      12;3;-0.000006, 6.145995, 0.000012;;,
      13;3; 0.000001, 6.145996,-0.000004;;,
      14;3;-0.000001, 6.145997, 0.000004;;,
      15;3;-0.000003, 6.145998,-0.000007;;,
      16;3;-0.000005, 6.145997, 0.000012;;,
      17;3; 0.000001, 6.146001, 0.000000;;,
      18;3;-0.000000, 6.146000, 0.000000;;,
      19;3;-0.000001, 6.145998,-0.000004;;,
      20;3;-0.000000, 6.146003,-0.000006;;,
      21;3;-0.000003, 6.145994, 0.000005;;,
      22;3; 0.000001, 6.146001, 0.000001;;,
      23;3;-0.000001, 6.145997,-0.000004;;,
      24;3;-0.000004, 6.145999,-0.000005;;,
      25;3; 0.000006, 6.145992, 0.000001;;,
      26;3;-0.000004, 6.146001, 0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.997675,-0.031891,-0.003424, 0.060136;;,
      1;4;-0.997742,-0.029190,-0.003254, 0.060398;;,
      2;4;-0.997341,-0.042422,-0.004091, 0.059108;;,
      3;4;-0.996200,-0.065791,-0.005569, 0.056802;;,
      4;4;-0.993373,-0.101581,-0.007832, 0.053201;;,
      5;4;-0.990694,-0.125961,-0.009372, 0.050700;;,
      6;4;-0.992125,-0.113641,-0.008594, 0.051969;;,
      7;4;-0.994386,-0.090520,-0.007133, 0.054322;;,
      8;4;-0.995818,-0.071774,-0.005948, 0.056205;;,
      9;4;-0.996403,-0.062338,-0.005351, 0.057145;;,
      10;4;-0.996584,-0.059089,-0.005146, 0.057467;;,
      11;4;-0.996742,-0.056062,-0.004954, 0.057766;;,
      12;4;-0.997025,-0.050148,-0.004580, 0.058349;;,
      13;4;-0.997286,-0.043902,-0.004185, 0.058963;;,
      14;4;-0.997326,-0.042841,-0.004117, 0.059067;;,
      15;4;-0.997066,-0.049225,-0.004522, 0.058440;;,
      16;4;-0.996562,-0.059497,-0.005171, 0.057426;;,
      17;4;-0.996071,-0.067884,-0.005701, 0.056588;;,
      18;4;-0.995726,-0.073139,-0.006034, 0.056069;;,
      19;4;-0.995569,-0.075401,-0.006177, 0.055843;;,
      20;4;-0.995365,-0.078238,-0.006357, 0.055559;;,
      21;4;-0.994945,-0.083749,-0.006705, 0.055005;;,
      22;4;-0.994376,-0.090640,-0.007141, 0.054310;;,
      23;4;-0.994124,-0.093516,-0.007322, 0.054019;;,
      24;4;-0.994787,-0.085728,-0.006830, 0.054806;;,
      25;4;-0.996428,-0.061904,-0.005324, 0.057188;;,
      26;4;-0.997675,-0.031890,-0.003424, 0.060136;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-11.443208,18.881002, 0.462009;;,
      1;3;-11.443205,18.881004, 0.462011;;,
      2;3;-11.443201,18.881004, 0.462002;;,
      3;3;-11.443205,18.881001, 0.461996;;,
      4;3;-11.443209,18.881001, 0.461989;;,
      5;3;-11.443207,18.881004, 0.461988;;,
      6;3;-11.443209,18.881004, 0.462006;;,
      7;3;-11.443209,18.881012, 0.462008;;,
      8;3;-11.443195,18.881008, 0.461996;;,
      9;3;-11.443208,18.881008, 0.462001;;,
      10;3;-11.443210,18.881001, 0.462018;;,
      11;3;-11.443208,18.881004, 0.462003;;,
      12;3;-11.443212,18.881002, 0.462000;;,
      13;3;-11.443195,18.881006, 0.462008;;,
      14;3;-11.443205,18.881006, 0.461999;;,
      15;3;-11.443204,18.881002, 0.461999;;,
      16;3;-11.443207,18.881004, 0.462001;;,
      17;3;-11.443200,18.880997, 0.462008;;,
      18;3;-11.443205,18.880997, 0.461996;;,
      19;3;-11.443202,18.881002, 0.461996;;,
      20;3;-11.443198,18.881008, 0.462000;;,
      21;3;-11.443203,18.880999, 0.462013;;,
      22;3;-11.443205,18.881004, 0.462002;;,
      23;3;-11.443206,18.881008, 0.462010;;,
      24;3;-11.443204,18.881001, 0.462002;;,
      25;3;-11.443207,18.881008, 0.462004;;,
      26;3;-11.443211,18.881004, 0.461997;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.975126, 0.220682,-0.000000, 0.020701;;,
      1;4;-0.974875, 0.221780, 0.000000, 0.020805;;,
      2;4;-0.976095, 0.216396, 0.000000, 0.020299;;,
      3;4;-0.978177, 0.206864, 0.000000, 0.019405;;,
      4;4;-0.981191, 0.192196, 0.000000, 0.018029;;,
      5;4;-0.983122, 0.182149,-0.000000, 0.017087;;,
      6;4;-0.982159, 0.187233, 0.000000, 0.017564;;,
      7;4;-0.980282, 0.196739,-0.000000, 0.018456;;,
      8;4;-0.978696, 0.204418, 0.000000, 0.019176;;,
      9;4;-0.977875, 0.208274,-0.000000, 0.019538;;,
      10;4;-0.977589, 0.209601, 0.000000, 0.019662;;,
      11;4;-0.977321, 0.210836, 0.000000, 0.019778;;,
      12;4;-0.976793, 0.213248, 0.000000, 0.020004;;,
      13;4;-0.976229, 0.215793, 0.000000, 0.020243;;,
      14;4;-0.976133, 0.216226, 0.000000, 0.020283;;,
      15;4;-0.976710, 0.213624, 0.000000, 0.020040;;,
      16;4;-0.977625, 0.209434, 0.000000, 0.019646;;,
      17;4;-0.978360, 0.206008, 0.000000, 0.019324;;,
      18;4;-0.978813, 0.203860, 0.000000, 0.019123;;,
      19;4;-0.979007, 0.202934,-0.000000, 0.019037;;,
      20;4;-0.979249, 0.201773,-0.000000, 0.018928;;,
      21;4;-0.979716, 0.199515,-0.000000, 0.018716;;,
      22;4;-0.980292, 0.196690, 0.000000, 0.018451;;,
      23;4;-0.980530, 0.195509,-0.000000, 0.018340;;,
      24;4;-0.979882, 0.198704, 0.000000, 0.018640;;,
      25;4;-0.977837, 0.208452,-0.000000, 0.019554;;,
      26;4;-0.975126, 0.220682, 0.000000, 0.020701;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000, 4.919996, 0.000002;;,
      1;3;-0.000001, 4.919995,-0.000011;;,
      2;3; 0.000009, 4.920003,-0.000007;;,
      3;3;-0.000007, 4.919997, 0.000003;;,
      4;3; 0.000000, 4.919991,-0.000002;;,
      5;3;-0.000002, 4.920011, 0.000002;;,
      6;3; 0.000002, 4.919996,-0.000002;;,
      7;3;-0.000004, 4.920000,-0.000006;;,
      8;3; 0.000005, 4.919994,-0.000004;;,
      9;3; 0.000004, 4.919998,-0.000008;;,
      10;3; 0.000009, 4.919998,-0.000003;;,
      11;3;-0.000006, 4.919996,-0.000007;;,
      12;3; 0.000002, 4.919999,-0.000002;;,
      13;3;-0.000003, 4.920001,-0.000006;;,
      14;3;-0.000002, 4.920002,-0.000006;;,
      15;3;-0.000001, 4.919998, 0.000002;;,
      16;3;-0.000001, 4.919998,-0.000012;;,
      17;3;-0.000005, 4.920002,-0.000004;;,
      18;3; 0.000001, 4.919999, 0.000007;;,
      19;3; 0.000000, 4.919999, 0.000003;;,
      20;3;-0.000001, 4.920002,-0.000007;;,
      21;3; 0.000002, 4.919995,-0.000003;;,
      22;3;-0.000004, 4.920001,-0.000001;;,
      23;3;-0.000001, 4.919997,-0.000000;;,
      24;3;-0.000003, 4.919996,-0.000002;;,
      25;3; 0.000001, 4.920001,-0.000004;;,
      26;3; 0.000001, 4.919998,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      1;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      2;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      3;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      4;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      5;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      6;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      7;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      8;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      9;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      10;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      11;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      12;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      13;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      14;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      15;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      16;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      17;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      18;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      19;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      20;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      21;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      22;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      23;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      24;4;-0.994229, 0.106815, 0.000000, 0.010020;;,
      25;4;-0.994228, 0.106815, 0.000000, 0.010020;;,
      26;4;-0.994228, 0.106815, 0.000000, 0.010020;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000003, 5.233001,-0.000012;;,
      1;3;-0.000005, 5.232994, 0.000000;;,
      2;3;-0.000003, 5.233004,-0.000005;;,
      3;3;-0.000008, 5.233003, 0.000002;;,
      4;3;-0.000008, 5.232998,-0.000001;;,
      5;3;-0.000006, 5.233005,-0.000002;;,
      6;3; 0.000000, 5.233001, 0.000000;;,
      7;3;-0.000002, 5.233003, 0.000007;;,
      8;3; 0.000003, 5.233007,-0.000004;;,
      9;3;-0.000003, 5.232996, 0.000001;;,
      10;3;-0.000004, 5.233002, 0.000005;;,
      11;3; 0.000004, 5.233004,-0.000005;;,
      12;3; 0.000003, 5.233002, 0.000001;;,
      13;3; 0.000009, 5.233002,-0.000001;;,
      14;3;-0.000006, 5.233002, 0.000006;;,
      15;3;-0.000001, 5.233001,-0.000005;;,
      16;3;-0.000002, 5.233004,-0.000010;;,
      17;3; 0.000003, 5.233003, 0.000007;;,
      18;3;-0.000003, 5.233004, 0.000012;;,
      19;3;-0.000002, 5.233003, 0.000007;;,
      20;3; 0.000001, 5.233005,-0.000003;;,
      21;3;-0.000005, 5.233001, 0.000008;;,
      22;3; 0.000000, 5.232999,-0.000006;;,
      23;3;-0.000001, 5.233003,-0.000002;;,
      24;3; 0.000001, 5.233001, 0.000002;;,
      25;3;-0.000000, 5.233006, 0.000000;;,
      26;3;-0.000001, 5.233003, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000010, 5.571002, 0.000017;;,
      1;3; 0.000008, 5.570994, 0.000000;;,
      2;3;-0.000005, 5.571001,-0.000007;;,
      3;3;-0.000004, 5.571000, 0.000009;;,
      4;3; 0.000005, 5.571001, 0.000001;;,
      5;3; 0.000002, 5.570996, 0.000003;;,
      6;3;-0.000001, 5.570997, 0.000006;;,
      7;3;-0.000004, 5.570999, 0.000004;;,
      8;3; 0.000003, 5.571003, 0.000010;;,
      9;3;-0.000002, 5.570997, 0.000008;;,
      10;3;-0.000005, 5.570999,-0.000001;;,
      11;3; 0.000003, 5.571001, 0.000006;;,
      12;3;-0.000005, 5.570996, 0.000011;;,
      13;3;-0.000002, 5.571003,-0.000000;;,
      14;3; 0.000003, 5.571002,-0.000002;;,
      15;3; 0.000006, 5.571000,-0.000008;;,
      16;3; 0.000000, 5.570993, 0.000002;;,
      17;3; 0.000002, 5.571000, 0.000000;;,
      18;3;-0.000003, 5.571001, 0.000002;;,
      19;3;-0.000001, 5.571005, 0.000004;;,
      20;3; 0.000003, 5.571005, 0.000002;;,
      21;3; 0.000002, 5.570997, 0.000007;;,
      22;3;-0.000002, 5.570997,-0.000006;;,
      23;3; 0.000001, 5.570998,-0.000009;;,
      24;3;-0.000002, 5.571005,-0.000003;;,
      25;3; 0.000000, 5.571001, 0.000000;;,
      26;3; 0.000000, 5.570992,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour1}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      1;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      2;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      3;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      4;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      5;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      6;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      7;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      8;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      9;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      10;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      11;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      12;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      13;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      14;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      15;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      16;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      17;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      18;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      19;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      20;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      21;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      22;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      23;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      24;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      25;4;-0.707107, 0.000000, 0.000000,-0.707107;;,
      26;4;-0.707107, 0.000000, 0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-1.467300, 5.012920,-18.471138;;,
      1;3;-1.467297, 5.012928,-18.471146;;,
      2;3;-1.467291, 5.012931,-18.471134;;,
      3;3;-1.467295, 5.012930,-18.471123;;,
      4;3;-1.467308, 5.012922,-18.471128;;,
      5;3;-1.467295, 5.012917,-18.471134;;,
      6;3;-1.467308, 5.012909,-18.471138;;,
      7;3;-1.467300, 5.012928,-18.471138;;,
      8;3;-1.467308, 5.012925,-18.471136;;,
      9;3;-1.467302, 5.012932,-18.471136;;,
      10;3;-1.467287, 5.012929,-18.471146;;,
      11;3;-1.467297, 5.012929,-18.471134;;,
      12;3;-1.467310, 5.012919,-18.471134;;,
      13;3;-1.467294, 5.012938,-18.471144;;,
      14;3;-1.467301, 5.012934,-18.471127;;,
      15;3;-1.467309, 5.012939,-18.471127;;,
      16;3;-1.467302, 5.012924,-18.471142;;,
      17;3;-1.467305, 5.012928,-18.471138;;,
      18;3;-1.467301, 5.012939,-18.471132;;,
      19;3;-1.467309, 5.012936,-18.471132;;,
      20;3;-1.467292, 5.012930,-18.471136;;,
      21;3;-1.467296, 5.012920,-18.471132;;,
      22;3;-1.467310, 5.012928,-18.471134;;,
      23;3;-1.467299, 5.012930,-18.471136;;,
      24;3;-1.467293, 5.012938,-18.471136;;,
      25;3;-1.467302, 5.012925,-18.471138;;,
      26;3;-1.467304, 5.012921,-18.471130;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      1;4;-0.048709, 0.199193,-0.641367,-0.739323;;,
      2;4;-0.048710, 0.199192,-0.641366,-0.739323;;,
      3;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      4;4;-0.048709, 0.199192,-0.641366,-0.739323;;,
      5;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      6;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      7;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      8;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      9;4;-0.048710, 0.199193,-0.641366,-0.739323;;,
      10;4;-0.048710, 0.199193,-0.641366,-0.739323;;,
      11;4;-0.048709, 0.199193,-0.641367,-0.739323;;,
      12;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      13;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      14;4;-0.048710, 0.199193,-0.641367,-0.739323;;,
      15;4;-0.048709, 0.199193,-0.641366,-0.739324;;,
      16;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      17;4;-0.048709, 0.199194,-0.641366,-0.739323;;,
      18;4;-0.048709, 0.199192,-0.641367,-0.739323;;,
      19;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      20;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      21;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      22;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      23;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      24;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      25;4;-0.048709, 0.199193,-0.641366,-0.739323;;,
      26;4;-0.048710, 0.199193,-0.641366,-0.739323;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 3.884901,-18.584898, 9.462717;;,
      1;3; 3.884906,-18.584908, 9.462711;;,
      2;3; 3.884909,-18.584900, 9.462708;;,
      3;3; 3.884902,-18.584908, 9.462708;;,
      4;3; 3.884900,-18.584896, 9.462719;;,
      5;3; 3.884897,-18.584900, 9.462706;;,
      6;3; 3.884896,-18.584896, 9.462709;;,
      7;3; 3.884899,-18.584898, 9.462708;;,
      8;3; 3.884894,-18.584898, 9.462715;;,
      9;3; 3.884900,-18.584902, 9.462708;;,
      10;3; 3.884891,-18.584904, 9.462698;;,
      11;3; 3.884898,-18.584900, 9.462715;;,
      12;3; 3.884900,-18.584896, 9.462709;;,
      13;3; 3.884908,-18.584898, 9.462717;;,
      14;3; 3.884892,-18.584902, 9.462700;;,
      15;3; 3.884905,-18.584892, 9.462708;;,
      16;3; 3.884911,-18.584908, 9.462702;;,
      17;3; 3.884907,-18.584900, 9.462706;;,
      18;3; 3.884895,-18.584898, 9.462713;;,
      19;3; 3.884909,-18.584896, 9.462711;;,
      20;3; 3.884905,-18.584906, 9.462702;;,
      21;3; 3.884911,-18.584892, 9.462708;;,
      22;3; 3.884901,-18.584896, 9.462711;;,
      23;3; 3.884893,-18.584890, 9.462694;;,
      24;3; 3.884892,-18.584896, 9.462704;;,
      25;3; 3.884905,-18.584894, 9.462706;;,
      26;3; 3.884904,-18.584900, 9.462709;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000006,11.039503, 0.000000;;,
      1;3;-0.000001,11.039495,-0.000008;;,
      2;3; 0.000006,11.039506,-0.000002;;,
      3;3;-0.000005,11.039494, 0.000000;;,
      4;3;-0.000004,11.039503, 0.000010;;,
      5;3; 0.000003,11.039503, 0.000004;;,
      6;3; 0.000002,11.039494,-0.000013;;,
      7;3;-0.000002,11.039492, 0.000006;;,
      8;3;-0.000001,11.039496, 0.000002;;,
      9;3;-0.000005,11.039495, 0.000010;;,
      10;3; 0.000004,11.039505, 0.000000;;,
      11;3;-0.000004,11.039495, 0.000011;;,
      12;3;-0.000002,11.039494,-0.000006;;,
      13;3; 0.000006,11.039495,-0.000010;;,
      14;3; 0.000002,11.039497, 0.000007;;,
      15;3; 0.000000,11.039499, 0.000000;;,
      16;3; 0.000008,11.039497, 0.000006;;,
      17;3;-0.000004,11.039499, 0.000006;;,
      18;3;-0.000006,11.039507,-0.000010;;,
      19;3;-0.000008,11.039495,-0.000026;;,
      20;3;-0.000002,11.039497, 0.000003;;,
      21;3; 0.000002,11.039507, 0.000009;;,
      22;3; 0.000000,11.039509,-0.000000;;,
      23;3;-0.000006,11.039499, 0.000004;;,
      24;3; 0.000004,11.039495, 0.000007;;,
      25;3; 0.000001,11.039501, 0.000011;;,
      26;3; 0.000004,11.039492,-0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      1;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      2;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      3;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      4;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      5;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      6;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      7;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      8;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      9;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      10;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      11;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      12;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      13;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      14;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      15;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      16;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      17;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      18;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      19;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      20;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      21;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      22;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      23;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      24;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      25;4;-0.741956, 0.550924, 0.103384, 0.367825;;,
      26;4;-0.741956, 0.550924, 0.103384, 0.367825;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-2.648897,22.195307,11.494608;;,
      1;3;-2.648896,22.195301,11.494602;;,
      2;3;-2.648896,22.195303,11.494598;;,
      3;3;-2.648907,22.195301,11.494592;;,
      4;3;-2.648899,22.195303,11.494609;;,
      5;3;-2.648909,22.195299,11.494592;;,
      6;3;-2.648902,22.195305,11.494596;;,
      7;3;-2.648902,22.195301,11.494599;;,
      8;3;-2.648901,22.195299,11.494602;;,
      9;3;-2.648901,22.195301,11.494599;;,
      10;3;-2.648910,22.195309,11.494596;;,
      11;3;-2.648901,22.195305,11.494607;;,
      12;3;-2.648899,22.195307,11.494596;;,
      13;3;-2.648899,22.195305,11.494608;;,
      14;3;-2.648901,22.195303,11.494587;;,
      15;3;-2.648897,22.195305,11.494600;;,
      16;3;-2.648903,22.195301,11.494595;;,
      17;3;-2.648895,22.195305,11.494595;;,
      18;3;-2.648905,22.195309,11.494612;;,
      19;3;-2.648897,22.195311,11.494598;;,
      20;3;-2.648893,22.195309,11.494593;;,
      21;3;-2.648895,22.195312,11.494596;;,
      22;3;-2.648893,22.195297,11.494600;;,
      23;3;-2.648907,22.195305,11.494583;;,
      24;3;-2.648905,22.195303,11.494589;;,
      25;3;-2.648894,22.195305,11.494595;;,
      26;3;-2.648897,22.195305,11.494602;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour5}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000002,11.039503, 0.000003;;,
      1;3; 0.000003,11.039501,-0.000006;;,
      2;3; 0.000000,11.039499, 0.000005;;,
      3;3; 0.000000,11.039503,-0.000007;;,
      4;3;-0.000001,11.039500, 0.000003;;,
      5;3; 0.000004,11.039487,-0.000003;;,
      6;3;-0.000000,11.039511, 0.000001;;,
      7;3; 0.000001,11.039498,-0.000001;;,
      8;3; 0.000001,11.039505, 0.000004;;,
      9;3;-0.000005,11.039511,-0.000001;;,
      10;3;-0.000003,11.039515,-0.000001;;,
      11;3; 0.000002,11.039491, 0.000002;;,
      12;3; 0.000000,11.039503, 0.000005;;,
      13;3;-0.000004,11.039503,-0.000005;;,
      14;3; 0.000005,11.039498, 0.000008;;,
      15;3; 0.000004,11.039498,-0.000009;;,
      16;3;-0.000000,11.039490, 0.000002;;,
      17;3;-0.000000,11.039492, 0.000002;;,
      18;3; 0.000004,11.039507, 0.000002;;,
      19;3; 0.000005,11.039505,-0.000010;;,
      20;3;-0.000001,11.039495, 0.000002;;,
      21;3; 0.000010,11.039494,-0.000005;;,
      22;3; 0.000003,11.039503,-0.000003;;,
      23;3;-0.000006,11.039507,-0.000002;;,
      24;3; 0.000004,11.039501,-0.000003;;,
      25;3;-0.000004,11.039495, 0.000001;;,
      26;3; 0.000000,11.039495, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.045904,-0.070532,-0.584161,-0.807263;;,
      1;4;-0.047767,-0.063277,-0.558421,-0.825760;;,
      2;4;-0.055875,-0.053731,-0.587684,-0.805369;;,
      3;4;-0.070963,-0.042362,-0.636697,-0.766673;;,
      4;4;-0.087225,-0.029931,-0.676851,-0.730321;;,
      5;4;-0.088389,-0.030589,-0.679998,-0.727224;;,
      6;4;-0.068161,-0.037234,-0.644524,-0.760629;;,
      7;4;-0.059579,-0.043134,-0.620166,-0.781015;;,
      8;4;-0.054694,-0.037974,-0.616452,-0.784572;;,
      9;4;-0.057290,-0.041695,-0.643086,-0.762509;;,
      10;4;-0.060872,-0.062512,-0.678020,-0.729846;;,
      11;4;-0.023293,-0.076018,-0.678951,-0.729866;;,
      12;4; 0.033948,-0.079496,-0.614183,-0.784415;;,
      13;4; 0.058730,-0.089638,-0.515721,-0.850028;;,
      14;4; 0.051742,-0.099166,-0.406844,-0.906624;;,
      15;4; 0.037967,-0.108266,-0.345136,-0.931514;;,
      16;4; 0.031267,-0.118468,-0.336494,-0.933681;;,
      17;4; 0.027473,-0.129357,-0.267336,-0.954486;;,
      18;4; 0.009798,-0.126631,-0.218204,-0.967603;;,
      19;4;-0.026459,-0.105356,-0.248839,-0.962434;;,
      20;4;-0.057183,-0.067968,-0.297981,-0.950430;;,
      21;4;-0.068654,-0.047732,-0.298105,-0.950864;;,
      22;4;-0.069340,-0.049444,-0.320972,-0.943252;;,
      23;4;-0.055648,-0.059169,-0.428987,-0.899651;;,
      24;4;-0.045892,-0.065836,-0.524298,-0.847745;;,
      25;4;-0.048086,-0.066781,-0.579158,-0.811051;;,
      26;4;-0.045957,-0.070520,-0.584090,-0.807313;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;19.899096,-7.885092,-3.429500;;,
      1;3;19.899096,-7.885108,-3.429503;;,
      2;3;19.899094,-7.885102,-3.429500;;,
      3;3;19.899094,-7.885101,-3.429502;;,
      4;3;19.899099,-7.885094,-3.429500;;,
      5;3;19.899097,-7.885099,-3.429497;;,
      6;3;19.899096,-7.885093,-3.429496;;,
      7;3;19.899096,-7.885105,-3.429498;;,
      8;3;19.899096,-7.885096,-3.429498;;,
      9;3;19.899096,-7.885106,-3.429496;;,
      10;3;19.899096,-7.885098,-3.429498;;,
      11;3;19.899094,-7.885094,-3.429502;;,
      12;3;19.899096,-7.885094,-3.429502;;,
      13;3;19.899096,-7.885098,-3.429502;;,
      14;3;19.899094,-7.885097,-3.429498;;,
      15;3;19.899094,-7.885097,-3.429500;;,
      16;3;19.899094,-7.885098,-3.429501;;,
      17;3;19.899097,-7.885102,-3.429497;;,
      18;3;19.899097,-7.885085,-3.429498;;,
      19;3;19.899097,-7.885091,-3.429499;;,
      20;3;19.899094,-7.885107,-3.429501;;,
      21;3;19.899097,-7.885101,-3.429500;;,
      22;3;19.899096,-7.885091,-3.429500;;,
      23;3;19.899097,-7.885097,-3.429499;;,
      24;3;19.899096,-7.885097,-3.429499;;,
      25;3;19.899096,-7.885101,-3.429502;;,
      26;3;19.899096,-7.885092,-3.429504;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.557991,-0.829101,-0.028019, 0.021273;;,
      1;4;-0.619727,-0.783779,-0.039058, 0.010150;;,
      2;4;-0.649222,-0.759219,-0.045798,-0.000090;;,
      3;4;-0.686014,-0.726270,-0.043157,-0.007384;;,
      4;4;-0.724931,-0.687711,-0.038261,-0.007992;;,
      5;4;-0.805841,-0.591001,-0.036502,-0.002453;;,
      6;4;-0.873522,-0.485158,-0.032993, 0.022179;;,
      7;4;-0.889327,-0.455225,-0.033379, 0.027454;;,
      8;4;-0.856335,-0.512420,-0.054621, 0.033639;;,
      9;4;-0.809004,-0.586274,-0.035585, 0.023021;;,
      10;4;-0.682242,-0.729279, 0.023732,-0.046203;;,
      11;4;-0.575423,-0.814468, 0.035074,-0.065568;;,
      12;4;-0.549538,-0.832072, 0.054055,-0.052367;;,
      13;4;-0.592031,-0.798400, 0.093372,-0.057778;;,
      14;4;-0.662939,-0.731913, 0.141549,-0.069130;;,
      15;4;-0.697112,-0.697853, 0.151413,-0.064112;;,
      16;4;-0.721828,-0.677075, 0.135632,-0.046251;;,
      17;4;-0.800511,-0.584698, 0.130195,-0.018931;;,
      18;4;-0.820902,-0.561769, 0.102432,-0.006631;;,
      19;4;-0.741094,-0.670249, 0.037706, 0.011125;;,
      20;4;-0.601577,-0.798388,-0.001947, 0.026029;;,
      21;4;-0.469252,-0.882907,-0.003859, 0.016219;;,
      22;4;-0.347916,-0.937394,-0.002446, 0.015540;;,
      23;4;-0.278371,-0.959936,-0.004629, 0.031805;;,
      24;4;-0.304818,-0.951463,-0.006734, 0.041932;;,
      25;4;-0.412754,-0.910175,-0.014092, 0.031884;;,
      26;4;-0.558106,-0.829023,-0.028022, 0.021269;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000003,38.282909, 0.000005;;,
      1;3; 0.000000,38.282921, 0.000001;;,
      2;3; 0.000001,38.282913,-0.000001;;,
      3;3;-0.000002,38.282917,-0.000003;;,
      4;3; 0.000002,38.282906, 0.000002;;,
      5;3; 0.000000,38.282925,-0.000000;;,
      6;3;-0.000001,38.282909, 0.000001;;,
      7;3; 0.000001,38.282913,-0.000007;;,
      8;3;-0.000002,38.282913, 0.000002;;,
      9;3; 0.000001,38.282917, 0.000003;;,
      10;3; 0.000001,38.282913, 0.000001;;,
      11;3; 0.000000,38.282917, 0.000001;;,
      12;3; 0.000000,38.282917,-0.000001;;,
      13;3; 0.000001,38.282913,-0.000003;;,
      14;3; 0.000001,38.282909, 0.000002;;,
      15;3; 0.000002,38.282913, 0.000001;;,
      16;3; 0.000000,38.282917,-0.000001;;,
      17;3; 0.000001,38.282913,-0.000001;;,
      18;3;-0.000002,38.282913, 0.000000;;,
      19;3; 0.000002,38.282917,-0.000000;;,
      20;3;-0.000003,38.282894,-0.000001;;,
      21;3;-0.000001,38.282909, 0.000002;;,
      22;3;-0.000005,38.282913,-0.000002;;,
      23;3; 0.000003,38.282917, 0.000001;;,
      24;3; 0.000000,38.282917, 0.000002;;,
      25;3;-0.000001,38.282913,-0.000002;;,
      26;3; 0.000001,38.282913, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.826189, 0.562410,-0.005763,-0.032771;;,
      1;4;-0.782076, 0.620334,-0.007768,-0.059010;;,
      2;4;-0.741883, 0.665971,-0.016058,-0.076381;;,
      3;4;-0.723908, 0.684477,-0.039100,-0.076944;;,
      4;4;-0.703326, 0.703793,-0.066278,-0.074928;;,
      5;4;-0.727224, 0.676652,-0.083377,-0.079602;;,
      6;4;-0.749099, 0.647884,-0.102485,-0.092704;;,
      7;4;-0.783166, 0.606916,-0.114912,-0.071411;;,
      8;4;-0.810372, 0.576325,-0.093456,-0.049112;;,
      9;4;-0.886291, 0.458002,-0.048537,-0.048657;;,
      10;4;-0.836274, 0.548291,-0.002779,-0.003811;;,
      11;4;-0.751849, 0.657595, 0.012259, 0.046270;;,
      12;4;-0.679798, 0.728621, 0.020597, 0.081003;;,
      13;4;-0.647309, 0.752603, 0.028077, 0.117438;;,
      14;4;-0.642664, 0.752523, 0.032685, 0.140082;;,
      15;4;-0.700789, 0.695371, 0.035089, 0.155313;;,
      16;4;-0.812754, 0.562844, 0.032596, 0.146885;;,
      17;4;-0.877536, 0.462933, 0.030070, 0.121324;;,
      18;4;-0.893338, 0.437386, 0.023078, 0.100535;;,
      19;4;-0.884160, 0.465015, 0.010203, 0.043810;;,
      20;4;-0.857496, 0.514394,-0.002126,-0.009738;;,
      21;4;-0.793482, 0.608577,-0.000917, 0.004388;;,
      22;4;-0.704209, 0.709989,-0.002003, 0.001154;;,
      23;4;-0.688896, 0.724778,-0.006257,-0.008919;;,
      24;4;-0.733557, 0.679307,-0.008338,-0.019152;;,
      25;4;-0.794533, 0.606732,-0.006734,-0.023410;;,
      26;4;-0.826213, 0.562375,-0.005758,-0.032761;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000002,32.683990,-0.000000;;,
      1;3; 0.000002,32.683990, 0.000001;;,
      2;3; 0.000002,32.683990, 0.000003;;,
      3;3;-0.000001,32.683983,-0.000001;;,
      4;3; 0.000003,32.683983,-0.000000;;,
      5;3; 0.000000,32.683994,-0.000000;;,
      6;3;-0.000002,32.683987, 0.000000;;,
      7;3; 0.000003,32.683990, 0.000002;;,
      8;3; 0.000001,32.683987, 0.000000;;,
      9;3;-0.000001,32.683987, 0.000002;;,
      10;3; 0.000002,32.683983, 0.000000;;,
      11;3;-0.000001,32.683983,-0.000004;;,
      12;3;-0.000000,32.683983, 0.000003;;,
      13;3; 0.000001,32.683990, 0.000001;;,
      14;3; 0.000002,32.683987, 0.000000;;,
      15;3;-0.000001,32.683987,-0.000002;;,
      16;3;-0.000001,32.683979,-0.000004;;,
      17;3;-0.000001,32.683983, 0.000006;;,
      18;3; 0.000002,32.683983, 0.000002;;,
      19;3; 0.000001,32.683990, 0.000000;;,
      20;3; 0.000001,32.683990, 0.000001;;,
      21;3;-0.000001,32.683990, 0.000006;;,
      22;3; 0.000001,32.683990, 0.000004;;,
      23;3; 0.000001,32.683990,-0.000001;;,
      24;3;-0.000001,32.683987, 0.000005;;,
      25;3;-0.000001,32.683983,-0.000003;;,
      26;3; 0.000001,32.683994, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.773111, 0.634209,-0.008808, 0.001380;;,
      1;4;-0.815744, 0.578337,-0.008641,-0.003601;;,
      2;4;-0.910626, 0.413232, 0.000000,-0.000000;;,
      3;4;-0.918657, 0.394973, 0.007688, 0.002459;;,
      4;4;-0.908661, 0.417131, 0.017181, 0.006483;;,
      5;4;-0.887938, 0.459295, 0.022567, 0.010216;;,
      6;4;-0.864548, 0.502080, 0.019259, 0.010113;;,
      7;4;-0.840544, 0.541733, 0.002997, 0.001803;;,
      8;4;-0.824521, 0.565813,-0.003899,-0.002449;;,
      9;4;-0.818802, 0.574075,-0.000240,-0.000326;;,
      10;4;-0.863180, 0.504855,-0.003803,-0.005269;;,
      11;4;-0.880055, 0.474795,-0.002014,-0.008326;;,
      12;4;-0.878828, 0.476890,-0.005000,-0.014604;;,
      13;4;-0.877508, 0.479077,-0.009084,-0.019547;;,
      14;4;-0.875414, 0.482465,-0.016921,-0.024311;;,
      15;4;-0.814955, 0.577891,-0.027115,-0.033995;;,
      16;4;-0.708008, 0.704658,-0.026933,-0.038163;;,
      17;4;-0.656870, 0.753020,-0.027430,-0.027021;;,
      18;4;-0.676394, 0.735669,-0.030749,-0.018346;;,
      19;4;-0.768510, 0.638021,-0.040639,-0.025908;;,
      20;4;-0.851791, 0.522915,-0.013966, 0.028582;;,
      21;4;-0.906570, 0.397095,-0.032291,-0.139296;;,
      22;4;-0.911820, 0.399918,-0.019831,-0.090864;;,
      23;4;-0.872302, 0.488679, 0.000500, 0.016785;;,
      24;4;-0.814357, 0.575988,-0.008246, 0.070656;;,
      25;4;-0.791756, 0.609718,-0.032451, 0.017722;;,
      26;4;-0.773111, 0.634209,-0.008808, 0.001381;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000000,27.100006,-0.000000;;,
      1;3; 0.000002,27.100006,-0.000001;;,
      2;3; 0.000001,27.100000,-0.000002;;,
      3;3;-0.000001,27.100002, 0.000000;;,
      4;3;-0.000000,27.100000,-0.000002;;,
      5;3;-0.000003,27.100000,-0.000000;;,
      6;3;-0.000001,27.099997, 0.000000;;,
      7;3;-0.000001,27.100002,-0.000002;;,
      8;3; 0.000000,27.099998,-0.000004;;,
      9;3;-0.000004,27.100004, 0.000001;;,
      10;3;-0.000002,27.100004, 0.000000;;,
      11;3;-0.000002,27.100004,-0.000000;;,
      12;3; 0.000001,27.100008,-0.000001;;,
      13;3; 0.000002,27.100008, 0.000001;;,
      14;3; 0.000002,27.100004, 0.000001;;,
      15;3;-0.000001,27.100002, 0.000000;;,
      16;3; 0.000000,27.100004,-0.000001;;,
      17;3;-0.000001,27.100004, 0.000001;;,
      18;3; 0.000001,27.100006, 0.000003;;,
      19;3;-0.000001,27.100006, 0.000001;;,
      20;3; 0.000000,27.100002, 0.000004;;,
      21;3;-0.000000,27.100002, 0.000000;;,
      22;3; 0.000002,27.100008,-0.000002;;,
      23;3;-0.000001,27.100006, 0.000001;;,
      24;3; 0.000000,27.100008, 0.000000;;,
      25;3;-0.000001,27.100004, 0.000001;;,
      26;3;-0.000001,27.100006,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000002,16.631996, 0.000000;;,
      1;3; 0.000000,16.632000,-0.000000;;,
      2;3; 0.000000,16.631994, 0.000000;;,
      3;3;-0.000001,16.632000, 0.000001;;,
      4;3; 0.000001,16.631992,-0.000000;;,
      5;3; 0.000001,16.631996,-0.000001;;,
      6;3;-0.000002,16.632000, 0.000001;;,
      7;3; 0.000001,16.631996, 0.000002;;,
      8;3; 0.000002,16.631996, 0.000004;;,
      9;3; 0.000002,16.631996, 0.000000;;,
      10;3; 0.000001,16.631996,-0.000000;;,
      11;3; 0.000001,16.631996,-0.000000;;,
      12;3;-0.000000,16.631996, 0.000000;;,
      13;3; 0.000003,16.631998, 0.000000;;,
      14;3;-0.000002,16.631994, 0.000000;;,
      15;3;-0.000000,16.631996,-0.000000;;,
      16;3; 0.000002,16.631996, 0.000000;;,
      17;3;-0.000001,16.631996, 0.000000;;,
      18;3; 0.000000,16.631996,-0.000000;;,
      19;3; 0.000002,16.631994,-0.000000;;,
      20;3; 0.000001,16.631996, 0.000002;;,
      21;3; 0.000001,16.631998, 0.000001;;,
      22;3; 0.000000,16.631992, 0.000002;;,
      23;3; 0.000001,16.631994, 0.000000;;,
      24;3;-0.000002,16.631998, 0.000000;;,
      25;3;-0.000000,16.631994,-0.000000;;,
      26;3; 0.000001,16.631992, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.015861, 0.136349,-0.410373,-0.901527;;,
      1;4; 0.001580, 0.153083,-0.341031,-0.927502;;,
      2;4; 0.024070, 0.163867,-0.283481,-0.944567;;,
      3;4; 0.037684, 0.165864,-0.219053,-0.960773;;,
      4;4; 0.048790, 0.152133,-0.169346,-0.972521;;,
      5;4; 0.082316, 0.126827,-0.200591,-0.967937;;,
      6;4; 0.104123, 0.098162,-0.264686,-0.953658;;,
      7;4; 0.109697, 0.070598,-0.300428,-0.944842;;,
      8;4; 0.109646, 0.062155,-0.322807,-0.938035;;,
      9;4; 0.107113, 0.067733,-0.362495,-0.923329;;,
      10;4; 0.099250, 0.088910,-0.422313,-0.896603;;,
      11;4; 0.078815, 0.121082,-0.496176,-0.856117;;,
      12;4; 0.064595, 0.140050,-0.574282,-0.803998;;,
      13;4; 0.078491, 0.135446,-0.614064,-0.773576;;,
      14;4; 0.093006, 0.119765,-0.640386,-0.752936;;,
      15;4; 0.107911, 0.106035,-0.657564,-0.738053;;,
      16;4; 0.106260, 0.099953,-0.646343,-0.748972;;,
      17;4; 0.086373, 0.085544,-0.621925,-0.773583;;,
      18;4; 0.059123, 0.064316,-0.593384,-0.800165;;,
      19;4; 0.025952, 0.058776,-0.576603,-0.814494;;,
      20;4; 0.000219, 0.057999,-0.603234,-0.795452;;,
      21;4; 0.007989, 0.055719,-0.654714,-0.753778;;,
      22;4; 0.002941, 0.061484,-0.674045,-0.736121;;,
      23;4;-0.018501, 0.079074,-0.647461,-0.757759;;,
      24;4;-0.032164, 0.103913,-0.579987,-0.807331;;,
      25;4;-0.028989, 0.115800,-0.496312,-0.859898;;,
      26;4;-0.012775, 0.134634,-0.410223,-0.901902;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 0.999998;;,
      1;3; 1.000000, 0.999999, 0.999997;;,
      2;3; 1.000000, 1.000000, 0.999997;;,
      3;3; 1.000000, 1.000000, 0.999997;;,
      4;3; 1.000000, 1.000000, 0.999997;;,
      5;3; 1.000000, 1.000000, 0.999997;;,
      6;3; 1.000000, 1.000000, 0.999997;;,
      7;3; 1.000000, 1.000000, 0.999997;;,
      8;3; 1.000000, 1.000000, 0.999997;;,
      9;3; 1.000000, 1.000000, 0.999997;;,
      10;3; 1.000000, 0.999999, 0.999997;;,
      11;3; 1.000000, 0.999999, 0.999998;;,
      12;3; 1.000000, 0.999999, 0.999999;;,
      13;3; 1.000000, 0.999998, 0.999999;;,
      14;3; 1.000000, 0.999998, 0.999999;;,
      15;3; 1.000000, 0.999998, 0.999999;;,
      16;3; 1.000000, 0.999998, 0.999999;;,
      17;3; 1.000000, 0.999998, 0.999999;;,
      18;3; 1.000000, 0.999998, 0.999999;;,
      19;3; 1.000000, 0.999998, 0.999998;;,
      20;3; 1.000000, 0.999998, 0.999999;;,
      21;3; 1.000000, 0.999998, 0.999999;;,
      22;3; 1.000000, 0.999998, 0.999999;;,
      23;3; 1.000000, 0.999998, 0.999999;;,
      24;3; 1.000000, 0.999998, 0.999999;;,
      25;3; 1.000000, 0.999999, 0.999998;;,
      26;3; 1.000000, 1.000000, 0.999998;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-19.899097,-7.884993,-3.429502;;,
      1;3;-19.899096,-7.885016,-3.429502;;,
      2;3;-19.899099,-7.884999,-3.429503;;,
      3;3;-19.899099,-7.884997,-3.429500;;,
      4;3;-19.899097,-7.884997,-3.429495;;,
      5;3;-19.899094,-7.885004,-3.429501;;,
      6;3;-19.899097,-7.884989,-3.429497;;,
      7;3;-19.899096,-7.885005,-3.429499;;,
      8;3;-19.899097,-7.884990,-3.429498;;,
      9;3;-19.899097,-7.885008,-3.429498;;,
      10;3;-19.899096,-7.884999,-3.429498;;,
      11;3;-19.899097,-7.884995,-3.429501;;,
      12;3;-19.899097,-7.884998,-3.429500;;,
      13;3;-19.899101,-7.884999,-3.429503;;,
      14;3;-19.899101,-7.884998,-3.429501;;,
      15;3;-19.899099,-7.885002,-3.429500;;,
      16;3;-19.899097,-7.885005,-3.429498;;,
      17;3;-19.899099,-7.884999,-3.429499;;,
      18;3;-19.899097,-7.884996,-3.429498;;,
      19;3;-19.899097,-7.884992,-3.429502;;,
      20;3;-19.899097,-7.885009,-3.429502;;,
      21;3;-19.899096,-7.884999,-3.429500;;,
      22;3;-19.899097,-7.884997,-3.429498;;,
      23;3;-19.899096,-7.884999,-3.429498;;,
      24;3;-19.899096,-7.884995,-3.429499;;,
      25;3;-19.899096,-7.884999,-3.429503;;,
      26;3;-19.899099,-7.884994,-3.429503;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.658387,-0.730147,-0.158235, 0.091515;;,
      1;4;-0.709008,-0.670066,-0.200810, 0.089415;;,
      2;4;-0.752577,-0.616526,-0.218621, 0.075691;;,
      3;4;-0.812995,-0.532848,-0.229515, 0.049346;;,
      4;4;-0.868966,-0.434101,-0.236113, 0.026550;;,
      5;4;-0.838353,-0.494766,-0.221311, 0.058249;;,
      6;4;-0.757052,-0.617979,-0.194507, 0.084509;;,
      7;4;-0.703910,-0.682649,-0.174878, 0.088982;;,
      8;4;-0.659978,-0.725466,-0.169911, 0.096223;;,
      9;4;-0.574341,-0.795808,-0.159090, 0.107293;;,
      10;4;-0.444250,-0.879463,-0.131732, 0.108786;;,
      11;4;-0.337576,-0.932414,-0.097644, 0.084338;;,
      12;4;-0.307069,-0.946172,-0.078466, 0.065657;;,
      13;4;-0.325680,-0.938751,-0.072845, 0.085860;;,
      14;4;-0.382982,-0.912063,-0.088490, 0.116769;;,
      15;4;-0.473248,-0.858195,-0.118929, 0.159354;;,
      16;4;-0.581300,-0.789818,-0.115022, 0.158266;;,
      17;4;-0.697020,-0.703304,-0.084793, 0.111073;;,
      18;4;-0.795406,-0.602894,-0.032851, 0.052623;;,
      19;4;-0.855881,-0.517165, 0.000466, 0.002880;;,
      20;4;-0.848276,-0.529228,-0.014967,-0.011027;;,
      21;4;-0.763438,-0.644131,-0.041886, 0.022446;;,
      22;4;-0.670817,-0.736522,-0.060001, 0.062762;;,
      23;4;-0.603067,-0.791174,-0.063942, 0.079156;;,
      24;4;-0.587730,-0.800189,-0.084226, 0.084719;;,
      25;4;-0.609001,-0.779397,-0.112409, 0.094991;;,
      26;4;-0.658931,-0.729188,-0.156808, 0.097497;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000002,38.282913,-0.000001;;,
      1;3;-0.000001,38.282913, 0.000000;;,
      2;3; 0.000001,38.282906, 0.000002;;,
      3;3;-0.000002,38.282917, 0.000001;;,
      4;3;-0.000002,38.282909, 0.000000;;,
      5;3; 0.000003,38.282902, 0.000002;;,
      6;3; 0.000004,38.282906,-0.000000;;,
      7;3; 0.000000,38.282909,-0.000001;;,
      8;3;-0.000001,38.282917,-0.000002;;,
      9;3;-0.000001,38.282902, 0.000002;;,
      10;3;-0.000003,38.282909,-0.000000;;,
      11;3; 0.000001,38.282917,-0.000001;;,
      12;3;-0.000000,38.282909, 0.000006;;,
      13;3;-0.000001,38.282906,-0.000000;;,
      14;3; 0.000002,38.282909, 0.000001;;,
      15;3;-0.000002,38.282913,-0.000004;;,
      16;3; 0.000000,38.282909,-0.000005;;,
      17;3; 0.000000,38.282913,-0.000003;;,
      18;3; 0.000001,38.282913,-0.000005;;,
      19;3; 0.000001,38.282906, 0.000002;;,
      20;3; 0.000000,38.282906,-0.000001;;,
      21;3;-0.000001,38.282913, 0.000002;;,
      22;3; 0.000002,38.282906,-0.000003;;,
      23;3;-0.000000,38.282909, 0.000001;;,
      24;3;-0.000001,38.282913, 0.000003;;,
      25;3;-0.000001,38.282913, 0.000001;;,
      26;3; 0.000003,38.282906,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.655224, 0.736014,-0.051553,-0.162197;;,
      1;4;-0.664826, 0.727845,-0.051616,-0.159950;;,
      2;4;-0.692515, 0.706035,-0.065592,-0.132803;;,
      3;4;-0.735999, 0.667968,-0.069411,-0.085477;;,
      4;4;-0.803745, 0.592618,-0.052438, 0.006950;;,
      5;4;-0.826685, 0.557667,-0.045316, 0.059546;;,
      6;4;-0.861681, 0.498237,-0.032314, 0.090669;;,
      7;4;-0.906903, 0.401203,-0.005972, 0.128556;;,
      8;4;-0.928745, 0.347151, 0.008573, 0.129789;;,
      9;4;-0.931683, 0.351398, 0.008516, 0.091730;;,
      10;4;-0.905762, 0.423246,-0.004166, 0.020977;;,
      11;4;-0.870833, 0.490492,-0.010413,-0.030959;;,
      12;4;-0.870834, 0.490249,-0.001805,-0.036067;;,
      13;4;-0.841164, 0.539420,-0.003656,-0.038154;;,
      14;4;-0.818981, 0.572589,-0.005945,-0.037094;;,
      15;4;-0.828513, 0.558989,-0.006818,-0.032420;;,
      16;4;-0.811953, 0.583449,-0.007817,-0.016110;;,
      17;4;-0.772837, 0.633862, 0.001872, 0.030628;;,
      18;4;-0.744323, 0.662548, 0.018804, 0.081608;;,
      19;4;-0.772041, 0.625781, 0.040962, 0.103311;;,
      20;4;-0.830932, 0.554360, 0.029687, 0.036816;;,
      21;4;-0.867463, 0.497458, 0.006577,-0.000024;;,
      22;4;-0.853811, 0.518935,-0.008762,-0.040458;;,
      23;4;-0.785197, 0.612413,-0.023019,-0.088806;;,
      24;4;-0.723084, 0.678586,-0.036948,-0.123715;;,
      25;4;-0.675054, 0.720281,-0.047237,-0.152535;;,
      26;4;-0.655668, 0.735043,-0.052723,-0.164412;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000003,32.684063, 0.000001;;,
      1;3;-0.000003,32.684059,-0.000000;;,
      2;3; 0.000000,32.684063, 0.000004;;,
      3;3;-0.000001,32.684063, 0.000004;;,
      4;3; 0.000000,32.684063, 0.000001;;,
      5;3; 0.000002,32.684067, 0.000002;;,
      6;3;-0.000000,32.684063,-0.000005;;,
      7;3;-0.000002,32.684063, 0.000000;;,
      8;3; 0.000002,32.684063, 0.000006;;,
      9;3; 0.000003,32.684059, 0.000006;;,
      10;3; 0.000001,32.684063,-0.000001;;,
      11;3;-0.000002,32.684063, 0.000004;;,
      12;3; 0.000000,32.684067, 0.000000;;,
      13;3; 0.000000,32.684063,-0.000003;;,
      14;3;-0.000002,32.684067,-0.000004;;,
      15;3;-0.000001,32.684059,-0.000002;;,
      16;3; 0.000002,32.684059, 0.000003;;,
      17;3; 0.000000,32.684063,-0.000005;;,
      18;3; 0.000003,32.684063, 0.000002;;,
      19;3; 0.000000,32.684067, 0.000001;;,
      20;3;-0.000001,32.684059, 0.000004;;,
      21;3; 0.000002,32.684063, 0.000004;;,
      22;3;-0.000000,32.684063, 0.000002;;,
      23;3;-0.000001,32.684055, 0.000001;;,
      24;3; 0.000002,32.684067,-0.000004;;,
      25;3;-0.000001,32.684063, 0.000003;;,
      26;3; 0.000001,32.684063,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.853816, 0.520575,-0.000011, 0.000019;;,
      1;4;-0.836008, 0.548717,-0.000011, 0.000019;;,
      2;4;-0.814240, 0.580529,-0.000012, 0.000018;;,
      3;4;-0.778201, 0.628013, 0.001097, 0.000977;;,
      4;4;-0.756826, 0.653614, 0.001549, 0.000652;;,
      5;4;-0.797489, 0.601538,-0.035438,-0.030133;;,
      6;4;-0.825504, 0.563983,-0.014024,-0.016452;;,
      7;4;-0.843378, 0.530770, 0.074789, 0.037448;;,
      8;4;-0.834461, 0.537391, 0.111310, 0.049962;;,
      9;4;-0.810715, 0.564070, 0.150660, 0.043211;;,
      10;4;-0.768116, 0.610543, 0.191691, 0.022124;;,
      11;4;-0.723086, 0.658119, 0.209816, 0.002047;;,
      12;4;-0.723284, 0.667420, 0.176063,-0.020301;;,
      13;4;-0.768895, 0.634663, 0.074186,-0.022352;;,
      14;4;-0.817086, 0.576186, 0.011257,-0.015881;;,
      15;4;-0.867912, 0.496591,-0.007052,-0.008806;;,
      16;4;-0.911035, 0.412264,-0.006140,-0.003937;;,
      17;4;-0.938628, 0.344909,-0.003762,-0.000663;;,
      18;4;-0.941869, 0.335980,-0.000579,-0.000400;;,
      19;4;-0.932521, 0.361115,-0.000061, 0.000314;;,
      20;4;-0.881198, 0.472746,-0.000191, 0.000530;;,
      21;4;-0.847701, 0.530474,-0.000222, 0.000509;;,
      22;4;-0.862007, 0.506897,-0.000159, 0.000432;;,
      23;4;-0.879116, 0.476608,-0.000076, 0.000311;;,
      24;4;-0.873534, 0.486763,-0.000006, 0.000179;;,
      25;4;-0.867945, 0.496660, 0.000024, 0.000123;;,
      26;4;-0.853816, 0.520575, 0.000064, 0.000052;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000002,27.100008, 0.000000;;,
      1;3; 0.000003,27.100008,-0.000000;;,
      2;3; 0.000001,27.100008,-0.000001;;,
      3;3; 0.000002,27.100008,-0.000000;;,
      4;3;-0.000002,27.100012,-0.000001;;,
      5;3; 0.000001,27.100006, 0.000002;;,
      6;3; 0.000000,27.100012, 0.000003;;,
      7;3;-0.000002,27.100012, 0.000010;;,
      8;3;-0.000000,27.100014,-0.000004;;,
      9;3; 0.000000,27.100008, 0.000000;;,
      10;3;-0.000001,27.100010, 0.000003;;,
      11;3; 0.000001,27.100012,-0.000000;;,
      12;3; 0.000001,27.100010, 0.000001;;,
      13;3;-0.000000,27.100016, 0.000002;;,
      14;3; 0.000001,27.100008,-0.000000;;,
      15;3;-0.000001,27.100010, 0.000002;;,
      16;3;-0.000001,27.100012,-0.000000;;,
      17;3; 0.000001,27.100012,-0.000001;;,
      18;3; 0.000001,27.100008,-0.000003;;,
      19;3; 0.000000,27.100008, 0.000000;;,
      20;3; 0.000001,27.100008,-0.000005;;,
      21;3; 0.000001,27.100012,-0.000002;;,
      22;3;-0.000000,27.100014, 0.000001;;,
      23;3;-0.000001,27.100010,-0.000001;;,
      24;3;-0.000001,27.100012, 0.000000;;,
      25;3; 0.000000,27.100008, 0.000000;;,
      26;3; 0.000000,27.100008, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToe_End}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      26;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000000,16.631945,-0.000000;;,
      1;3; 0.000003,16.631943,-0.000001;;,
      2;3; 0.000000,16.631943, 0.000000;;,
      3;3; 0.000001,16.631943,-0.000001;;,
      4;3;-0.000001,16.631945, 0.000000;;,
      5;3;-0.000000,16.631945, 0.000001;;,
      6;3; 0.000000,16.631945, 0.000000;;,
      7;3;-0.000003,16.631945, 0.000002;;,
      8;3; 0.000000,16.631947, 0.000003;;,
      9;3; 0.000005,16.631945, 0.000001;;,
      10;3; 0.000001,16.631943,-0.000002;;,
      11;3;-0.000003,16.631945, 0.000002;;,
      12;3;-0.000002,16.631945,-0.000001;;,
      13;3;-0.000001,16.631945,-0.000001;;,
      14;3;-0.000001,16.631945, 0.000000;;,
      15;3; 0.000001,16.631947,-0.000000;;,
      16;3;-0.000001,16.631945, 0.000001;;,
      17;3;-0.000000,16.631943,-0.000000;;,
      18;3; 0.000000,16.631937,-0.000000;;,
      19;3; 0.000001,16.631943,-0.000001;;,
      20;3;-0.000001,16.631947, 0.000000;;,
      21;3;-0.000001,16.631939, 0.000000;;,
      22;3;-0.000002,16.631939,-0.000000;;,
      23;3; 0.000001,16.631941, 0.000000;;,
      24;3; 0.000001,16.631948, 0.000000;;,
      25;3; 0.000001,16.631947,-0.000000;;,
      26;3; 0.000003,16.631947, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth1}
    AnimationKey { // Rotation
      0;
      27;
      0;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      1;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      2;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      3;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      4;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      5;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      6;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      7;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      8;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      9;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      10;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      11;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      12;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      13;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      14;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      15;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      16;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      17;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      18;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      19;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      20;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      21;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      22;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      23;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      24;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      25;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      26;4; 0.000000, 1.000000,-0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000000,-19.940702,22.170200;;,
      1;3;-0.000000,-19.940716,22.170195;;,
      2;3;-0.000000,-19.940706,22.170202;;,
      3;3;-0.000000,-19.940702,22.170198;;,
      4;3; 0.000000,-19.940708,22.170206;;,
      5;3; 0.000001,-19.940706,22.170200;;,
      6;3; 0.000001,-19.940695,22.170204;;,
      7;3; 0.000001,-19.940708,22.170200;;,
      8;3;-0.000000,-19.940697,22.170202;;,
      9;3;-0.000000,-19.940714,22.170202;;,
      10;3;-0.000001,-19.940710,22.170202;;,
      11;3;-0.000000,-19.940701,22.170198;;,
      12;3;-0.000000,-19.940702,22.170200;;,
      13;3; 0.000000,-19.940704,22.170198;;,
      14;3;-0.000001,-19.940702,22.170202;;,
      15;3; 0.000000,-19.940704,22.170200;;,
      16;3; 0.000000,-19.940706,22.170197;;,
      17;3;-0.000000,-19.940708,22.170204;;,
      18;3; 0.000000,-19.940701,22.170204;;,
      19;3; 0.000000,-19.940699,22.170198;;,
      20;3; 0.000000,-19.940710,22.170197;;,
      21;3; 0.000001,-19.940706,22.170200;;,
      22;3;-0.000000,-19.940704,22.170200;;,
      23;3;-0.000000,-19.940702,22.170202;;,
      24;3; 0.000000,-19.940701,22.170200;;,
      25;3; 0.000000,-19.940704,22.170200;;,
      26;3; 0.000000,-19.940702,22.170198;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth2}
    AnimationKey { // Rotation
      0;
      27;
      0;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      1;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      2;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      3;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      4;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      5;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      6;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      7;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      8;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      9;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      10;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      11;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      12;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      13;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      14;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      15;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      16;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      17;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      18;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      19;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      20;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      21;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      22;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      23;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      24;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      25;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      26;4; 0.000000, 0.000000, 1.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,10.763299,-0.000001;;,
      1;3;-0.000000,10.763299,-0.000001;;,
      2;3;-0.000000,10.763299,-0.000000;;,
      3;3; 0.000000,10.763297, 0.000001;;,
      4;3;-0.000000,10.763298, 0.000002;;,
      5;3; 0.000000,10.763297, 0.000003;;,
      6;3; 0.000001,10.763295,-0.000001;;,
      7;3; 0.000001,10.763293, 0.000000;;,
      8;3; 0.000000,10.763295, 0.000001;;,
      9;3; 0.000000,10.763300, 0.000002;;,
      10;3; 0.000000,10.763294, 0.000001;;,
      11;3; 0.000000,10.763294,-0.000003;;,
      12;3;-0.000000,10.763304, 0.000000;;,
      13;3;-0.000000,10.763297,-0.000000;;,
      14;3;-0.000000,10.763295, 0.000001;;,
      15;3; 0.000000,10.763297,-0.000000;;,
      16;3;-0.000000,10.763294, 0.000001;;,
      17;3; 0.000001,10.763295, 0.000000;;,
      18;3; 0.000001,10.763297,-0.000000;;,
      19;3; 0.000000,10.763296,-0.000001;;,
      20;3;-0.000000,10.763299,-0.000001;;,
      21;3; 0.000000,10.763297, 0.000000;;,
      22;3; 0.000000,10.763296,-0.000002;;,
      23;3;-0.000000,10.763294, 0.000001;;,
      24;3; 0.000000,10.763301,-0.000001;;,
      25;3;-0.000000,10.763299,-0.000001;;,
      26;3; 0.000000,10.763296,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      1;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      2;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      3;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      4;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      5;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      6;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      7;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      8;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      9;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      10;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      11;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      12;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      13;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      14;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      15;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      16;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      17;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      18;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      19;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      20;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      21;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      22;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      23;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      24;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      25;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      26;4;-0.000000,-0.000000, 1.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,13.749510, 0.000000;;,
      1;3; 0.000000,13.749504,-0.000000;;,
      2;3; 0.000000,13.749512,-0.000001;;,
      3;3;-0.000000,13.749508, 0.000001;;,
      4;3;-0.000000,13.749511,-0.000001;;,
      5;3;-0.000000,13.749506, 0.000001;;,
      6;3; 0.000000,13.749505,-0.000002;;,
      7;3; 0.000000,13.749503,-0.000001;;,
      8;3;-0.000001,13.749507,-0.000000;;,
      9;3; 0.000000,13.749509,-0.000002;;,
      10;3; 0.000000,13.749507,-0.000002;;,
      11;3;-0.000000,13.749508, 0.000000;;,
      12;3;-0.000000,13.749507,-0.000001;;,
      13;3; 0.000001,13.749507, 0.000001;;,
      14;3; 0.000000,13.749514, 0.000001;;,
      15;3; 0.000000,13.749508,-0.000000;;,
      16;3; 0.000000,13.749509, 0.000001;;,
      17;3;-0.000001,13.749509,-0.000001;;,
      18;3;-0.000000,13.749511,-0.000000;;,
      19;3; 0.000000,13.749508, 0.000000;;,
      20;3;-0.000000,13.749504,-0.000002;;,
      21;3;-0.000000,13.749506,-0.000002;;,
      22;3;-0.000000,13.749513, 0.000001;;,
      23;3; 0.000000,13.749504, 0.000000;;,
      24;3;-0.000000,13.749508, 0.000001;;,
      25;3;-0.000000,13.749511,-0.000000;;,
      26;3; 0.000000,13.749509,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000000,14.182600,-0.000000;;,
      1;3; 0.000000,14.182599, 0.000001;;,
      2;3; 0.000000,14.182598,-0.000001;;,
      3;3;-0.000000,14.182600,-0.000000;;,
      4;3;-0.000000,14.182604, 0.000000;;,
      5;3;-0.000000,14.182601,-0.000001;;,
      6;3;-0.000000,14.182599,-0.000001;;,
      7;3;-0.000000,14.182596,-0.000001;;,
      8;3;-0.000000,14.182593, 0.000002;;,
      9;3;-0.000000,14.182602,-0.000002;;,
      10;3; 0.000000,14.182597, 0.000001;;,
      11;3; 0.000000,14.182599,-0.000001;;,
      12;3;-0.000000,14.182599, 0.000000;;,
      13;3;-0.000000,14.182598, 0.000000;;,
      14;3;-0.000000,14.182597,-0.000000;;,
      15;3;-0.000001,14.182596, 0.000000;;,
      16;3;-0.000000,14.182600,-0.000001;;,
      17;3; 0.000000,14.182599,-0.000000;;,
      18;3; 0.000000,14.182600, 0.000000;;,
      19;3;-0.000000,14.182604, 0.000000;;,
      20;3; 0.000000,14.182597,-0.000000;;,
      21;3;-0.000000,14.182598, 0.000000;;,
      22;3;-0.000000,14.182594,-0.000001;;,
      23;3; 0.000000,14.182595, 0.000001;;,
      24;3;-0.000000,14.182600,-0.000001;;,
      25;3; 0.000000,14.182599,-0.000001;;,
      26;3; 0.000000,14.182598, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      27;
      0;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      1;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      2;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      3;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      4;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      5;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      6;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      7;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      8;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      9;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      10;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      11;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      12;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      13;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      14;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      15;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      16;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      17;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      18;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      19;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      20;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      21;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      22;4; 0.000000, 1.000000,-0.000002, 0.000000;;,
      23;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      24;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      25;4;-0.000000, 1.000000,-0.000002, 0.000000;;,
      26;4;-0.000000, 1.000000,-0.000002, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,-5.419199,-29.327002;;,
      1;3; 0.000000,-5.419215,-29.327002;;,
      2;3; 0.000000,-5.419203,-29.327002;;,
      3;3;-0.000000,-5.419198,-29.327003;;,
      4;3; 0.000001,-5.419193,-29.327000;;,
      5;3; 0.000002,-5.419204,-29.326996;;,
      6;3; 0.000000,-5.419184,-29.327002;;,
      7;3; 0.000001,-5.419206,-29.326996;;,
      8;3;-0.000001,-5.419186,-29.326998;;,
      9;3; 0.000000,-5.419210,-29.326996;;,
      10;3; 0.000000,-5.419201,-29.326998;;,
      11;3;-0.000000,-5.419192,-29.327002;;,
      12;3; 0.000000,-5.419196,-29.327003;;,
      13;3;-0.000000,-5.419200,-29.327003;;,
      14;3;-0.000001,-5.419196,-29.327002;;,
      15;3; 0.000000,-5.419192,-29.326998;;,
      16;3; 0.000000,-5.419201,-29.326996;;,
      17;3; 0.000000,-5.419200,-29.327002;;,
      18;3;-0.000000,-5.419188,-29.326996;;,
      19;3; 0.000000,-5.419194,-29.326996;;,
      20;3; 0.000000,-5.419209,-29.327000;;,
      21;3; 0.000001,-5.419202,-29.326998;;,
      22;3; 0.000000,-5.419193,-29.326996;;,
      23;3;-0.000000,-5.419205,-29.326994;;,
      24;3; 0.000000,-5.419198,-29.327000;;,
      25;3; 0.000000,-5.419203,-29.327003;;,
      26;3; 0.000000,-5.419197,-29.327002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth2}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      4;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      13;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      14;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      16;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      18;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000001;;,
      24;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      25;4;-1.000000,-0.000000,-0.000000,-0.000001;;,
      26;4;-1.000000,-0.000000,-0.000000,-0.000001;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,15.308604,-0.000000;;,
      1;3;-0.000000,15.308611,-0.000002;;,
      2;3; 0.000000,15.308605, 0.000002;;,
      3;3; 0.000001,15.308595,-0.000001;;,
      4;3;-0.000000,15.308595, 0.000001;;,
      5;3;-0.000000,15.308609,-0.000004;;,
      6;3;-0.000000,15.308602, 0.000002;;,
      7;3;-0.000000,15.308599, 0.000000;;,
      8;3;-0.000001,15.308597, 0.000000;;,
      9;3;-0.000000,15.308600,-0.000001;;,
      10;3;-0.000001,15.308603,-0.000004;;,
      11;3;-0.000000,15.308597, 0.000005;;,
      12;3; 0.000000,15.308600,-0.000004;;,
      13;3;-0.000000,15.308601, 0.000001;;,
      14;3;-0.000000,15.308599, 0.000002;;,
      15;3;-0.000000,15.308606, 0.000002;;,
      16;3; 0.000000,15.308597, 0.000003;;,
      17;3; 0.000000,15.308588,-0.000001;;,
      18;3;-0.000001,15.308598,-0.000003;;,
      19;3;-0.000000,15.308607, 0.000001;;,
      20;3;-0.000001,15.308598, 0.000001;;,
      21;3;-0.000000,15.308609,-0.000004;;,
      22;3;-0.000000,15.308600,-0.000002;;,
      23;3; 0.000000,15.308593,-0.000001;;,
      24;3; 0.000000,15.308601, 0.000003;;,
      25;3;-0.000000,15.308601, 0.000010;;,
      26;3;-0.000000,15.308611,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth3}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3;-0.000000,17.777102,-0.000001;;,
      1;3; 0.000000,17.777098,-0.000002;;,
      2;3;-0.000001,17.777102,-0.000000;;,
      3;3; 0.000000,17.777103,-0.000005;;,
      4;3; 0.000001,17.777094,-0.000005;;,
      5;3;-0.000002,17.777100,-0.000003;;,
      6;3;-0.000001,17.777107, 0.000003;;,
      7;3;-0.000000,17.777102,-0.000003;;,
      8;3;-0.000001,17.777094,-0.000006;;,
      9;3; 0.000000,17.777100,-0.000000;;,
      10;3;-0.000001,17.777102, 0.000004;;,
      11;3; 0.000001,17.777094,-0.000001;;,
      12;3;-0.000000,17.777105, 0.000001;;,
      13;3;-0.000001,17.777100, 0.000003;;,
      14;3; 0.000001,17.777098, 0.000004;;,
      15;3;-0.000000,17.777096,-0.000006;;,
      16;3; 0.000000,17.777094,-0.000001;;,
      17;3; 0.000000,17.777094, 0.000003;;,
      18;3;-0.000000,17.777107, 0.000003;;,
      19;3; 0.000000,17.777103, 0.000003;;,
      20;3;-0.000000,17.777096, 0.000002;;,
      21;3; 0.000001,17.777100, 0.000002;;,
      22;3; 0.000000,17.777105,-0.000003;;,
      23;3; 0.000000,17.777102, 0.000000;;,
      24;3; 0.000000,17.777102, 0.000008;;,
      25;3; 0.000000,17.777098,-0.000001;;,
      26;3; 0.000001,17.777096,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth4}
    AnimationKey { // Rotation
      0;
      27;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      26;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      27;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000000, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000000, 1.000000;;,
      25;3; 1.000000, 1.000000, 1.000000;;,
      26;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      27;
      0;3; 0.000000,15.545406,-0.000001;;,
      1;3; 0.000000,15.545404,-0.000001;;,
      2;3;-0.000001,15.545405,-0.000001;;,
      3;3; 0.000001,15.545400,-0.000002;;,
      4;3; 0.000001,15.545400, 0.000007;;,
      5;3;-0.000000,15.545405, 0.000003;;,
      6;3;-0.000001,15.545404, 0.000004;;,
      7;3; 0.000000,15.545404,-0.000002;;,
      8;3;-0.000001,15.545400,-0.000005;;,
      9;3;-0.000001,15.545403, 0.000003;;,
      10;3;-0.000002,15.545408, 0.000004;;,
      11;3;-0.000001,15.545403,-0.000001;;,
      12;3;-0.000001,15.545406, 0.000006;;,
      13;3; 0.000000,15.545403, 0.000002;;,
      14;3; 0.000001,15.545403, 0.000002;;,
      15;3; 0.000001,15.545407, 0.000002;;,
      16;3;-0.000000,15.545404, 0.000000;;,
      17;3; 0.000000,15.545402, 0.000005;;,
      18;3;-0.000000,15.545402, 0.000004;;,
      19;3; 0.000000,15.545403,-0.000003;;,
      20;3;-0.000000,15.545403, 0.000001;;,
      21;3; 0.000001,15.545403, 0.000005;;,
      22;3; 0.000000,15.545403,-0.000004;;,
      23;3;-0.000000,15.545403,-0.000004;;,
      24;3;-0.000000,15.545404, 0.000009;;,
      25;3;-0.000000,15.545400,-0.000002;;,
      26;3; 0.000000,15.545400, 0.000002;;;
    }
  }
} // End of AnimationSet Global
