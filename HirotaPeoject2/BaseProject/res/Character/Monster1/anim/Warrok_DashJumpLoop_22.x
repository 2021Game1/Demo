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
       0.100000, 0.000000, 0.000000, 0.000000,
       0.000000,-0.000000, 0.100000, 0.000000,
       0.000000,-0.100000,-0.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
    }
    Frame Armature_mixamorig_Hips {
      FrameTransformMatrix {
         0.998980,-0.007149,-0.044586, 0.000000,
         0.045147, 0.139363, 0.989212, 0.000000,
        -0.000858,-0.990215, 0.139544, 0.000000,
         3.657216,157.318695,-11.897692, 1.000000;;
      }
      Frame Armature_mixamorig_BackCloth1 {
        FrameTransformMatrix {
          -0.000002,-1.000000, 0.000000, 0.000000,
           1.000000,-0.000002, 0.000000, 0.000000,
          -0.000000,-0.000000, 1.000000, 0.000000,
          -0.000000,-5.419194,-29.327021, 1.000000;;
        }
        Frame Armature_mixamorig_BackCloth2 {
          FrameTransformMatrix {
             1.000000,-0.000000,-0.000000, 0.000000,
            -0.000000, 1.000000,-0.000000, 0.000000,
            -0.000000,-0.000000, 1.000000, 0.000000,
            15.308603, 0.000001, 0.000004, 1.000000;;
          }
          Frame Armature_mixamorig_BackCloth3 {
            FrameTransformMatrix {
               1.000000,-0.000000,-0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
              -0.000000,-0.000000, 1.000000, 0.000000,
              17.777098, 0.000002,-0.000012, 1.000000;;
            }
            Frame Armature_mixamorig_BackCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                -0.000000, 1.000000,-0.000000, 0.000000,
                -0.000000,-0.000000, 1.000000, 0.000000,
                15.545403, 0.000002,-0.000006, 1.000000;;
              }
            } // End of Armature_mixamorig_BackCloth4
          } // End of Armature_mixamorig_BackCloth3
        } // End of Armature_mixamorig_BackCloth2
      } // End of Armature_mixamorig_BackCloth1
      Frame Armature_mixamorig_FrontCloth1 {
        FrameTransformMatrix {
           1.000000,-0.000002,-0.000000, 0.000000,
          -0.000002,-1.000000,-0.000000, 0.000000,
          -0.000000,-0.000000,-1.000000, 0.000000,
          -0.000000,-19.940702,22.170185, 1.000000;;
        }
        Frame Armature_mixamorig_FrontCloth2 {
          FrameTransformMatrix {
            -1.000000, 0.000000, 0.000000, 0.000000,
            -0.000000, 1.000000, 0.000000, 0.000000,
            -0.000000, 0.000000,-1.000000, 0.000000,
             0.000000,10.763300, 0.000021, 1.000000;;
          }
          Frame Armature_mixamorig_FrontCloth3 {
            FrameTransformMatrix {
              -1.000000, 0.000000,-0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
               0.000000,-0.000000,-1.000000, 0.000000,
              -0.000000,13.749512,-0.000019, 1.000000;;
            }
            Frame Armature_mixamorig_FrontCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                -0.000000, 1.000000,-0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                 0.000000,14.182601, 0.000007, 1.000000;;
              }
            } // End of Armature_mixamorig_FrontCloth4
          } // End of Armature_mixamorig_FrontCloth3
        } // End of Armature_mixamorig_FrontCloth2
      } // End of Armature_mixamorig_FrontCloth1
      Frame Armature_mixamorig_LeftUpLeg {
        FrameTransformMatrix {
          -0.960839, 0.069892, 0.268148, 0.000000,
           0.276143, 0.160871, 0.947558, 0.000000,
           0.023090, 0.984498,-0.173871, 0.000000,
          19.899097,-7.885098,-3.429500, 1.000000;;
        }
        Frame Armature_mixamorig_LeftLeg {
          FrameTransformMatrix {
             0.992611,-0.095514, 0.074832, 0.000000,
            -0.020211,-0.738259,-0.674214, 0.000000,
             0.119642, 0.667720,-0.734735, 0.000000,
             0.000002,38.282906,-0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_LeftFoot {
            FrameTransformMatrix {
               0.999397, 0.034680,-0.001568, 0.000000,
              -0.028146, 0.835899, 0.548162, 0.000000,
               0.020320,-0.547787, 0.836371, 0.000000,
              -0.000001,32.683994,-0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_LeftToeBase {
              FrameTransformMatrix {
                 0.999346,-0.008428, 0.035170, 0.000000,
                -0.025648, 0.520450, 0.853507, 0.000000,
                -0.025498,-0.853851, 0.519893, 0.000000,
                 0.000001,27.100000,-0.000008, 1.000000;;
              }
              Frame Armature_mixamorig_LeftToe_End {
                FrameTransformMatrix {
                   1.000000, 0.000000, 0.000000, 0.000000,
                  -0.000000, 1.000000, 0.000000, 0.000000,
                   0.000000,-0.000000, 1.000000, 0.000000,
                   0.000001,16.632002, 0.000006, 1.000000;;
                }
              } // End of Armature_mixamorig_LeftToe_End
            } // End of Armature_mixamorig_LeftToeBase
          } // End of Armature_mixamorig_LeftFoot
        } // End of Armature_mixamorig_LeftLeg
      } // End of Armature_mixamorig_LeftUpLeg
      Frame Armature_mixamorig_RightUpLeg {
        FrameTransformMatrix {
          -0.933843,-0.004278,-0.357657, 0.000000,
          -0.337938, 0.338181, 0.878309, 0.000000,
           0.117195, 0.941071,-0.317255, 0.000000,
          -19.899099,-7.884995,-3.429521, 1.000000;;
        }
        Frame Armature_mixamorig_RightLeg {
          FrameTransformMatrix {
             0.994679,-0.021456,-0.100759, 0.000000,
            -0.079610,-0.780851,-0.619624, 0.000000,
            -0.065383, 0.624349,-0.778405, 0.000000,
            -0.000005,38.282909,-0.000010, 1.000000;;
          }
          Frame Armature_mixamorig_RightFoot {
            FrameTransformMatrix {
               0.998187,-0.058314,-0.014929, 0.000000,
               0.054033, 0.758717, 0.649176, 0.000000,
              -0.026529,-0.648805, 0.760492, 0.000000,
              -0.000005,32.684067, 0.000014, 1.000000;;
            }
            Frame Armature_mixamorig_RightToeBase {
              FrameTransformMatrix {
                 0.997266, 0.012490,-0.072829, 0.000000,
                 0.050128, 0.609770, 0.790992, 0.000000,
                 0.054289,-0.792480, 0.607477, 0.000000,
                 0.000004,27.100008, 0.000014, 1.000000;;
              }
              Frame Armature_mixamorig_RightToe_End {
                FrameTransformMatrix {
                   1.000000,-0.000000,-0.000000, 0.000000,
                   0.000000, 1.000000, 0.000000, 0.000000,
                  -0.000000,-0.000000, 1.000000, 0.000000,
                   0.000002,16.631947, 0.000003, 1.000000;;
                }
              } // End of Armature_mixamorig_RightToe_End
            } // End of Armature_mixamorig_RightToeBase
          } // End of Armature_mixamorig_RightFoot
        } // End of Armature_mixamorig_RightLeg
      } // End of Armature_mixamorig_RightUpLeg
      Frame Armature_mixamorig_Spine {
        FrameTransformMatrix {
           0.999805,-0.008115, 0.017971, 0.000000,
           0.004291, 0.979094, 0.203362, 0.000000,
          -0.019245,-0.203245, 0.978939, 0.000000,
           0.000000,13.784800, 0.064381, 1.000000;;
        }
        Frame Armature_mixamorig_Spine1 {
          FrameTransformMatrix {
             0.998400,-0.034692, 0.044648, 0.000000,
             0.018227, 0.944969, 0.326653, 0.000000,
            -0.053523,-0.325316, 0.944089, 0.000000,
             0.000001,12.024299, 0.000009, 1.000000;;
          }
          Frame Armature_mixamorig_Spine2 {
            FrameTransformMatrix {
               0.998400,-0.035120, 0.044312, 0.000000,
               0.019514, 0.949582, 0.312913, 0.000000,
              -0.053067,-0.311548, 0.948748, 0.000000,
              -0.000000,17.815804,-0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_LeftShoulder {
              FrameTransformMatrix {
                 0.225768, 0.031589,-0.973669, 0.000000,
                 0.951050, 0.209360, 0.227315, 0.000000,
                 0.211028,-0.977328, 0.017224, 0.000000,
                17.399502,24.614197, 1.157891, 1.000000;;
              }
              Frame Armature_mixamorig_LeftArm {
                FrameTransformMatrix {
                   0.867778, 0.123573, 0.481343, 0.000000,
                  -0.201661, 0.972821, 0.113812, 0.000000,
                  -0.454197,-0.195832, 0.869112, 0.000000,
                   0.000006,19.910397, 0.000000, 1.000000;;
                }
                Frame Armature_mixamorig_LeftForeArm {
                  FrameTransformMatrix {
                     0.600841, 0.792358, 0.105640, 0.000000,
                    -0.695490, 0.453028, 0.557728, 0.000000,
                     0.394062,-0.408577, 0.823274, 0.000000,
                     0.000005,49.301289,-0.000004, 1.000000;;
                  }
                  Frame Armature_mixamorig_LeftHand {
                    FrameTransformMatrix {
                       0.854936, 0.450907, 0.256453, 0.000000,
                      -0.380884, 0.881284,-0.279759, 0.000000,
                      -0.352153, 0.141497, 0.925185, 0.000000,
                       0.000005,31.604713, 0.000005, 1.000000;;
                    }
                    Frame Armature_mixamorig_LeftHandIndex1 {
                      FrameTransformMatrix {
                         0.999886, 0.014890, 0.002422, 0.000000,
                        -0.015086, 0.985901, 0.166647, 0.000000,
                         0.000093,-0.166665, 0.986014, 0.000000,
                        -6.192897,21.271084, 0.498714, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandIndex2 {
                        FrameTransformMatrix {
                           0.999962,-0.004992, 0.007162, 0.000000,
                           0.001983, 0.928827, 0.370510, 0.000000,
                          -0.008502,-0.370481, 0.928801, 0.000000,
                           0.000001, 7.536489,-0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandIndex3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000, 0.000000, 0.000000,
                            -0.000000,-0.000000, 1.000000, 0.000000,
                             0.000002, 7.512297,-0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandIndex4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000000,10.212390, 0.000002, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandIndex4
                        } // End of Armature_mixamorig_LeftHandIndex3
                      } // End of Armature_mixamorig_LeftHandIndex2
                    } // End of Armature_mixamorig_LeftHandIndex1
                    Frame Armature_mixamorig_LeftHandMiddle1 {
                      FrameTransformMatrix {
                         0.999936,-0.010680, 0.003704, 0.000000,
                         0.009551, 0.973499, 0.228491, 0.000000,
                        -0.006047,-0.228441, 0.973539, 0.000000,
                         0.016503,23.334377, 0.008612, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandMiddle2 {
                        FrameTransformMatrix {
                           0.999861, 0.014509, 0.008217, 0.000000,
                          -0.016170, 0.964037, 0.265274, 0.000000,
                          -0.004073,-0.265370, 0.964138, 0.000000,
                           0.000008, 6.996586, 0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandMiddle3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                             0.000002, 7.016009, 0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000001, 7.721593, 0.000001, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandMiddle4
                        } // End of Armature_mixamorig_LeftHandMiddle3
                      } // End of Armature_mixamorig_LeftHandMiddle2
                    } // End of Armature_mixamorig_LeftHandMiddle1
                    Frame Armature_mixamorig_LeftHandPinky1 {
                      FrameTransformMatrix {
                         0.974234,-0.225344,-0.009388, 0.000000,
                         0.218751, 0.933957, 0.282618, 0.000000,
                        -0.054919,-0.277389, 0.959187, 0.000000,
                        11.443206,18.881186, 0.461819, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandPinky2 {
                        FrameTransformMatrix {
                           0.995028, 0.099478, 0.004830, 0.000000,
                          -0.090506, 0.882922, 0.460713, 0.000000,
                           0.041567,-0.458860, 0.887536, 0.000000,
                          -0.000004, 4.919598,-0.000007, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandPinky3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000,-0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                             0.000004, 5.233003,-0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandPinky4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000005, 5.571703,-0.000003, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandPinky4
                        } // End of Armature_mixamorig_LeftHandPinky3
                      } // End of Armature_mixamorig_LeftHandPinky2
                    } // End of Armature_mixamorig_LeftHandPinky1
                    Frame Armature_mixamorig_LeftHandRing1 {
                      FrameTransformMatrix {
                         0.992051,-0.125838, 0.000500, 0.000000,
                         0.118343, 0.934304, 0.336259, 0.000000,
                        -0.042781,-0.333527, 0.941769, 0.000000,
                         6.516901,22.686594, 0.103609, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandRing2 {
                        FrameTransformMatrix {
                           0.999438, 0.033488, 0.001537, 0.000000,
                          -0.032472, 0.955688, 0.292586, 0.000000,
                           0.008329,-0.292472, 0.956238, 0.000000,
                           0.000003, 6.408594, 0.000005, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandRing3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000,-0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000,-0.000000, 1.000000, 0.000000,
                            -0.000002, 6.150297,-0.000003, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandRing4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000004, 6.145399,-0.000001, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandRing4
                        } // End of Armature_mixamorig_LeftHandRing3
                      } // End of Armature_mixamorig_LeftHandRing2
                    } // End of Armature_mixamorig_LeftHandRing1
                    Frame Armature_mixamorig_LeftHandThumb1 {
                      FrameTransformMatrix {
                         0.906180, 0.418932,-0.057749, 0.000000,
                        -0.367255, 0.847292, 0.383694, 0.000000,
                         0.209672,-0.326487, 0.921653, 0.000000,
                        -7.059596, 6.094488, 4.397213, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandThumb2 {
                        FrameTransformMatrix {
                           0.854970,-0.143582,-0.498408, 0.000000,
                           0.242983, 0.959830, 0.140306, 0.000000,
                           0.458241,-0.241062, 0.855514, 0.000000,
                           0.000003, 7.536503,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandThumb3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000,-0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000000, 7.512294, 0.000003, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000002,10.212400,-0.000010, 1.000000;;
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
                 0.995003,-0.064900,-0.075880, 0.000000,
                 0.076494, 0.983897, 0.161538, 0.000000,
                 0.064175,-0.166535, 0.983945, 0.000000,
                 0.000000,39.117607,11.976992, 1.000000;;
              }
              Frame Armature_mixamorig_Head {
                FrameTransformMatrix {
                   0.996885, 0.057772, 0.053685, 0.000000,
                  -0.071920, 0.945279, 0.318236, 0.000000,
                  -0.032362,-0.321106, 0.946490, 0.000000,
                   0.000000,14.552501,15.664092, 1.000000;;
                }
                Frame Armature_mixamorig_HeadTop_End {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000,-0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                     0.000000,15.601700, 7.553695, 1.000000;;
                  }
                } // End of Armature_mixamorig_HeadTop_End
                Frame Armature_mixamorig_Jaw {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                     0.000000,-0.587429, 0.809276, 0.000000,
                     0.000000,-0.809276,-0.587429, 0.000000,
                     0.000000,-2.317796, 3.620692, 1.000000;;
                  }
                } // End of Armature_mixamorig_Jaw
                Frame Armature_mixamorig_LeftEye {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000,-0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                     3.528700, 2.462096,12.838200, 1.000000;;
                  }
                } // End of Armature_mixamorig_LeftEye
                Frame Armature_mixamorig_RightEye {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000,-0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                    -3.528700, 2.462096,12.838199, 1.000000;;
                  }
                } // End of Armature_mixamorig_RightEye
              } // End of Armature_mixamorig_Head
            } // End of Armature_mixamorig_Neck
            Frame Armature_mixamorig_RightShoulder {
              FrameTransformMatrix {
                 0.241825,-0.027226, 0.969938, 0.000000,
                -0.966286, 0.084295, 0.243280, 0.000000,
                -0.088384,-0.996069,-0.005923, 0.000000,
                -17.399506,24.614300, 1.157887, 1.000000;;
              }
              Frame Armature_mixamorig_RightArm {
                FrameTransformMatrix {
                   0.552089,-0.522949,-0.649402, 0.000000,
                   0.568191, 0.805981,-0.165992, 0.000000,
                   0.610211,-0.277342, 0.742108, 0.000000,
                   0.000001,19.910404,-0.000002, 1.000000;;
                }
                Frame Armature_mixamorig_RightArmour1 {
                  FrameTransformMatrix {
                    -0.000000,-1.000000,-0.000001, 0.000000,
                    -0.000000, 0.000001,-1.000000, 0.000000,
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -1.467288, 5.012929,-18.471127, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightArmour2 {
                    FrameTransformMatrix {
                      -0.915901, 0.232054,-0.327534, 0.000000,
                      -0.183487,-0.967759,-0.172553, 0.000000,
                      -0.357018,-0.097943, 0.928950, 0.000000,
                       3.884896,-9.462722,-18.584896, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour3 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000004,11.039499, 0.000004, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour3
                  } // End of Armature_mixamorig_RightArmour2
                  Frame Armature_mixamorig_RightArmour4 {
                    FrameTransformMatrix {
                       0.708033,-0.251874, 0.659734, 0.000000,
                      -0.431906,-0.893578, 0.122374, 0.000000,
                       0.558701,-0.371588,-0.741469, 0.000000,
                      -2.648907,-11.494610,22.195309, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour5 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                         0.000000,11.039510,-0.000009, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour5
                  } // End of Armature_mixamorig_RightArmour4
                } // End of Armature_mixamorig_RightArmour1
                Frame Armature_mixamorig_RightForeArm {
                  FrameTransformMatrix {
                     0.557859,-0.816482,-0.148831, 0.000000,
                     0.774131, 0.447267, 0.447966, 0.000000,
                    -0.299188,-0.365117, 0.881576, 0.000000,
                     0.000008,49.301296, 0.000025, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightHand {
                    FrameTransformMatrix {
                       0.943880,-0.284445,-0.167874, 0.000000,
                       0.273616, 0.958080,-0.084951, 0.000000,
                       0.185001, 0.034251, 0.982141, 0.000000,
                      -0.000001,31.604996,-0.000001, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightHandIndex1 {
                      FrameTransformMatrix {
                         0.999654,-0.011210,-0.023804, 0.000000,
                         0.015020, 0.985932, 0.166471, 0.000000,
                         0.021603,-0.166771, 0.985759, 0.000000,
                         6.192905,21.270994, 0.499002, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandIndex2 {
                        FrameTransformMatrix {
                           0.999902, 0.013023,-0.005119, 0.000000,
                          -0.010201, 0.928833, 0.370359, 0.000000,
                           0.009578,-0.370271, 0.928874, 0.000000,
                          -0.000002, 7.535995,-0.000001, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandIndex3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000,-0.000000, 1.000000, 0.000000,
                            -0.000003, 7.513009,-0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandIndex4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000004,10.212008, 0.000003, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandIndex4
                        } // End of Armature_mixamorig_RightHandIndex3
                      } // End of Armature_mixamorig_RightHandIndex2
                    } // End of Armature_mixamorig_RightHandIndex1
                    Frame Armature_mixamorig_RightHandMiddle1 {
                      FrameTransformMatrix {
                         0.999613, 0.014619,-0.023647, 0.000000,
                        -0.008831, 0.973496, 0.228535, 0.000000,
                         0.026361,-0.228238, 0.973249, 0.000000,
                        -0.016497,23.333992, 0.008997, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandMiddle2 {
                        FrameTransformMatrix {
                           0.999935,-0.008788,-0.007310, 0.000000,
                           0.010413, 0.964091, 0.265368, 0.000000,
                           0.004716,-0.265427, 0.964119, 0.000000,
                           0.000001, 6.996998,-0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandMiddle3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000000, 7.016008, 0.000000, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000001, 7.720994,-0.000001, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandMiddle4
                        } // End of Armature_mixamorig_RightHandMiddle3
                      } // End of Armature_mixamorig_RightHandMiddle2
                    } // End of Armature_mixamorig_RightHandMiddle1
                    Frame Armature_mixamorig_RightHandPinky1 {
                      FrameTransformMatrix {
                         0.975853, 0.209309, 0.062457, 0.000000,
                        -0.218428, 0.934062, 0.282520, 0.000000,
                         0.000796,-0.289340, 0.957226, 0.000000,
                        -11.443201,18.881002, 0.462005, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandPinky2 {
                        FrameTransformMatrix {
                           0.992130,-0.124733,-0.010915, 0.000000,
                           0.116008, 0.882927, 0.454953, 0.000000,
                          -0.047111,-0.452639, 0.890448, 0.000000,
                           0.000001, 4.920000, 0.000001, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandPinky3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000,-0.000000, 1.000000, 0.000000,
                             0.000001, 5.232998, 0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandPinky4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000002, 5.570997,-0.000002, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandPinky4
                        } // End of Armature_mixamorig_RightHandPinky3
                      } // End of Armature_mixamorig_RightHandPinky2
                    } // End of Armature_mixamorig_RightHandPinky1
                    Frame Armature_mixamorig_RightHandRing1 {
                      FrameTransformMatrix {
                         0.992845, 0.117079, 0.023466, 0.000000,
                        -0.118130, 0.934404, 0.336058, 0.000000,
                         0.017419,-0.336426, 0.941549, 0.000000,
                        -6.516898,22.686001, 0.103995, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandRing2 {
                        FrameTransformMatrix {
                           0.999210,-0.039689,-0.002047, 0.000000,
                           0.038561, 0.955792, 0.291504, 0.000000,
                          -0.009613,-0.291353, 0.956567, 0.000000,
                           0.000002, 6.409000, 0.000001, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandRing3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                             0.000003, 6.150001,-0.000003, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandRing4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000000, 6.145998,-0.000005, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandRing4
                        } // End of Armature_mixamorig_RightHandRing3
                      } // End of Armature_mixamorig_RightHandRing2
                    } // End of Armature_mixamorig_RightHandRing1
                    Frame Armature_mixamorig_RightHandThumb1 {
                      FrameTransformMatrix {
                         0.935882,-0.332879,-0.115402, 0.000000,
                         0.343839, 0.791560, 0.505181, 0.000000,
                        -0.076817,-0.512469, 0.855263, 0.000000,
                         7.059702, 6.093999, 4.396988, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandThumb2 {
                        FrameTransformMatrix {
                           0.628779, 0.453157, 0.631891, 0.000000,
                          -0.278326, 0.889954,-0.361270, 0.000000,
                          -0.726066, 0.051287, 0.685710, 0.000000,
                           0.000004, 7.536296, 0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandThumb3 {
                          FrameTransformMatrix {
                             1.000000, 0.000001,-0.000002, 0.000000,
                            -0.000001, 1.000000,-0.000002, 0.000000,
                             0.000002, 0.000002, 1.000000, 0.000000,
                             0.000002, 7.512691, 0.000000, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000001, 0.000002, 0.000000,
                               0.000001, 1.000000, 0.000001, 0.000000,
                              -0.000002,-0.000001, 1.000000, 0.000000,
                              -0.000000,10.212726,-0.000003, 1.000000;;
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
      23;
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
      22;4;-0.707107, 0.707107, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
      0;3; 0.100000, 0.100000, 0.100000;;,
      1;3; 0.100000, 0.100000, 0.100000;;,
      2;3; 0.100000, 0.100000, 0.100000;;,
      3;3; 0.100000, 0.100000, 0.100000;;,
      4;3; 0.100000, 0.100000, 0.100000;;,
      5;3; 0.100000, 0.100000, 0.100000;;,
      6;3; 0.100000, 0.100000, 0.100000;;,
      7;3; 0.100000, 0.100000, 0.100000;;,
      8;3; 0.100000, 0.100000, 0.100000;;,
      9;3; 0.100000, 0.100000, 0.100000;;,
      10;3; 0.100000, 0.100000, 0.100000;;,
      11;3; 0.100000, 0.100000, 0.100000;;,
      12;3; 0.100000, 0.100000, 0.100000;;,
      13;3; 0.100000, 0.100000, 0.100000;;,
      14;3; 0.100000, 0.100000, 0.100000;;,
      15;3; 0.100000, 0.100000, 0.100000;;,
      16;3; 0.100000, 0.100000, 0.100000;;,
      17;3; 0.100000, 0.100000, 0.100000;;,
      18;3; 0.100000, 0.100000, 0.100000;;,
      19;3; 0.100000, 0.100000, 0.100000;;,
      20;3; 0.100000, 0.100000, 0.100000;;,
      21;3; 0.100000, 0.100000, 0.100000;;,
      22;3; 0.100000, 0.100000, 0.100000;;;
    }
    AnimationKey { // Position
      2;
      23;
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
      22;3; 0.000000, 0.000000, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Hips}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.754634, 0.655758, 0.014486,-0.017325;;,
      1;4;-0.700085, 0.713679, 0.010555,-0.020780;;,
      2;4;-0.635685, 0.771481, 0.005759,-0.026251;;,
      3;4;-0.561540, 0.826802,-0.000005,-0.032723;;,
      4;4;-0.478409, 0.877243,-0.005845,-0.039195;;,
      5;4;-0.387502, 0.920715,-0.010740,-0.044847;;,
      6;4;-0.290709, 0.955450,-0.014252,-0.048990;;,
      7;4;-0.190770, 0.980170,-0.016674,-0.050956;;,
      8;4;-0.090680, 0.994427,-0.018763,-0.050408;;,
      9;4; 0.007591, 0.998593,-0.021040,-0.048077;;,
      10;4; 0.103790, 0.993278,-0.023445,-0.045577;;,
      11;4; 0.198748, 0.978716,-0.025367,-0.044390;;,
      12;4; 0.292942, 0.954724,-0.025992,-0.044862;;,
      13;4; 0.385648, 0.921169,-0.024677,-0.045988;;,
      14;4; 0.475326, 0.878342,-0.021123,-0.046207;;,
      15;4; 0.560580, 0.826767,-0.015621,-0.044291;;,
      16;4; 0.640619, 0.766766,-0.008971,-0.039956;;,
      17;4; 0.714867, 0.698431,-0.001864,-0.033998;;,
      18;4; 0.782181, 0.622411, 0.005656,-0.027664;;,
      19;4; 0.840543, 0.541167, 0.011911,-0.022012;;,
      20;4; 0.923098, 0.383562, 0.024725,-0.012630;;,
      21;4; 0.963056, 0.266198, 0.040674,-0.002864;;,
      22;4; 0.982659, 0.179803, 0.045291, 0.001051;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 3.657216,157.318695,-11.897692;;,
      1;3; 3.914121,161.835144,-13.054571;;,
      2;3; 4.174674,166.398254,-13.753714;;,
      3;3; 4.474949,171.026031,-13.993610;;,
      4;3; 4.766579,175.727936,-13.698122;;,
      5;3; 5.117794,180.411224,-12.723537;;,
      6;3; 5.509369,184.803055,-10.939529;;,
      7;3; 5.913788,188.481644,-8.288266;;,
      8;3; 6.283120,191.007141,-4.806291;;,
      9;3; 6.529128,192.127625,-0.673082;;,
      10;3; 6.748772,191.769348, 3.943696;;,
      11;3; 6.996562,189.889587, 8.960253;;,
      12;3; 7.300102,186.385452,14.270940;;,
      13;3; 7.624331,181.125214,19.672506;;,
      14;3; 7.897315,173.849182,24.831055;;,
      15;3; 8.013057,164.255737,29.054018;;,
      16;3; 7.900483,152.517181,31.188919;;,
      17;3; 7.588312,139.614655,30.100639;;,
      18;3; 7.188847,127.315933,25.636459;;,
      19;3; 6.967956,118.425888,23.119530;;,
      20;3; 5.936122,104.742516,20.110010;;,
      21;3; 4.667232,92.386314,14.510228;;,
      22;3; 2.890965,84.032028, 8.994558;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.994716, 0.102192,-0.009353,-0.003118;;,
      1;4;-0.994171, 0.107445,-0.008660,-0.002319;;,
      2;4;-0.993858, 0.110374,-0.007818,-0.001513;;,
      3;4;-0.993770, 0.111219,-0.007034,-0.001071;;,
      4;4;-0.993845, 0.110609,-0.006081,-0.000812;;,
      5;4;-0.994019, 0.109103,-0.004686,-0.000415;;,
      6;4;-0.994246, 0.107079,-0.002970, 0.000194;;,
      7;4;-0.994475, 0.104965,-0.001491, 0.000737;;,
      8;4;-0.994642, 0.103377,-0.000848, 0.000821;;,
      9;4;-0.994704, 0.102779,-0.001093, 0.000427;;,
      10;4;-0.994670, 0.103098,-0.001817,-0.000190;;,
      11;4;-0.994586, 0.103881,-0.002578,-0.000777;;,
      12;4;-0.994495, 0.104734,-0.003134,-0.001230;;,
      13;4;-0.994432, 0.105310,-0.003449,-0.001506;;,
      14;4;-0.994465, 0.105002,-0.003443,-0.001456;;,
      15;4;-0.994651, 0.103238,-0.003108,-0.000944;;,
      16;4;-0.994939, 0.100445,-0.002613, 0.000016;;,
      17;4;-0.995167, 0.098176,-0.001834, 0.001207;;,
      18;4;-0.995257, 0.097248, 0.000025, 0.002579;;,
      19;4;-0.995373, 0.095999, 0.001889, 0.003504;;,
      20;4;-0.996269, 0.085788, 0.005247, 0.007825;;,
      21;4;-0.996719, 0.079822, 0.006969, 0.011477;;,
      22;4;-0.996988, 0.077269,-0.000027, 0.006619;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,13.784800, 0.064381;;,
      1;3; 0.000000,13.784796, 0.064387;;,
      2;3;-0.000000,13.784795, 0.064395;;,
      3;3; 0.000001,13.784803, 0.064399;;,
      4;3; 0.000001,13.784796, 0.064382;;,
      5;3; 0.000001,13.784805, 0.064387;;,
      6;3;-0.000001,13.784809, 0.064394;;,
      7;3; 0.000001,13.784801, 0.064401;;,
      8;3;-0.000000,13.784804, 0.064401;;,
      9;3;-0.000001,13.784781, 0.064400;;,
      10;3;-0.000002,13.784806, 0.064399;;,
      11;3;-0.000000,13.784798, 0.064389;;,
      12;3;-0.000000,13.784787, 0.064412;;,
      13;3; 0.000001,13.784792, 0.064398;;,
      14;3;-0.000000,13.784786, 0.064378;;,
      15;3;-0.000000,13.784790, 0.064409;;,
      16;3;-0.000001,13.784798, 0.064398;;,
      17;3; 0.000001,13.784801, 0.064391;;,
      18;3; 0.000000,13.784791, 0.064406;;,
      19;3; 0.000000,13.784799, 0.064396;;,
      20;3;-0.000001,13.784805, 0.064408;;,
      21;3;-0.000000,13.784805, 0.064399;;,
      22;3;-0.000001,13.784793, 0.064403;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.985832, 0.165335,-0.024895,-0.013420;;,
      1;4;-0.984094, 0.175744,-0.022962,-0.012053;;,
      2;4;-0.983122, 0.181543,-0.019928,-0.010820;;,
      3;4;-0.982875, 0.183218,-0.016562,-0.010650;;,
      4;4;-0.983144, 0.182014,-0.013304,-0.010996;;,
      5;4;-0.983727, 0.179047,-0.010405,-0.010687;;,
      6;4;-0.984479, 0.175058,-0.008313,-0.009294;;,
      7;4;-0.985233, 0.170885,-0.007550,-0.007509;;,
      8;4;-0.985777, 0.167742,-0.008206,-0.006297;;,
      9;4;-0.985965, 0.166558,-0.009776,-0.005925;;,
      10;4;-0.985840, 0.167190,-0.011499,-0.005914;;,
      11;4;-0.985560, 0.168745,-0.012799,-0.005698;;,
      12;4;-0.985263, 0.170441,-0.013456,-0.005104;;,
      13;4;-0.985068, 0.171587,-0.013482,-0.004222;;,
      14;4;-0.985184, 0.170982,-0.012937,-0.003055;;,
      15;4;-0.985801, 0.167485,-0.011971,-0.001550;;,
      16;4;-0.986738, 0.161943,-0.011068, 0.000018;;,
      17;4;-0.987473, 0.157428,-0.010663, 0.000881;;,
      18;4;-0.987772, 0.155571,-0.010154, 0.000633;;,
      19;4;-0.988177, 0.153090,-0.008393, 0.000321;;,
      20;4;-0.991133, 0.132798,-0.001413, 0.004151;;,
      21;4;-0.992570, 0.120930, 0.005341, 0.012312;;,
      22;4;-0.993074, 0.115891, 0.005223, 0.018589;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001,12.024299, 0.000009;;,
      1;3; 0.000000,12.024303, 0.000017;;,
      2;3; 0.000001,12.024289, 0.000007;;,
      3;3; 0.000001,12.024293, 0.000001;;,
      4;3;-0.000000,12.024313, 0.000002;;,
      5;3; 0.000000,12.024288,-0.000003;;,
      6;3;-0.000000,12.024277, 0.000007;;,
      7;3; 0.000001,12.024304,-0.000000;;,
      8;3;-0.000001,12.024274,-0.000000;;,
      9;3; 0.000000,12.024303,-0.000003;;,
      10;3;-0.000001,12.024302, 0.000005;;,
      11;3;-0.000002,12.024296,-0.000006;;,
      12;3;-0.000001,12.024302, 0.000001;;,
      13;3;-0.000000,12.024316,-0.000011;;,
      14;3;-0.000001,12.024295, 0.000012;;,
      15;3;-0.000001,12.024298,-0.000020;;,
      16;3;-0.000000,12.024299, 0.000013;;,
      17;3; 0.000000,12.024300, 0.000009;;,
      18;3;-0.000000,12.024300, 0.000011;;,
      19;3; 0.000001,12.024310, 0.000012;;,
      20;3; 0.000001,12.024287, 0.000008;;,
      21;3;-0.000000,12.024285, 0.000002;;,
      22;3; 0.000000,12.024301,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.987007, 0.158170,-0.024665,-0.013838;;,
      1;4;-0.985345, 0.168592,-0.022755,-0.012439;;,
      2;4;-0.984414, 0.174397,-0.019743,-0.011154;;,
      3;4;-0.984180, 0.176074,-0.016380,-0.010928;;,
      4;4;-0.984440, 0.174869,-0.013117,-0.011219;;,
      5;4;-0.985002, 0.171898,-0.010223,-0.010862;;,
      6;4;-0.985725, 0.167903,-0.008155,-0.009433;;,
      7;4;-0.986449, 0.163724,-0.007422,-0.007636;;,
      8;4;-0.986969, 0.160578,-0.008099,-0.006434;;,
      9;4;-0.987149, 0.159392,-0.009675,-0.006089;;,
      10;4;-0.987028, 0.160025,-0.011397,-0.006107;;,
      11;4;-0.986760, 0.161582,-0.012701,-0.005913;;,
      12;4;-0.986475, 0.163280,-0.013368,-0.005331;;,
      13;4;-0.986288, 0.164428,-0.013408,-0.004449;;,
      14;4;-0.986400, 0.163822,-0.012883,-0.003273;;,
      15;4;-0.986991, 0.160320,-0.011943,-0.001752;;,
      16;4;-0.987888, 0.154772,-0.011066,-0.000169;;,
      17;4;-0.988590, 0.150251,-0.010677, 0.000701;;,
      18;4;-0.988876, 0.148392,-0.010163, 0.000461;;,
      19;4;-0.989262, 0.145909,-0.008398, 0.000179;;,
      20;4;-0.992072, 0.125596,-0.001483, 0.004126;;,
      21;4;-0.993423, 0.113717, 0.005132, 0.012401;;,
      22;4;-0.993890, 0.108675, 0.004909, 0.018675;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000,17.815804,-0.000001;;,
      1;3;-0.000001,17.815802,-0.000006;;,
      2;3; 0.000001,17.815792, 0.000005;;,
      3;3;-0.000001,17.815809,-0.000003;;,
      4;3; 0.000001,17.815798,-0.000006;;,
      5;3;-0.000000,17.815796, 0.000000;;,
      6;3; 0.000000,17.815811,-0.000000;;,
      7;3; 0.000000,17.815823,-0.000001;;,
      8;3; 0.000001,17.815798,-0.000001;;,
      9;3; 0.000000,17.815802,-0.000010;;,
      10;3;-0.000000,17.815802, 0.000008;;,
      11;3;-0.000001,17.815798,-0.000012;;,
      12;3; 0.000001,17.815809,-0.000012;;,
      13;3; 0.000000,17.815798,-0.000003;;,
      14;3; 0.000000,17.815800, 0.000012;;,
      15;3; 0.000001,17.815796,-0.000008;;,
      16;3; 0.000001,17.815802, 0.000011;;,
      17;3;-0.000000,17.815807, 0.000014;;,
      18;3;-0.000000,17.815792, 0.000003;;,
      19;3; 0.000001,17.815807,-0.000002;;,
      20;3;-0.000000,17.815798,-0.000004;;,
      21;3;-0.000000,17.815788,-0.000001;;,
      22;3;-0.000000,17.815804, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.995345, 0.082402, 0.035178,-0.035514;;,
      1;4;-0.995526, 0.080637, 0.037821,-0.031557;;,
      2;4;-0.994547, 0.091665, 0.040807,-0.028432;;,
      3;4;-0.992203, 0.113633, 0.043695,-0.026664;;,
      4;4;-0.987947, 0.145566, 0.045903,-0.025772;;,
      5;4;-0.981201, 0.185526, 0.047135,-0.024549;;,
      6;4;-0.972181, 0.228276, 0.047639,-0.022020;;,
      7;4;-0.962696, 0.265674, 0.047968,-0.018257;;,
      8;4;-0.955611, 0.290260, 0.048504,-0.014309;;,
      9;4;-0.952844, 0.299217, 0.049292,-0.011345;;,
      10;4;-0.953954, 0.295556, 0.050212,-0.009900;;,
      11;4;-0.956848, 0.285901, 0.051037,-0.009839;;,
      12;4;-0.959546, 0.276604, 0.051416,-0.010845;;,
      13;4;-0.961184, 0.270845, 0.051048,-0.012763;;,
      14;4;-0.961918, 0.268285, 0.049974,-0.015457;;,
      15;4;-0.962375, 0.266693, 0.048667,-0.018442;;,
      16;4;-0.963165, 0.263814, 0.047800,-0.020766;;,
      17;4;-0.964684, 0.258147, 0.047821,-0.021383;;,
      18;4;-0.967169, 0.248638, 0.048646,-0.019917;;,
      19;4;-0.970753, 0.234242, 0.049680,-0.017345;;,
      20;4;-0.980546, 0.188909, 0.049919,-0.018752;;,
      21;4;-0.989097, 0.133435, 0.048852,-0.038678;;,
      22;4;-0.993093, 0.090016, 0.049597,-0.056596;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,39.117607,11.976992;;,
      1;3;-0.000000,39.117603,11.977002;;,
      2;3;-0.000000,39.117584,11.977013;;,
      3;3; 0.000000,39.117603,11.977007;;,
      4;3; 0.000000,39.117580,11.977001;;,
      5;3;-0.000000,39.117599,11.977003;;,
      6;3;-0.000001,39.117592,11.977006;;,
      7;3; 0.000001,39.117603,11.977001;;,
      8;3; 0.000000,39.117603,11.977001;;,
      9;3; 0.000000,39.117592,11.977010;;,
      10;3;-0.000001,39.117607,11.977014;;,
      11;3; 0.000001,39.117588,11.977026;;,
      12;3;-0.000001,39.117603,11.977012;;,
      13;3; 0.000002,39.117596,11.976991;;,
      14;3;-0.000001,39.117599,11.977002;;,
      15;3;-0.000003,39.117599,11.976995;;,
      16;3; 0.000001,39.117615,11.976999;;,
      17;3;-0.000001,39.117619,11.977007;;,
      18;3;-0.000001,39.117615,11.976995;;,
      19;3;-0.000001,39.117592,11.977010;;,
      20;3;-0.000002,39.117592,11.977004;;,
      21;3; 0.000001,39.117588,11.977001;;,
      22;3; 0.000001,39.117599,11.977003;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.985984, 0.162108,-0.021818, 0.032884;;,
      1;4;-0.985430, 0.165706,-0.018457, 0.033592;;,
      2;4;-0.985408, 0.166095,-0.015427, 0.033853;;,
      3;4;-0.985755, 0.164138,-0.013752, 0.034016;;,
      4;4;-0.986412, 0.160111,-0.014178, 0.033979;;,
      5;4;-0.987302, 0.154500,-0.016549, 0.033035;;,
      6;4;-0.988247, 0.148424,-0.019872, 0.030723;;,
      7;4;-0.989043, 0.143183,-0.022900, 0.027707;;,
      8;4;-0.989607, 0.139342,-0.024720, 0.025521;;,
      9;4;-0.990038, 0.136247,-0.025005, 0.025233;;,
      10;4;-0.990548, 0.132446,-0.024064, 0.026326;;,
      11;4;-0.991319, 0.126646,-0.022812, 0.026955;;,
      12;4;-0.992384, 0.118415,-0.022492, 0.025432;;,
      13;4;-0.993594, 0.108267,-0.024047, 0.021702;;,
      14;4;-0.994712, 0.097391,-0.027465, 0.017554;;,
      15;4;-0.995561, 0.087306,-0.031572, 0.015450;;,
      16;4;-0.996108, 0.079324,-0.034520, 0.016880;;,
      17;4;-0.996440, 0.073755,-0.034757, 0.021427;;,
      18;4;-0.996711, 0.069355,-0.031948, 0.027127;;,
      19;4;-0.997090, 0.063744,-0.027262, 0.031716;;,
      20;4;-0.998356, 0.042050,-0.020325, 0.033222;;,
      21;4;-0.999280, 0.013864,-0.022099, 0.027550;;,
      22;4;-0.999385,-0.005074,-0.022704, 0.026232;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,14.552501,15.664092;;,
      1;3; 0.000000,14.552503,15.664106;;,
      2;3; 0.000000,14.552490,15.664105;;,
      3;3;-0.000000,14.552502,15.664103;;,
      4;3; 0.000000,14.552498,15.664102;;,
      5;3;-0.000000,14.552492,15.664097;;,
      6;3;-0.000000,14.552503,15.664100;;,
      7;3;-0.000000,14.552497,15.664108;;,
      8;3; 0.000001,14.552505,15.664098;;,
      9;3; 0.000001,14.552505,15.664106;;,
      10;3;-0.000001,14.552508,15.664119;;,
      11;3; 0.000000,14.552502,15.664108;;,
      12;3; 0.000002,14.552493,15.664099;;,
      13;3;-0.000002,14.552528,15.664112;;,
      14;3;-0.000002,14.552481,15.664097;;,
      15;3; 0.000001,14.552507,15.664110;;,
      16;3;-0.000000,14.552514,15.664109;;,
      17;3;-0.000000,14.552521,15.664106;;,
      18;3;-0.000000,14.552512,15.664103;;,
      19;3;-0.000001,14.552495,15.664108;;,
      20;3;-0.000001,14.552499,15.664107;;,
      21;3;-0.000000,14.552509,15.664102;;,
      22;3;-0.000000,14.552487,15.664101;;;
    }
  }
  Animation {
    {Armature_mixamorig_HeadTop_End}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,15.601700, 7.553695;;,
      1;3;-0.000000,15.601686, 7.553703;;,
      2;3;-0.000000,15.601700, 7.553703;;,
      3;3;-0.000000,15.601707, 7.553703;;,
      4;3;-0.000000,15.601695, 7.553702;;,
      5;3;-0.000000,15.601700, 7.553702;;,
      6;3; 0.000000,15.601694, 7.553699;;,
      7;3; 0.000000,15.601697, 7.553724;;,
      8;3; 0.000001,15.601700, 7.553698;;,
      9;3; 0.000001,15.601706, 7.553706;;,
      10;3;-0.000001,15.601686, 7.553706;;,
      11;3; 0.000001,15.601720, 7.553704;;,
      12;3;-0.000000,15.601694, 7.553689;;,
      13;3;-0.000001,15.601690, 7.553718;;,
      14;3; 0.000001,15.601705, 7.553704;;,
      15;3; 0.000001,15.601698, 7.553697;;,
      16;3; 0.000000,15.601694, 7.553703;;,
      17;3;-0.000000,15.601680, 7.553702;;,
      18;3; 0.000001,15.601701, 7.553706;;,
      19;3; 0.000001,15.601716, 7.553701;;,
      20;3; 0.000000,15.601691, 7.553709;;,
      21;3; 0.000002,15.601688, 7.553698;;,
      22;3;-0.000000,15.601694, 7.553700;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftEye}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 3.528700, 2.462096,12.838200;;,
      1;3; 3.528700, 2.462091,12.838202;;,
      2;3; 3.528700, 2.462091,12.838205;;,
      3;3; 3.528699, 2.462101,12.838207;;,
      4;3; 3.528700, 2.462089,12.838202;;,
      5;3; 3.528699, 2.462091,12.838203;;,
      6;3; 3.528700, 2.462097,12.838198;;,
      7;3; 3.528701, 2.462097,12.838226;;,
      8;3; 3.528701, 2.462101,12.838197;;,
      9;3; 3.528700, 2.462098,12.838220;;,
      10;3; 3.528698, 2.462087,12.838208;;,
      11;3; 3.528700, 2.462116,12.838216;;,
      12;3; 3.528699, 2.462109,12.838202;;,
      13;3; 3.528700, 2.462072,12.838215;;,
      14;3; 3.528701, 2.462102,12.838205;;,
      15;3; 3.528700, 2.462094,12.838206;;,
      16;3; 3.528701, 2.462090,12.838201;;,
      17;3; 3.528700, 2.462080,12.838202;;,
      18;3; 3.528701, 2.462107,12.838205;;,
      19;3; 3.528702, 2.462107,12.838204;;,
      20;3; 3.528700, 2.462099,12.838208;;,
      21;3; 3.528701, 2.462090,12.838202;;,
      22;3; 3.528701, 2.462104,12.838204;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightEye}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-3.528700, 2.462096,12.838199;;,
      1;3;-3.528700, 2.462093,12.838202;;,
      2;3;-3.528700, 2.462099,12.838205;;,
      3;3;-3.528701, 2.462101,12.838207;;,
      4;3;-3.528700, 2.462094,12.838202;;,
      5;3;-3.528701, 2.462093,12.838202;;,
      6;3;-3.528700, 2.462097,12.838204;;,
      7;3;-3.528699, 2.462099,12.838225;;,
      8;3;-3.528700, 2.462099,12.838205;;,
      9;3;-3.528701, 2.462101,12.838221;;,
      10;3;-3.528702, 2.462082,12.838203;;,
      11;3;-3.528700, 2.462118,12.838216;;,
      12;3;-3.528701, 2.462095,12.838197;;,
      13;3;-3.528701, 2.462085,12.838214;;,
      14;3;-3.528700, 2.462106,12.838213;;,
      15;3;-3.528700, 2.462089,12.838206;;,
      16;3;-3.528700, 2.462099,12.838201;;,
      17;3;-3.528700, 2.462092,12.838204;;,
      18;3;-3.528699, 2.462094,12.838205;;,
      19;3;-3.528699, 2.462121,12.838204;;,
      20;3;-3.528701, 2.462098,12.838210;;,
      21;3;-3.528699, 2.462081,12.838203;;,
      22;3;-3.528700, 2.462095,12.838208;;;
    }
  }
  Animation {
    {Armature_mixamorig_Jaw}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      1;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      2;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      3;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      4;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      5;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      6;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      7;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      8;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      9;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      10;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      11;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      12;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      13;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      14;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      15;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      16;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      17;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      18;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      19;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      20;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      21;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      22;4;-0.454186, 0.890907, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,-2.317796, 3.620692;;,
      1;3;-0.000000,-2.317804, 3.620697;;,
      2;3;-0.000001,-2.317794, 3.620700;;,
      3;3;-0.000001,-2.317789, 3.620703;;,
      4;3;-0.000000,-2.317801, 3.620696;;,
      5;3;-0.000001,-2.317797, 3.620700;;,
      6;3;-0.000000,-2.317794, 3.620697;;,
      7;3; 0.000000,-2.317796, 3.620718;;,
      8;3; 0.000001,-2.317795, 3.620691;;,
      9;3; 0.000000,-2.317792, 3.620700;;,
      10;3;-0.000002,-2.317807, 3.620695;;,
      11;3; 0.000001,-2.317781, 3.620710;;,
      12;3;-0.000001,-2.317796, 3.620689;;,
      13;3;-0.000000,-2.317815, 3.620712;;,
      14;3; 0.000001,-2.317789, 3.620704;;,
      15;3; 0.000000,-2.317801, 3.620700;;,
      16;3;-0.000000,-2.317791, 3.620695;;,
      17;3;-0.000000,-2.317815, 3.620698;;,
      18;3; 0.000002,-2.317792, 3.620703;;,
      19;3; 0.000001,-2.317784, 3.620701;;,
      20;3;-0.000001,-2.317804, 3.620713;;,
      21;3; 0.000000,-2.317805, 3.620698;;,
      22;3; 0.000000,-2.317802, 3.620702;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.602568, 0.499796, 0.491520,-0.381476;;,
      1;4;-0.602059, 0.501876, 0.489616,-0.381996;;,
      2;4;-0.604931, 0.504101, 0.486412,-0.378609;;,
      3;4;-0.608986, 0.508456, 0.480237,-0.374141;;,
      4;4;-0.612434, 0.516763, 0.469556,-0.370672;;,
      5;4;-0.614337, 0.528827, 0.454851,-0.368840;;,
      6;4;-0.614682, 0.541909, 0.439255,-0.368180;;,
      7;4;-0.614207, 0.552121, 0.427157,-0.368034;;,
      8;4;-0.613778, 0.556722, 0.421711,-0.368100;;,
      9;4;-0.613687, 0.555609, 0.423093,-0.368347;;,
      10;4;-0.613573, 0.551096, 0.428671,-0.368866;;,
      11;4;-0.612918, 0.546371, 0.434737,-0.369885;;,
      12;4;-0.611476, 0.543768, 0.438497,-0.371662;;,
      13;4;-0.609328, 0.543908, 0.439141,-0.374218;;,
      14;4;-0.606763, 0.545897, 0.437631,-0.377246;;,
      15;4;-0.604115, 0.548245, 0.435672,-0.380344;;,
      16;4;-0.601555, 0.549873, 0.434551,-0.383324;;,
      17;4;-0.598983, 0.550688, 0.434421,-0.386316;;,
      18;4;-0.596139, 0.551524, 0.434333,-0.389606;;,
      19;4;-0.592813, 0.553516, 0.432923,-0.393408;;,
      20;4;-0.584373, 0.562717, 0.423921,-0.402677;;,
      21;4;-0.573715, 0.573311, 0.413393,-0.413850;;,
      22;4;-0.564215, 0.576209, 0.411935,-0.424209;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;17.399502,24.614197, 1.157891;;,
      1;3;17.399496,24.614204, 1.157897;;,
      2;3;17.399498,24.614182, 1.157912;;,
      3;3;17.399502,24.614202, 1.157903;;,
      4;3;17.399502,24.614174, 1.157899;;,
      5;3;17.399498,24.614197, 1.157903;;,
      6;3;17.399498,24.614185, 1.157903;;,
      7;3;17.399500,24.614193, 1.157901;;,
      8;3;17.399500,24.614195, 1.157898;;,
      9;3;17.399500,24.614183, 1.157905;;,
      10;3;17.399500,24.614197, 1.157911;;,
      11;3;17.399500,24.614191, 1.157923;;,
      12;3;17.399500,24.614197, 1.157920;;,
      13;3;17.399498,24.614193, 1.157903;;,
      14;3;17.399498,24.614199, 1.157902;;,
      15;3;17.399500,24.614193, 1.157901;;,
      16;3;17.399500,24.614206, 1.157895;;,
      17;3;17.399498,24.614208, 1.157904;;,
      18;3;17.399498,24.614218, 1.157897;;,
      19;3;17.399500,24.614199, 1.157909;;,
      20;3;17.399496,24.614199, 1.157902;;,
      21;3;17.399502,24.614195, 1.157900;;,
      22;3;17.399498,24.614199, 1.157897;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.963030, 0.080383,-0.242863, 0.084430;;,
      1;4;-0.965102, 0.109570,-0.225002, 0.077110;;,
      2;4;-0.966854, 0.142218,-0.203700, 0.058936;;,
      3;4;-0.968310, 0.169991,-0.180773, 0.028271;;,
      4;4;-0.969579, 0.186586,-0.157932,-0.012631;;,
      5;4;-0.970341, 0.190969,-0.136902,-0.056803;;,
      6;4;-0.970312, 0.187232,-0.120266,-0.094736;;,
      7;4;-0.969930, 0.181277,-0.110830,-0.118706;;,
      8;4;-0.969900, 0.177086,-0.109359,-0.126396;;,
      9;4;-0.970329, 0.175617,-0.113440,-0.121459;;,
      10;4;-0.970806, 0.176269,-0.119113,-0.110803;;,
      11;4;-0.971011, 0.178308,-0.123549,-0.100401;;,
      12;4;-0.970975, 0.180824,-0.126301,-0.092509;;,
      13;4;-0.970981, 0.182415,-0.128489,-0.086084;;,
      14;4;-0.971289, 0.181956,-0.131087,-0.079407;;,
      15;4;-0.971819, 0.180084,-0.133820,-0.072312;;,
      16;4;-0.972104, 0.179751,-0.135294,-0.066329;;,
      17;4;-0.971551, 0.184723,-0.134065,-0.063196;;,
      18;4;-0.969720, 0.196916,-0.129810,-0.063377;;,
      19;4;-0.966524, 0.214994,-0.123693,-0.065641;;,
      20;4;-0.957639, 0.256154,-0.112646,-0.067996;;,
      21;4;-0.946597, 0.298666,-0.102842,-0.064623;;,
      22;4;-0.930940, 0.349052,-0.082554,-0.068549;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000006,19.910397, 0.000000;;,
      1;3; 0.000006,19.910395, 0.000002;;,
      2;3; 0.000000,19.910398,-0.000010;;,
      3;3; 0.000002,19.910402, 0.000003;;,
      4;3;-0.000003,19.910400,-0.000001;;,
      5;3; 0.000000,19.910404,-0.000003;;,
      6;3; 0.000000,19.910402, 0.000006;;,
      7;3; 0.000004,19.910398,-0.000002;;,
      8;3;-0.000008,19.910402,-0.000003;;,
      9;3; 0.000016,19.910398, 0.000001;;,
      10;3; 0.000009,19.910402,-0.000003;;,
      11;3; 0.000010,19.910402, 0.000003;;,
      12;3;-0.000001,19.910406,-0.000001;;,
      13;3; 0.000002,19.910397, 0.000002;;,
      14;3;-0.000009,19.910398, 0.000012;;,
      15;3;-0.000001,19.910391, 0.000002;;,
      16;3;-0.000008,19.910395,-0.000002;;,
      17;3;-0.000013,19.910391, 0.000008;;,
      18;3;-0.000006,19.910400,-0.000005;;,
      19;3;-0.000003,19.910400,-0.000032;;,
      20;3;-0.000000,19.910410, 0.000007;;,
      21;3;-0.000002,19.910397, 0.000006;;,
      22;3;-0.000005,19.910398,-0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.848107, 0.284842, 0.085019, 0.438579;;,
      1;4;-0.829005, 0.287832, 0.070500, 0.474271;;,
      2;4;-0.811462, 0.287172, 0.048039, 0.506709;;,
      3;4;-0.792923, 0.285668, 0.020648, 0.537811;;,
      4;4;-0.771611, 0.283649,-0.005788, 0.569321;;,
      5;4;-0.748954, 0.279367,-0.025688, 0.600301;;,
      6;4;-0.728769, 0.271606,-0.037191, 0.627489;;,
      7;4;-0.714012, 0.261433,-0.042325, 0.648112;;,
      8;4;-0.705001, 0.251283,-0.044228, 0.661720;;,
      9;4;-0.700446, 0.243083,-0.044918, 0.669528;;,
      10;4;-0.699114, 0.237371,-0.045107, 0.672949;;,
      11;4;-0.700494, 0.233782,-0.044897, 0.672784;;,
      12;4;-0.704552, 0.232142,-0.044240, 0.669148;;,
      13;4;-0.711294, 0.232893,-0.042990, 0.661796;;,
      14;4;-0.720571, 0.236290,-0.040831, 0.650598;;,
      15;4;-0.732094, 0.241190,-0.037271, 0.635985;;,
      16;4;-0.745514, 0.244827,-0.031566, 0.619090;;,
      17;4;-0.760447, 0.244042,-0.022673, 0.601374;;,
      18;4;-0.776320, 0.237046,-0.009625, 0.583989;;,
      19;4;-0.792254, 0.224414, 0.007474, 0.567376;;,
      20;4;-0.821803, 0.192505, 0.044351, 0.534429;;,
      21;4;-0.849038, 0.167950, 0.065603, 0.496611;;,
      22;4;-0.872186, 0.158039, 0.075681, 0.456715;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000005,49.301289,-0.000004;;,
      1;3; 0.000015,49.301296, 0.000001;;,
      2;3; 0.000001,49.301296,-0.000008;;,
      3;3; 0.000001,49.301300,-0.000002;;,
      4;3;-0.000003,49.301285, 0.000005;;,
      5;3; 0.000001,49.301304,-0.000001;;,
      6;3; 0.000001,49.301308,-0.000003;;,
      7;3; 0.000006,49.301292,-0.000005;;,
      8;3; 0.000010,49.301292, 0.000000;;,
      9;3;-0.000010,49.301292,-0.000002;;,
      10;3;-0.000010,49.301289, 0.000008;;,
      11;3;-0.000015,49.301300, 0.000004;;,
      12;3;-0.000002,49.301311, 0.000002;;,
      13;3;-0.000003,49.301285, 0.000000;;,
      14;3; 0.000008,49.301304,-0.000006;;,
      15;3; 0.000014,49.301300,-0.000004;;,
      16;3;-0.000018,49.301289, 0.000001;;,
      17;3;-0.000004,49.301296,-0.000004;;,
      18;3;-0.000010,49.301300,-0.000004;;,
      19;3; 0.000007,49.301289,-0.000014;;,
      20;3;-0.000009,49.301300, 0.000014;;,
      21;3; 0.000001,49.301296,-0.000004;;,
      22;3; 0.000001,49.301296, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.956740,-0.110076,-0.159031, 0.217350;;,
      1;4;-0.948777,-0.106292,-0.193694, 0.225848;;,
      2;4;-0.938942,-0.092765,-0.231158, 0.237377;;,
      3;4;-0.928736,-0.073850,-0.267234, 0.246135;;,
      4;4;-0.921160,-0.057184,-0.295566, 0.246647;;,
      5;4;-0.919247,-0.049571,-0.310066, 0.237459;;,
      6;4;-0.923174,-0.053260,-0.308253, 0.223367;;,
      7;4;-0.929580,-0.063834,-0.294130, 0.212822;;,
      8;4;-0.934611,-0.072350,-0.276727, 0.211399;;,
      9;4;-0.936770,-0.071594,-0.264192, 0.218034;;,
      10;4;-0.936652,-0.060710,-0.259453, 0.227336;;,
      11;4;-0.935558,-0.044443,-0.260960, 0.233785;;,
      12;4;-0.934687,-0.029438,-0.265940, 0.234030;;,
      13;4;-0.934635,-0.020988,-0.272626, 0.227359;;,
      14;4;-0.935259,-0.021245,-0.280157, 0.215292;;,
      15;4;-0.936275,-0.028949,-0.286917, 0.200573;;,
      16;4;-0.938169,-0.040890,-0.289194, 0.185835;;,
      17;4;-0.942273,-0.054679,-0.281833, 0.172340;;,
      18;4;-0.949430,-0.071194,-0.260921, 0.159484;;,
      19;4;-0.958307,-0.094798,-0.226734, 0.145785;;,
      20;4;-0.966418,-0.178518,-0.143936, 0.115974;;,
      21;4;-0.950011,-0.283106,-0.093401, 0.092772;;,
      22;4;-0.932311,-0.341814,-0.079106, 0.087763;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000005,31.604713, 0.000005;;,
      1;3; 0.000003,31.604717,-0.000004;;,
      2;3; 0.000009,31.604704, 0.000008;;,
      3;3; 0.000009,31.604700,-0.000005;;,
      4;3; 0.000009,31.604706, 0.000004;;,
      5;3; 0.000008,31.604702,-0.000011;;,
      6;3; 0.000006,31.604696,-0.000006;;,
      7;3;-0.000005,31.604698, 0.000002;;,
      8;3;-0.000001,31.604712, 0.000002;;,
      9;3;-0.000008,31.604713, 0.000002;;,
      10;3;-0.000010,31.604700,-0.000004;;,
      11;3; 0.000002,31.604694, 0.000003;;,
      12;3; 0.000010,31.604700, 0.000006;;,
      13;3; 0.000008,31.604712, 0.000006;;,
      14;3; 0.000002,31.604708,-0.000008;;,
      15;3; 0.000002,31.604721, 0.000004;;,
      16;3; 0.000000,31.604710,-0.000012;;,
      17;3; 0.000000,31.604706, 0.000003;;,
      18;3;-0.000002,31.604706,-0.000016;;,
      19;3; 0.000002,31.604706, 0.000013;;,
      20;3;-0.000006,31.604706,-0.000006;;,
      21;3;-0.000004,31.604712, 0.000015;;,
      22;3; 0.000003,31.604708,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.958531, 0.185226, 0.069748, 0.205050;;,
      1;4;-0.958527, 0.185211, 0.069769, 0.205071;;,
      2;4;-0.958523, 0.185194, 0.069779, 0.205106;;,
      3;4;-0.958515, 0.185169, 0.069771, 0.205167;;,
      4;4;-0.958502, 0.185133, 0.069748, 0.205266;;,
      5;4;-0.958496, 0.185101, 0.069727, 0.205331;;,
      6;4;-0.958515, 0.185089, 0.069736, 0.205250;;,
      7;4;-0.958568, 0.185083, 0.069778, 0.204994;;,
      8;4;-0.958610, 0.185072, 0.069806, 0.204800;;,
      9;4;-0.958531, 0.185036, 0.069716, 0.205231;;,
      10;4;-0.958200, 0.184901, 0.069351, 0.207017;;,
      11;4;-0.957484, 0.184625, 0.068579, 0.210798;;,
      12;4;-0.956302, 0.184197, 0.067336, 0.216851;;,
      13;4;-0.954636, 0.183633, 0.065639, 0.225036;;,
      14;4;-0.952517, 0.182968, 0.063569, 0.234934;;,
      15;4;-0.949996, 0.182250, 0.061210, 0.246060;;,
      16;4;-0.947128, 0.181518, 0.058644, 0.257993;;,
      17;4;-0.943959, 0.180815, 0.055939, 0.270404;;,
      18;4;-0.940540, 0.180176, 0.053155, 0.283010;;,
      19;4;-0.936941, 0.179633, 0.050352, 0.295530;;,
      20;4;-0.929601, 0.179025, 0.045038, 0.319003;;,
      21;4;-0.923026, 0.179532, 0.040741, 0.337834;;,
      22;4;-0.918220, 0.181617, 0.038039, 0.349916;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-7.059596, 6.094488, 4.397213;;,
      1;3;-7.059606, 6.094485, 4.397209;;,
      2;3;-7.059608, 6.094488, 4.397207;;,
      3;3;-7.059601, 6.094488, 4.397207;;,
      4;3;-7.059610, 6.094488, 4.397217;;,
      5;3;-7.059598, 6.094482, 4.397219;;,
      6;3;-7.059617, 6.094489, 4.397219;;,
      7;3;-7.059602, 6.094486, 4.397217;;,
      8;3;-7.059565, 6.094488, 4.397205;;,
      9;3;-7.059607, 6.094494, 4.397202;;,
      10;3;-7.059608, 6.094467, 4.397206;;,
      11;3;-7.059591, 6.094477, 4.397209;;,
      12;3;-7.059586, 6.094503, 4.397203;;,
      13;3;-7.059591, 6.094481, 4.397199;;,
      14;3;-7.059605, 6.094461, 4.397220;;,
      15;3;-7.059599, 6.094505, 4.397210;;,
      16;3;-7.059601, 6.094478, 4.397202;;,
      17;3;-7.059599, 6.094480, 4.397207;;,
      18;3;-7.059607, 6.094477, 4.397205;;,
      19;3;-7.059601, 6.094481, 4.397205;;,
      20;3;-7.059603, 6.094495, 4.397206;;,
      21;3;-7.059617, 6.094487, 4.397210;;,
      22;3;-7.059599, 6.094486, 4.397213;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.957903, 0.099532, 0.249673,-0.100888;;,
      1;4;-0.957325, 0.098861, 0.250118,-0.105818;;,
      2;4;-0.956780, 0.098252, 0.250511,-0.110287;;,
      3;4;-0.956284, 0.097721, 0.250849,-0.114221;;,
      4;4;-0.955854, 0.097276, 0.251128,-0.117536;;,
      5;4;-0.955506, 0.096923, 0.251346,-0.120168;;,
      6;4;-0.955251, 0.096661, 0.251500,-0.122065;;,
      7;4;-0.955105, 0.096502, 0.251588,-0.123146;;,
      8;4;-0.955091, 0.096487, 0.251600,-0.123247;;,
      9;4;-0.955203, 0.096690, 0.251640,-0.122128;;,
      10;4;-0.955430, 0.097195, 0.251827,-0.119541;;,
      11;4;-0.955746, 0.098054, 0.252258,-0.115332;;,
      12;4;-0.956116, 0.099256, 0.252963,-0.109541;;,
      13;4;-0.956513, 0.100735, 0.253882,-0.102372;;,
      14;4;-0.956913, 0.102390, 0.254900,-0.094126;;,
      15;4;-0.957308, 0.104118, 0.255882,-0.085123;;,
      16;4;-0.957694, 0.105826, 0.256707,-0.075664;;,
      17;4;-0.958076, 0.107444, 0.257272,-0.066015;;,
      18;4;-0.958463, 0.108921, 0.257492,-0.056421;;,
      19;4;-0.958871, 0.110216, 0.257290,-0.047126;;,
      20;4;-0.959859, 0.112095, 0.255291,-0.030518;;,
      21;4;-0.961279, 0.110906, 0.250956,-0.025762;;,
      22;4;-0.963803, 0.108821, 0.242188,-0.024227;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000003, 7.536503,-0.000006;;,
      1;3; 0.000002, 7.536487, 0.000000;;,
      2;3; 0.000001, 7.536487,-0.000000;;,
      3;3; 0.000009, 7.536496,-0.000004;;,
      4;3; 0.000003, 7.536495, 0.000004;;,
      5;3;-0.000001, 7.536488, 0.000008;;,
      6;3; 0.000012, 7.536495, 0.000004;;,
      7;3;-0.000029, 7.536495,-0.000004;;,
      8;3;-0.000011, 7.536497, 0.000013;;,
      9;3;-0.000003, 7.536500, 0.000002;;,
      10;3;-0.000026, 7.536492,-0.000005;;,
      11;3;-0.000026, 7.536495,-0.000004;;,
      12;3;-0.000032, 7.536489, 0.000000;;,
      13;3;-0.000018, 7.536493, 0.000017;;,
      14;3; 0.000000, 7.536495, 0.000008;;,
      15;3; 0.000008, 7.536497, 0.000003;;,
      16;3;-0.000003, 7.536496, 0.000001;;,
      17;3; 0.000001, 7.536489, 0.000009;;,
      18;3;-0.000001, 7.536488, 0.000005;;,
      19;3;-0.000005, 7.536480,-0.000007;;,
      20;3;-0.000006, 7.536503, 0.000013;;,
      21;3; 0.000006, 7.536486,-0.000011;;,
      22;3; 0.000004, 7.536495, 0.000014;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000, 7.512294, 0.000003;;,
      1;3; 0.000005, 7.512297, 0.000002;;,
      2;3; 0.000000, 7.512300,-0.000008;;,
      3;3; 0.000007, 7.512297, 0.000001;;,
      4;3; 0.000004, 7.512291,-0.000012;;,
      5;3; 0.000006, 7.512302, 0.000008;;,
      6;3; 0.000002, 7.512297,-0.000002;;,
      7;3; 0.000019, 7.512304, 0.000015;;,
      8;3; 0.000010, 7.512302, 0.000004;;,
      9;3;-0.000013, 7.512295,-0.000003;;,
      10;3; 0.000019, 7.512297,-0.000004;;,
      11;3;-0.000013, 7.512297,-0.000006;;,
      12;3;-0.000015, 7.512300, 0.000002;;,
      13;3;-0.000018, 7.512301,-0.000003;;,
      14;3;-0.000005, 7.512308, 0.000013;;,
      15;3; 0.000016, 7.512309,-0.000009;;,
      16;3; 0.000018, 7.512311,-0.000012;;,
      17;3;-0.000004, 7.512302, 0.000014;;,
      18;3;-0.000004, 7.512300, 0.000030;;,
      19;3;-0.000001, 7.512293,-0.000007;;,
      20;3;-0.000003, 7.512297,-0.000013;;,
      21;3;-0.000010, 7.512294, 0.000012;;,
      22;3;-0.000008, 7.512295, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb4}
    AnimationKey { // Rotation
      0;
      23;
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
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002,10.212400,-0.000010;;,
      1;3; 0.000005,10.212400,-0.000003;;,
      2;3;-0.000004,10.212400, 0.000001;;,
      3;3; 0.000006,10.212400, 0.000000;;,
      4;3; 0.000002,10.212395,-0.000009;;,
      5;3; 0.000000,10.212389,-0.000002;;,
      6;3;-0.000006,10.212403, 0.000008;;,
      7;3; 0.000010,10.212402, 0.000006;;,
      8;3; 0.000015,10.212406,-0.000008;;,
      9;3;-0.000004,10.212410,-0.000002;;,
      10;3;-0.000023,10.212389,-0.000005;;,
      11;3;-0.000013,10.212418, 0.000006;;,
      12;3;-0.000011,10.212404, 0.000002;;,
      13;3;-0.000018,10.212404, 0.000005;;,
      14;3; 0.000023,10.212399,-0.000006;;,
      15;3;-0.000005,10.212416, 0.000001;;,
      16;3;-0.000014,10.212394,-0.000003;;,
      17;3;-0.000002,10.212395,-0.000003;;,
      18;3; 0.000002,10.212406,-0.000016;;,
      19;3;-0.000001,10.212404,-0.000013;;,
      20;3;-0.000001,10.212406,-0.000012;;,
      21;3; 0.000004,10.212397,-0.000002;;,
      22;3;-0.000004,10.212397,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.996469, 0.083623,-0.000584, 0.007521;;,
      1;4;-0.996474, 0.083566,-0.000584, 0.007508;;,
      2;4;-0.996478, 0.083512,-0.000584, 0.007495;;,
      3;4;-0.996483, 0.083458,-0.000586, 0.007478;;,
      4;4;-0.996488, 0.083405,-0.000588, 0.007457;;,
      5;4;-0.996493, 0.083350,-0.000592, 0.007424;;,
      6;4;-0.996497, 0.083302,-0.000594, 0.007353;;,
      7;4;-0.996502, 0.083260,-0.000590, 0.007176;;,
      8;4;-0.996508, 0.083203,-0.000592, 0.007050;;,
      9;4;-0.996513, 0.083112,-0.000628, 0.007351;;,
      10;4;-0.996518, 0.082933,-0.000736, 0.008577;;,
      11;4;-0.996518, 0.082621,-0.000949, 0.011160;;,
      12;4;-0.996502, 0.082153,-0.001303, 0.015282;;,
      13;4;-0.996451, 0.081538,-0.001778, 0.020840;;,
      14;4;-0.996347, 0.080799,-0.002353, 0.027538;;,
      15;4;-0.996178, 0.079960,-0.003000, 0.035031;;,
      16;4;-0.995934, 0.079065,-0.003687, 0.043019;;,
      17;4;-0.995613, 0.078149,-0.004406, 0.051261;;,
      18;4;-0.995217, 0.077268,-0.005132, 0.059557;;,
      19;4;-0.994755, 0.076445,-0.005843, 0.067704;;,
      20;4;-0.993748, 0.074826,-0.007161, 0.082555;;,
      21;4;-0.992897, 0.073258,-0.008111, 0.093402;;,
      22;4;-0.992333, 0.073888,-0.008727, 0.098688;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-6.192897,21.271084, 0.498714;;,
      1;3;-6.192909,21.271084, 0.498710;;,
      2;3;-6.192905,21.271086, 0.498706;;,
      3;3;-6.192900,21.271090, 0.498712;;,
      4;3;-6.192903,21.271088, 0.498718;;,
      5;3;-6.192897,21.271074, 0.498718;;,
      6;3;-6.192907,21.271086, 0.498713;;,
      7;3;-6.192907,21.271084, 0.498716;;,
      8;3;-6.192881,21.271088, 0.498703;;,
      9;3;-6.192921,21.271090, 0.498701;;,
      10;3;-6.192888,21.271069, 0.498706;;,
      11;3;-6.192896,21.271080, 0.498714;;,
      12;3;-6.192884,21.271103, 0.498705;;,
      13;3;-6.192896,21.271080, 0.498693;;,
      14;3;-6.192904,21.271069, 0.498713;;,
      15;3;-6.192897,21.271103, 0.498711;;,
      16;3;-6.192896,21.271076, 0.498695;;,
      17;3;-6.192894,21.271069, 0.498705;;,
      18;3;-6.192898,21.271080, 0.498703;;,
      19;3;-6.192898,21.271080, 0.498713;;,
      20;3;-6.192898,21.271095, 0.498708;;,
      21;3;-6.192923,21.271076, 0.498709;;,
      22;3;-6.192902,21.271088, 0.498714;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.982037, 0.188636,-0.003988,-0.001776;;,
      1;4;-0.982048, 0.188580,-0.003996,-0.001771;;,
      2;4;-0.982060, 0.188519,-0.004004,-0.001766;;,
      3;4;-0.982071, 0.188458,-0.004011,-0.001763;;,
      4;4;-0.982081, 0.188410,-0.004016,-0.001761;;,
      5;4;-0.982086, 0.188381,-0.004020,-0.001763;;,
      6;4;-0.982082, 0.188401,-0.004021,-0.001768;;,
      7;4;-0.982065, 0.188491,-0.004020,-0.001779;;,
      8;4;-0.982057, 0.188534,-0.004016,-0.001794;;,
      9;4;-0.982106, 0.188279,-0.004008,-0.001824;;,
      10;4;-0.982273, 0.187406,-0.003988,-0.001929;;,
      11;4;-0.982601, 0.185675,-0.003954,-0.002139;;,
      12;4;-0.983095, 0.183040,-0.003888,-0.002457;;,
      13;4;-0.983716, 0.179669,-0.003803,-0.002864;;,
      14;4;-0.984401, 0.175867,-0.003707,-0.003323;;,
      15;4;-0.985088, 0.171971,-0.003607,-0.003793;;,
      16;4;-0.985720, 0.168305,-0.003513,-0.004234;;,
      17;4;-0.986255, 0.165134,-0.003429,-0.004614;;,
      18;4;-0.986659, 0.162691,-0.003359,-0.004905;;,
      19;4;-0.986907, 0.161179,-0.003311,-0.005084;;,
      20;4;-0.986785, 0.161926,-0.003321,-0.004987;;,
      21;4;-0.985369, 0.170350,-0.003504,-0.003954;;,
      22;4;-0.982017, 0.188746,-0.003923,-0.001702;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001, 7.536489,-0.000002;;,
      1;3;-0.000002, 7.536497,-0.000004;;,
      2;3; 0.000002, 7.536497,-0.000001;;,
      3;3; 0.000002, 7.536503,-0.000002;;,
      4;3; 0.000001, 7.536497, 0.000004;;,
      5;3;-0.000011, 7.536494, 0.000002;;,
      6;3;-0.000008, 7.536497,-0.000010;;,
      7;3;-0.000006, 7.536497,-0.000011;;,
      8;3; 0.000012, 7.536499,-0.000007;;,
      9;3;-0.000010, 7.536499,-0.000004;;,
      10;3; 0.000002, 7.536495, 0.000011;;,
      11;3;-0.000001, 7.536499, 0.000011;;,
      12;3; 0.000005, 7.536524,-0.000004;;,
      13;3; 0.000003, 7.536516, 0.000002;;,
      14;3; 0.000010, 7.536496, 0.000010;;,
      15;3;-0.000004, 7.536486,-0.000014;;,
      16;3;-0.000006, 7.536495, 0.000016;;,
      17;3; 0.000008, 7.536481, 0.000023;;,
      18;3; 0.000006, 7.536493,-0.000005;;,
      19;3;-0.000017, 7.536510,-0.000017;;,
      20;3;-0.000006, 7.536489,-0.000014;;,
      21;3;-0.000003, 7.536505, 0.000013;;,
      22;3; 0.000003, 7.536489, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002, 7.512297,-0.000004;;,
      1;3; 0.000004, 7.512289, 0.000005;;,
      2;3; 0.000000, 7.512290,-0.000004;;,
      3;3; 0.000002, 7.512296,-0.000004;;,
      4;3; 0.000000, 7.512293, 0.000002;;,
      5;3;-0.000001, 7.512294,-0.000006;;,
      6;3;-0.000006, 7.512292, 0.000000;;,
      7;3;-0.000006, 7.512291, 0.000004;;,
      8;3;-0.000012, 7.512299,-0.000002;;,
      9;3;-0.000006, 7.512295, 0.000004;;,
      10;3; 0.000012, 7.512295, 0.000017;;,
      11;3;-0.000007, 7.512296,-0.000010;;,
      12;3;-0.000004, 7.512286, 0.000006;;,
      13;3; 0.000001, 7.512303, 0.000008;;,
      14;3;-0.000001, 7.512313, 0.000010;;,
      15;3;-0.000003, 7.512292, 0.000003;;,
      16;3;-0.000002, 7.512298,-0.000001;;,
      17;3;-0.000004, 7.512302, 0.000012;;,
      18;3; 0.000004, 7.512291, 0.000010;;,
      19;3; 0.000019, 7.512299, 0.000017;;,
      20;3; 0.000011, 7.512297, 0.000006;;,
      21;3;-0.000004, 7.512297,-0.000006;;,
      22;3; 0.000006, 7.512295,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000,10.212390, 0.000002;;,
      1;3;-0.000002,10.212402,-0.000003;;,
      2;3; 0.000006,10.212389,-0.000006;;,
      3;3; 0.000008,10.212400, 0.000003;;,
      4;3; 0.000005,10.212401,-0.000008;;,
      5;3; 0.000009,10.212398,-0.000006;;,
      6;3;-0.000021,10.212389, 0.000002;;,
      7;3;-0.000003,10.212391,-0.000003;;,
      8;3;-0.000003,10.212399,-0.000009;;,
      9;3;-0.000020,10.212399,-0.000004;;,
      10;3; 0.000004,10.212395,-0.000002;;,
      11;3; 0.000001,10.212410,-0.000015;;,
      12;3; 0.000005,10.212402, 0.000006;;,
      13;3; 0.000009,10.212392,-0.000004;;,
      14;3; 0.000003,10.212414, 0.000000;;,
      15;3;-0.000001,10.212395, 0.000001;;,
      16;3; 0.000002,10.212402,-0.000019;;,
      17;3;-0.000003,10.212393,-0.000010;;,
      18;3;-0.000006,10.212406, 0.000012;;,
      19;3;-0.000027,10.212399, 0.000013;;,
      20;3; 0.000008,10.212397, 0.000000;;,
      21;3;-0.000006,10.212400, 0.000008;;,
      22;3; 0.000004,10.212402, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.993350, 0.114998,-0.002454,-0.005092;;,
      1;4;-0.993357, 0.114934,-0.002459,-0.005115;;,
      2;4;-0.993365, 0.114864,-0.002464,-0.005133;;,
      3;4;-0.993373, 0.114792,-0.002466,-0.005151;;,
      4;4;-0.993381, 0.114723,-0.002467,-0.005166;;,
      5;4;-0.993388, 0.114659,-0.002465,-0.005180;;,
      6;4;-0.993396, 0.114595,-0.002460,-0.005193;;,
      7;4;-0.993403, 0.114532,-0.002453,-0.005202;;,
      8;4;-0.993410, 0.114471,-0.002444,-0.005211;;,
      9;4;-0.993417, 0.114410,-0.002434,-0.005217;;,
      10;4;-0.993424, 0.114350,-0.002423,-0.005222;;,
      11;4;-0.993431, 0.114290,-0.002411,-0.005224;;,
      12;4;-0.993438, 0.114229,-0.002400,-0.005223;;,
      13;4;-0.993445, 0.114164,-0.002389,-0.005221;;,
      14;4;-0.993453, 0.114102,-0.002381,-0.005207;;,
      15;4;-0.993460, 0.114040,-0.002374,-0.005186;;,
      16;4;-0.993466, 0.113989,-0.002370,-0.005161;;,
      17;4;-0.993463, 0.114012,-0.002369,-0.005127;;,
      18;4;-0.993459, 0.114049,-0.002372,-0.005085;;,
      19;4;-0.993459, 0.114052,-0.002378,-0.005039;;,
      20;4;-0.993473, 0.113936,-0.002387,-0.005000;;,
      21;4;-0.993518, 0.113540,-0.002396,-0.004979;;,
      22;4;-0.993382, 0.114730,-0.002434,-0.004816;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.016503,23.334377, 0.008612;;,
      1;3; 0.016493,23.334379, 0.008604;;,
      2;3; 0.016495,23.334377, 0.008607;;,
      3;3; 0.016502,23.334379, 0.008611;;,
      4;3; 0.016498,23.334381, 0.008615;;,
      5;3; 0.016498,23.334375, 0.008615;;,
      6;3; 0.016500,23.334377, 0.008614;;,
      7;3; 0.016498,23.334375, 0.008610;;,
      8;3; 0.016531,23.334383, 0.008604;;,
      9;3; 0.016491,23.334387, 0.008601;;,
      10;3; 0.016508,23.334360, 0.008605;;,
      11;3; 0.016521,23.334373, 0.008614;;,
      12;3; 0.016516,23.334387, 0.008598;;,
      13;3; 0.016504,23.334370, 0.008597;;,
      14;3; 0.016497,23.334358, 0.008619;;,
      15;3; 0.016504,23.334381, 0.008608;;,
      16;3; 0.016502,23.334377, 0.008596;;,
      17;3; 0.016499,23.334373, 0.008604;;,
      18;3; 0.016493,23.334381, 0.008595;;,
      19;3; 0.016497,23.334373, 0.008608;;,
      20;3; 0.016500,23.334387, 0.008612;;,
      21;3; 0.016483,23.334377, 0.008606;;,
      22;3; 0.016500,23.334377, 0.008613;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.990964, 0.133871,-0.003100, 0.007740;;,
      1;4;-0.990969, 0.133835,-0.003093, 0.007731;;,
      2;4;-0.990977, 0.133777,-0.003086, 0.007722;;,
      3;4;-0.990986, 0.133705,-0.003080, 0.007711;;,
      4;4;-0.990995, 0.133642,-0.003075, 0.007700;;,
      5;4;-0.991000, 0.133605,-0.003071, 0.007691;;,
      6;4;-0.990997, 0.133628,-0.003068, 0.007685;;,
      7;4;-0.990984, 0.133725,-0.003067, 0.007682;;,
      8;4;-0.990978, 0.133774,-0.003066, 0.007672;;,
      9;4;-0.991012, 0.133518,-0.003065, 0.007632;;,
      10;4;-0.991131, 0.132637,-0.003063, 0.007525;;,
      11;4;-0.991365, 0.130889,-0.003058, 0.007325;;,
      12;4;-0.991715, 0.128227,-0.003050, 0.007026;;,
      13;4;-0.992152, 0.124822,-0.003039, 0.006646;;,
      14;4;-0.992630, 0.120985,-0.003027, 0.006220;;,
      15;4;-0.993104, 0.117052,-0.003015, 0.005784;;,
      16;4;-0.993536, 0.113352,-0.003005, 0.005373;;,
      17;4;-0.993897, 0.110153,-0.003000, 0.005018;;,
      18;4;-0.994169, 0.107689,-0.003000, 0.004744;;,
      19;4;-0.994334, 0.106164,-0.003009, 0.004573;;,
      20;4;-0.994252, 0.106919,-0.003034, 0.004654;;,
      21;4;-0.993296, 0.115419,-0.003109, 0.005596;;,
      22;4;-0.990947, 0.133992,-0.003237, 0.007696;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000008, 6.996586, 0.000002;;,
      1;3;-0.000008, 6.996607,-0.000001;;,
      2;3; 0.000002, 6.996601,-0.000004;;,
      3;3;-0.000013, 6.996595,-0.000006;;,
      4;3;-0.000001, 6.996593, 0.000004;;,
      5;3;-0.000010, 6.996598, 0.000011;;,
      6;3; 0.000012, 6.996593, 0.000000;;,
      7;3; 0.000015, 6.996590,-0.000006;;,
      8;3; 0.000007, 6.996593, 0.000007;;,
      9;3;-0.000008, 6.996593, 0.000003;;,
      10;3; 0.000025, 6.996590, 0.000004;;,
      11;3; 0.000006, 6.996614, 0.000004;;,
      12;3;-0.000010, 6.996600, 0.000000;;,
      13;3; 0.000000, 6.996601,-0.000010;;,
      14;3; 0.000004, 6.996600,-0.000005;;,
      15;3; 0.000003, 6.996567,-0.000017;;,
      16;3;-0.000010, 6.996594,-0.000002;;,
      17;3; 0.000010, 6.996592, 0.000003;;,
      18;3;-0.000006, 6.996599, 0.000009;;,
      19;3;-0.000011, 6.996590, 0.000003;;,
      20;3; 0.000000, 6.996593,-0.000008;;,
      21;3;-0.000010, 6.996595,-0.000004;;,
      22;3; 0.000002, 6.996597,-0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002, 7.016009, 0.000001;;,
      1;3;-0.000002, 7.016008,-0.000000;;,
      2;3; 0.000002, 7.016008,-0.000004;;,
      3;3; 0.000003, 7.016000,-0.000003;;,
      4;3;-0.000019, 7.016008, 0.000008;;,
      5;3; 0.000010, 7.016001,-0.000008;;,
      6;3;-0.000001, 7.016007, 0.000004;;,
      7;3;-0.000001, 7.016006, 0.000009;;,
      8;3;-0.000004, 7.016003, 0.000006;;,
      9;3; 0.000010, 7.016006, 0.000017;;,
      10;3;-0.000004, 7.015999,-0.000002;;,
      11;3; 0.000011, 7.016001,-0.000004;;,
      12;3;-0.000009, 7.016007,-0.000015;;,
      13;3; 0.000007, 7.016005,-0.000023;;,
      14;3;-0.000002, 7.016015, 0.000011;;,
      15;3; 0.000001, 7.016006, 0.000003;;,
      16;3; 0.000011, 7.016000,-0.000000;;,
      17;3;-0.000008, 7.016006, 0.000022;;,
      18;3;-0.000008, 7.016010,-0.000024;;,
      19;3;-0.000011, 7.016014,-0.000013;;,
      20;3; 0.000004, 7.016012,-0.000004;;,
      21;3; 0.000008, 7.016001, 0.000002;;,
      22;3;-0.000004, 7.016011, 0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001, 7.721593, 0.000001;;,
      1;3;-0.000004, 7.721601,-0.000002;;,
      2;3; 0.000002, 7.721601, 0.000004;;,
      3;3; 0.000002, 7.721603,-0.000003;;,
      4;3;-0.000013, 7.721601, 0.000008;;,
      5;3; 0.000010, 7.721601,-0.000006;;,
      6;3; 0.000000, 7.721609,-0.000011;;,
      7;3; 0.000014, 7.721603,-0.000002;;,
      8;3;-0.000017, 7.721596, 0.000001;;,
      9;3; 0.000020, 7.721600, 0.000015;;,
      10;3;-0.000026, 7.721601, 0.000010;;,
      11;3; 0.000004, 7.721598,-0.000002;;,
      12;3;-0.000004, 7.721601,-0.000013;;,
      13;3;-0.000009, 7.721594,-0.000023;;,
      14;3; 0.000002, 7.721604, 0.000010;;,
      15;3; 0.000000, 7.721597,-0.000011;;,
      16;3; 0.000008, 7.721605,-0.000015;;,
      17;3; 0.000006, 7.721607, 0.000010;;,
      18;3;-0.000010, 7.721615,-0.000010;;,
      19;3;-0.000010, 7.721603,-0.000008;;,
      20;3;-0.000002, 7.721596,-0.000002;;,
      21;3;-0.000001, 7.721596,-0.000017;;,
      22;3; 0.000000, 7.721602,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.983377, 0.170277,-0.011003,-0.062077;;,
      1;4;-0.983382, 0.170241,-0.011002,-0.062098;;,
      2;4;-0.983391, 0.170182,-0.010996,-0.062125;;,
      3;4;-0.983400, 0.170112,-0.010985,-0.062172;;,
      4;4;-0.983407, 0.170051,-0.010970,-0.062235;;,
      5;4;-0.983411, 0.170016,-0.010958,-0.062274;;,
      6;4;-0.983410, 0.170037,-0.010957,-0.062229;;,
      7;4;-0.983403, 0.170125,-0.010971,-0.062088;;,
      8;4;-0.983402, 0.170167,-0.010973,-0.061988;;,
      9;4;-0.983429, 0.169924,-0.010905,-0.062249;;,
      10;4;-0.983507, 0.169098,-0.010671,-0.063293;;,
      11;4;-0.983647, 0.167469,-0.010199,-0.065483;;,
      12;4;-0.983834, 0.165000,-0.009474,-0.068968;;,
      13;4;-0.984025, 0.161853,-0.008537,-0.073652;;,
      14;4;-0.984171, 0.158325,-0.007463,-0.079279;;,
      15;4;-0.984224, 0.154742,-0.006329,-0.085548;;,
      16;4;-0.984147, 0.151419,-0.005192,-0.092192;;,
      17;4;-0.983918, 0.148619,-0.004088,-0.098996;;,
      18;4;-0.983524, 0.146572,-0.003040,-0.105775;;,
      19;4;-0.982960, 0.145475,-0.002058,-0.112348;;,
      20;4;-0.981315, 0.147097,-0.000359,-0.124029;;,
      21;4;-0.978847, 0.156455, 0.000870,-0.131834;;,
      22;4;-0.975238, 0.175850, 0.001535,-0.134112;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 6.516901,22.686594, 0.103609;;,
      1;3; 6.516897,22.686592, 0.103605;;,
      2;3; 6.516893,22.686594, 0.103608;;,
      3;3; 6.516905,22.686592, 0.103607;;,
      4;3; 6.516895,22.686594, 0.103615;;,
      5;3; 6.516899,22.686577, 0.103613;;,
      6;3; 6.516902,22.686588, 0.103613;;,
      7;3; 6.516913,22.686586, 0.103607;;,
      8;3; 6.516930,22.686596, 0.103594;;,
      9;3; 6.516893,22.686605, 0.103595;;,
      10;3; 6.516905,22.686577, 0.103602;;,
      11;3; 6.516911,22.686584, 0.103611;;,
      12;3; 6.516920,22.686598, 0.103601;;,
      13;3; 6.516911,22.686588, 0.103582;;,
      14;3; 6.516897,22.686565, 0.103616;;,
      15;3; 6.516903,22.686604, 0.103604;;,
      16;3; 6.516901,22.686584, 0.103590;;,
      17;3; 6.516901,22.686579, 0.103588;;,
      18;3; 6.516888,22.686592, 0.103591;;,
      19;3; 6.516890,22.686590, 0.103591;;,
      20;3; 6.516904,22.686604, 0.103599;;,
      21;3; 6.516886,22.686588, 0.103605;;,
      22;3; 6.516907,22.686588, 0.103603;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.988858, 0.147913, 0.001717, 0.016676;;,
      1;4;-0.988864, 0.147878, 0.001701, 0.016661;;,
      2;4;-0.988873, 0.147819, 0.001690, 0.016646;;,
      3;4;-0.988884, 0.147747, 0.001681, 0.016632;;,
      4;4;-0.988894, 0.147683, 0.001672, 0.016620;;,
      5;4;-0.988899, 0.147645, 0.001665, 0.016614;;,
      6;4;-0.988896, 0.147668, 0.001659, 0.016616;;,
      7;4;-0.988882, 0.147763, 0.001655, 0.016627;;,
      8;4;-0.988874, 0.147810, 0.001651, 0.016639;;,
      9;4;-0.988914, 0.147548, 0.001648, 0.016629;;,
      10;4;-0.989048, 0.146650, 0.001644, 0.016571;;,
      11;4;-0.989312, 0.144870, 0.001635, 0.016462;;,
      12;4;-0.989708, 0.142162, 0.001623, 0.016296;;,
      13;4;-0.990203, 0.138696, 0.001608, 0.016084;;,
      14;4;-0.990746, 0.134789, 0.001591, 0.015844;;,
      15;4;-0.991286, 0.130787, 0.001575, 0.015599;;,
      16;4;-0.991780, 0.127020, 0.001576, 0.015370;;,
      17;4;-0.992194, 0.123764, 0.001587, 0.015173;;,
      18;4;-0.992506, 0.121255, 0.001601, 0.015022;;,
      19;4;-0.992696, 0.119703, 0.001613, 0.014928;;,
      20;4;-0.992603, 0.120469, 0.001685, 0.014984;;,
      21;4;-0.991506, 0.129121, 0.001799, 0.015528;;,
      22;4;-0.988840, 0.148026, 0.001980, 0.016709;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000003, 6.408594, 0.000005;;,
      1;3;-0.000011, 6.408604,-0.000008;;,
      2;3; 0.000006, 6.408592, 0.000014;;,
      3;3;-0.000006, 6.408592,-0.000004;;,
      4;3; 0.000008, 6.408602, 0.000004;;,
      5;3;-0.000014, 6.408597, 0.000000;;,
      6;3; 0.000022, 6.408606,-0.000005;;,
      7;3; 0.000002, 6.408604, 0.000011;;,
      8;3;-0.000011, 6.408596, 0.000005;;,
      9;3; 0.000011, 6.408592, 0.000002;;,
      10;3;-0.000008, 6.408606,-0.000008;;,
      11;3;-0.000013, 6.408587, 0.000008;;,
      12;3; 0.000008, 6.408612, 0.000013;;,
      13;3;-0.000004, 6.408590,-0.000006;;,
      14;3;-0.000006, 6.408602,-0.000005;;,
      15;3;-0.000002, 6.408604,-0.000018;;,
      16;3; 0.000008, 6.408591,-0.000013;;,
      17;3;-0.000011, 6.408602, 0.000002;;,
      18;3;-0.000008, 6.408592,-0.000001;;,
      19;3; 0.000011, 6.408594, 0.000012;;,
      20;3; 0.000005, 6.408596,-0.000010;;,
      21;3;-0.000006, 6.408600,-0.000006;;,
      22;3; 0.000000, 6.408588,-0.000015;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000002, 6.150297,-0.000003;;,
      1;3; 0.000002, 6.150304, 0.000010;;,
      2;3;-0.000008, 6.150291, 0.000004;;,
      3;3; 0.000015, 6.150305,-0.000006;;,
      4;3; 0.000002, 6.150293, 0.000002;;,
      5;3; 0.000010, 6.150296, 0.000006;;,
      6;3; 0.000004, 6.150309,-0.000009;;,
      7;3; 0.000004, 6.150291, 0.000010;;,
      8;3;-0.000010, 6.150288, 0.000002;;,
      9;3;-0.000015, 6.150293, 0.000008;;,
      10;3; 0.000013, 6.150306, 0.000013;;,
      11;3; 0.000002, 6.150304, 0.000006;;,
      12;3; 0.000008, 6.150295,-0.000015;;,
      13;3; 0.000008, 6.150303,-0.000003;;,
      14;3;-0.000000, 6.150303, 0.000005;;,
      15;3;-0.000001, 6.150295, 0.000011;;,
      16;3;-0.000002, 6.150297,-0.000005;;,
      17;3; 0.000013, 6.150293, 0.000013;;,
      18;3;-0.000006, 6.150295, 0.000008;;,
      19;3;-0.000008, 6.150298,-0.000010;;,
      20;3; 0.000007, 6.150301, 0.000006;;,
      21;3;-0.000006, 6.150303,-0.000011;;,
      22;3; 0.000000, 6.150300,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000004, 6.145399,-0.000001;;,
      1;3;-0.000002, 6.145404, 0.000010;;,
      2;3; 0.000000, 6.145397, 0.000004;;,
      3;3; 0.000002, 6.145403, 0.000007;;,
      4;3;-0.000007, 6.145395, 0.000006;;,
      5;3; 0.000014, 6.145396, 0.000010;;,
      6;3; 0.000001, 6.145401, 0.000000;;,
      7;3; 0.000003, 6.145397, 0.000004;;,
      8;3;-0.000009, 6.145393, 0.000002;;,
      9;3;-0.000005, 6.145393, 0.000000;;,
      10;3; 0.000010, 6.145391, 0.000010;;,
      11;3; 0.000020, 6.145411,-0.000027;;,
      12;3;-0.000004, 6.145400,-0.000019;;,
      13;3; 0.000006, 6.145409, 0.000004;;,
      14;3; 0.000003, 6.145401,-0.000003;;,
      15;3;-0.000002, 6.145406, 0.000015;;,
      16;3; 0.000002, 6.145395,-0.000032;;,
      17;3;-0.000010, 6.145393, 0.000010;;,
      18;3;-0.000010, 6.145401, 0.000013;;,
      19;3; 0.000000, 6.145394,-0.000011;;,
      20;3; 0.000003, 6.145393, 0.000006;;,
      21;3;-0.000008, 6.145404,-0.000008;;,
      22;3; 0.000000, 6.145402, 0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.983282, 0.142382,-0.011576,-0.112912;;,
      1;4;-0.983285, 0.142340,-0.011564,-0.112942;;,
      2;4;-0.983287, 0.142291,-0.011548,-0.112987;;,
      3;4;-0.983289, 0.142223,-0.011524,-0.113062;;,
      4;4;-0.983287, 0.142145,-0.011493,-0.113180;;,
      5;4;-0.983285, 0.142091,-0.011466,-0.113264;;,
      6;4;-0.983290, 0.142118,-0.011455,-0.113192;;,
      7;4;-0.983305, 0.142218,-0.011462,-0.112938;;,
      8;4;-0.983319, 0.142266,-0.011455,-0.112753;;,
      9;4;-0.983305, 0.141997,-0.011336,-0.113223;;,
      10;4;-0.983219, 0.141090,-0.010939,-0.115130;;,
      11;4;-0.983005, 0.139301,-0.010151,-0.119137;;,
      12;4;-0.982602, 0.136589,-0.008951,-0.125523;;,
      13;4;-0.981955, 0.133131,-0.007413,-0.134114;;,
      14;4;-0.981019, 0.129250,-0.005679,-0.144440;;,
      15;4;-0.979775, 0.125310,-0.003881,-0.155956;;,
      16;4;-0.978218, 0.121659,-0.002114,-0.168179;;,
      17;4;-0.976358, 0.118595,-0.000446,-0.180721;;,
      18;4;-0.974222, 0.116375, 0.001097,-0.193253;;,
      19;4;-0.971857, 0.115226, 0.002490,-0.205452;;,
      20;4;-0.966722, 0.117257, 0.004988,-0.227319;;,
      21;4;-0.961644, 0.128042, 0.006851,-0.242485;;,
      22;4;-0.956986, 0.150203, 0.008008,-0.248100;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;11.443206,18.881186, 0.461819;;,
      1;3;11.443195,18.881184, 0.461807;;,
      2;3;11.443195,18.881191, 0.461812;;,
      3;3;11.443209,18.881191, 0.461813;;,
      4;3;11.443188,18.881187, 0.461823;;,
      5;3;11.443204,18.881187, 0.461826;;,
      6;3;11.443186,18.881191, 0.461819;;,
      7;3;11.443205,18.881193, 0.461819;;,
      8;3;11.443228,18.881187, 0.461802;;,
      9;3;11.443180,18.881191, 0.461801;;,
      10;3;11.443214,18.881172, 0.461802;;,
      11;3;11.443213,18.881176, 0.461819;;,
      12;3;11.443222,18.881207, 0.461803;;,
      13;3;11.443209,18.881176, 0.461801;;,
      14;3;11.443199,18.881165, 0.461830;;,
      15;3;11.443207,18.881191, 0.461818;;,
      16;3;11.443205,18.881184, 0.461807;;,
      17;3;11.443207,18.881174, 0.461803;;,
      18;3;11.443201,18.881178, 0.461808;;,
      19;3;11.443199,18.881184, 0.461815;;,
      20;3;11.443198,18.881197, 0.461806;;,
      21;3;11.443190,18.881184, 0.461814;;,
      22;3;11.443207,18.881187, 0.461811;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.970243, 0.236944, 0.009466, 0.048953;;,
      1;4;-0.970257, 0.236888, 0.009473, 0.048946;;,
      2;4;-0.970273, 0.236825, 0.009479, 0.048939;;,
      3;4;-0.970288, 0.236763, 0.009484, 0.048934;;,
      4;4;-0.970300, 0.236713, 0.009487, 0.048932;;,
      5;4;-0.970308, 0.236682, 0.009490, 0.048934;;,
      6;4;-0.970302, 0.236702, 0.009490, 0.048944;;,
      7;4;-0.970280, 0.236791, 0.009490, 0.048963;;,
      8;4;-0.970268, 0.236834, 0.009487, 0.048980;;,
      9;4;-0.970330, 0.236580, 0.009470, 0.048981;;,
      10;4;-0.970543, 0.235711, 0.009426, 0.048974;;,
      11;4;-0.970962, 0.233987, 0.009348, 0.048953;;,
      12;4;-0.971593, 0.231363, 0.009234, 0.048917;;,
      13;4;-0.972390, 0.228006, 0.009091, 0.048867;;,
      14;4;-0.973274, 0.224220, 0.008930, 0.048809;;,
      15;4;-0.974165, 0.220341, 0.008765, 0.048747;;,
      16;4;-0.974988, 0.216688, 0.008610, 0.048686;;,
      17;4;-0.975689, 0.213529, 0.008477, 0.048632;;,
      18;4;-0.976221, 0.211096, 0.008379, 0.048587;;,
      19;4;-0.976547, 0.209590, 0.008326, 0.048557;;,
      20;4;-0.976387, 0.210332, 0.008393, 0.048558;;,
      21;4;-0.974531, 0.218724, 0.008797, 0.048707;;,
      22;4;-0.970217, 0.237044, 0.009603, 0.048953;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000004, 4.919598,-0.000007;;,
      1;3; 0.000002, 4.919598,-0.000013;;,
      2;3; 0.000006, 4.919596, 0.000010;;,
      3;3;-0.000025, 4.919598, 0.000007;;,
      4;3; 0.000000, 4.919595,-0.000004;;,
      5;3;-0.000008, 4.919596,-0.000004;;,
      6;3; 0.000012, 4.919601, 0.000004;;,
      7;3;-0.000019, 4.919598, 0.000005;;,
      8;3;-0.000013, 4.919598,-0.000010;;,
      9;3; 0.000002, 4.919601,-0.000004;;,
      10;3; 0.000008, 4.919590,-0.000008;;,
      11;3;-0.000004, 4.919587,-0.000008;;,
      12;3; 0.000002, 4.919603,-0.000008;;,
      13;3; 0.000002, 4.919612, 0.000020;;,
      14;3; 0.000003, 4.919569,-0.000011;;,
      15;3; 0.000001, 4.919598, 0.000002;;,
      16;3; 0.000010, 4.919584, 0.000025;;,
      17;3; 0.000006, 4.919598, 0.000001;;,
      18;3; 0.000008, 4.919601, 0.000000;;,
      19;3;-0.000011, 4.919599, 0.000002;;,
      20;3; 0.000004, 4.919605, 0.000029;;,
      21;3; 0.000011, 4.919598, 0.000000;;,
      22;3; 0.000004, 4.919603,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000004, 5.233003,-0.000004;;,
      1;3;-0.000008, 5.232996, 0.000009;;,
      2;3; 0.000008, 5.233000,-0.000002;;,
      3;3;-0.000027, 5.233002, 0.000007;;,
      4;3;-0.000002, 5.232998, 0.000002;;,
      5;3;-0.000020, 5.233002,-0.000002;;,
      6;3;-0.000023, 5.233003, 0.000002;;,
      7;3;-0.000005, 5.232996, 0.000000;;,
      8;3; 0.000032, 5.233000, 0.000006;;,
      9;3; 0.000011, 5.233008,-0.000002;;,
      10;3; 0.000004, 5.233005, 0.000017;;,
      11;3; 0.000017, 5.232997, 0.000015;;,
      12;3;-0.000011, 5.232995, 0.000011;;,
      13;3; 0.000004, 5.232990, 0.000018;;,
      14;3; 0.000000, 5.233004, 0.000006;;,
      15;3; 0.000005, 5.233001,-0.000003;;,
      16;3; 0.000002, 5.233009,-0.000011;;,
      17;3;-0.000004, 5.232992, 0.000000;;,
      18;3; 0.000002, 5.232995, 0.000000;;,
      19;3;-0.000022, 5.232997, 0.000011;;,
      20;3;-0.000006, 5.233000,-0.000004;;,
      21;3;-0.000008, 5.232988,-0.000006;;,
      22;3; 0.000000, 5.232997,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000005, 5.571703,-0.000003;;,
      1;3; 0.000004, 5.571693, 0.000000;;,
      2;3;-0.000008, 5.571701, 0.000000;;,
      3;3;-0.000011, 5.571704,-0.000002;;,
      4;3; 0.000000, 5.571700, 0.000004;;,
      5;3; 0.000001, 5.571703, 0.000006;;,
      6;3; 0.000028, 5.571702,-0.000005;;,
      7;3;-0.000023, 5.571703, 0.000008;;,
      8;3; 0.000002, 5.571705, 0.000000;;,
      9;3;-0.000013, 5.571689, 0.000006;;,
      10;3;-0.000010, 5.571692,-0.000004;;,
      11;3; 0.000004, 5.571700, 0.000008;;,
      12;3;-0.000010, 5.571706, 0.000013;;,
      13;3;-0.000004, 5.571687, 0.000017;;,
      14;3;-0.000002, 5.571705,-0.000015;;,
      15;3; 0.000007, 5.571702, 0.000005;;,
      16;3;-0.000004, 5.571711,-0.000014;;,
      17;3;-0.000008, 5.571699, 0.000000;;,
      18;3;-0.000008, 5.571710, 0.000019;;,
      19;3; 0.000001, 5.571706, 0.000004;;,
      20;3; 0.000010, 5.571707,-0.000031;;,
      21;3; 0.000004, 5.571703, 0.000011;;,
      22;3; 0.000008, 5.571696,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.574499, 0.539317,-0.460541, 0.408643;;,
      1;4;-0.571285, 0.545958,-0.451801, 0.414051;;,
      2;4;-0.577005, 0.548039,-0.445923, 0.409721;;,
      3;4;-0.587733, 0.545535,-0.444422, 0.399312;;,
      4;4;-0.598251, 0.540603,-0.446323, 0.388124;;,
      5;4;-0.605243, 0.536161,-0.449259, 0.379971;;,
      6;4;-0.608754, 0.533530,-0.451519, 0.375359;;,
      7;4;-0.611086, 0.531655,-0.453241, 0.372142;;,
      8;4;-0.614454, 0.528465,-0.455870, 0.367903;;,
      9;4;-0.619292, 0.522780,-0.460588, 0.361991;;,
      10;4;-0.624300, 0.515180,-0.467231, 0.355716;;,
      11;4;-0.627831, 0.507407,-0.474527, 0.350986;;,
      12;4;-0.629175, 0.500994,-0.481105, 0.348829;;,
      13;4;-0.628732, 0.496448,-0.486272, 0.348962;;,
      14;4;-0.627263, 0.493534,-0.489998, 0.350525;;,
      15;4;-0.625086, 0.492168,-0.492289, 0.353114;;,
      16;4;-0.621859, 0.492944,-0.492676, 0.357165;;,
      17;4;-0.617027, 0.496748,-0.490367, 0.363399;;,
      18;4;-0.610510, 0.503720,-0.485079, 0.371810;;,
      19;4;-0.603169, 0.512425,-0.477899, 0.381078;;,
      20;4;-0.592601, 0.523911,-0.468207, 0.393857;;,
      21;4;-0.591230, 0.518012,-0.475219, 0.395320;;,
      22;4;-0.587023, 0.510532,-0.484825, 0.399632;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-17.399506,24.614300, 1.157887;;,
      1;3;-17.399504,24.614321, 1.157905;;,
      2;3;-17.399502,24.614294, 1.157911;;,
      3;3;-17.399504,24.614309, 1.157905;;,
      4;3;-17.399504,24.614281, 1.157898;;,
      5;3;-17.399502,24.614307, 1.157902;;,
      6;3;-17.399502,24.614290, 1.157904;;,
      7;3;-17.399498,24.614305, 1.157899;;,
      8;3;-17.399502,24.614304, 1.157901;;,
      9;3;-17.399504,24.614288, 1.157913;;,
      10;3;-17.399506,24.614307, 1.157905;;,
      11;3;-17.399500,24.614304, 1.157923;;,
      12;3;-17.399504,24.614305, 1.157916;;,
      13;3;-17.399500,24.614302, 1.157892;;,
      14;3;-17.399502,24.614309, 1.157904;;,
      15;3;-17.399506,24.614296, 1.157895;;,
      16;3;-17.399502,24.614309, 1.157905;;,
      17;3;-17.399502,24.614311, 1.157901;;,
      18;3;-17.399502,24.614326, 1.157896;;,
      19;3;-17.399504,24.614302, 1.157905;;,
      20;3;-17.399504,24.614309, 1.157902;;,
      21;3;-17.399502,24.614302, 1.157899;;,
      22;3;-17.399500,24.614305, 1.157899;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.880366, 0.031620, 0.357696,-0.309854;;,
      1;4;-0.892462, 0.048536, 0.337195,-0.295728;;,
      2;4;-0.909152, 0.086078, 0.307116,-0.267792;;,
      3;4;-0.923358, 0.138634, 0.274894,-0.229397;;,
      4;4;-0.930381, 0.195419, 0.248534,-0.185564;;,
      5;4;-0.930396, 0.245451, 0.231600,-0.143101;;,
      6;4;-0.926623, 0.282629, 0.222823,-0.108811;;,
      7;4;-0.921753, 0.307525, 0.219490,-0.087312;;,
      8;4;-0.916432, 0.324869, 0.219714,-0.079620;;,
      9;4;-0.910276, 0.339399, 0.222101,-0.082929;;,
      10;4;-0.903335, 0.353346, 0.225087,-0.092019;;,
      11;4;-0.896494, 0.366434, 0.227308,-0.101759;;,
      12;4;-0.890956, 0.377104, 0.228167,-0.109222;;,
      13;4;-0.887618, 0.383706, 0.227734,-0.114200;;,
      14;4;-0.886814, 0.385272, 0.226262,-0.118032;;,
      15;4;-0.888369, 0.381944, 0.223828,-0.121743;;,
      16;4;-0.891738, 0.375141, 0.220284,-0.124693;;,
      17;4;-0.896141, 0.367516, 0.215372,-0.124410;;,
      18;4;-0.900593, 0.362600, 0.208877,-0.117572;;,
      19;4;-0.903802, 0.364020, 0.200741,-0.101655;;,
      20;4;-0.900145, 0.393784, 0.180780,-0.044629;;,
      21;4;-0.879517, 0.448427, 0.157761, 0.021795;;,
      22;4;-0.855908, 0.495152, 0.128200, 0.076227;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001,19.910404,-0.000002;;,
      1;3;-0.000008,19.910406, 0.000011;;,
      2;3;-0.000004,19.910402,-0.000001;;,
      3;3; 0.000001,19.910406,-0.000011;;,
      4;3; 0.000001,19.910404, 0.000006;;,
      5;3; 0.000001,19.910404,-0.000006;;,
      6;3; 0.000002,19.910404, 0.000000;;,
      7;3;-0.000002,19.910404,-0.000000;;,
      8;3; 0.000002,19.910402, 0.000013;;,
      9;3;-0.000001,19.910408,-0.000003;;,
      10;3;-0.000010,19.910404, 0.000002;;,
      11;3;-0.000002,19.910406, 0.000005;;,
      12;3; 0.000024,19.910410,-0.000006;;,
      13;3;-0.000022,19.910408,-0.000002;;,
      14;3;-0.000003,19.910402,-0.000002;;,
      15;3;-0.000012,19.910400,-0.000009;;,
      16;3; 0.000004,19.910410,-0.000005;;,
      17;3; 0.000000,19.910406, 0.000006;;,
      18;3;-0.000000,19.910404,-0.000006;;,
      19;3;-0.000004,19.910404, 0.000007;;,
      20;3; 0.000001,19.910404,-0.000004;;,
      21;3; 0.000000,19.910404,-0.000013;;,
      22;3; 0.000000,19.910406, 0.000018;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.849515, 0.239278,-0.044248,-0.468094;;,
      1;4;-0.818305, 0.246770,-0.041653,-0.517443;;,
      2;4;-0.785462, 0.239414,-0.041589,-0.569210;;,
      3;4;-0.756317, 0.221348,-0.039494,-0.614353;;,
      4;4;-0.733530, 0.199317,-0.033431,-0.648913;;,
      5;4;-0.717222, 0.178922,-0.025633,-0.672995;;,
      6;4;-0.706632, 0.162931,-0.020339,-0.688266;;,
      7;4;-0.701385, 0.151655,-0.020590,-0.696158;;,
      8;4;-0.701121, 0.144199,-0.026380,-0.697811;;,
      9;4;-0.704932, 0.139430,-0.034984,-0.694554;;,
      10;4;-0.711924, 0.136385,-0.042683,-0.687562;;,
      11;4;-0.721692, 0.134378,-0.046622,-0.677443;;,
      12;4;-0.733758, 0.133253,-0.045815,-0.664638;;,
      13;4;-0.747168, 0.133475,-0.041410,-0.649777;;,
      14;4;-0.761001, 0.135451,-0.036732,-0.633389;;,
      15;4;-0.774901, 0.138916,-0.036330,-0.615557;;,
      16;4;-0.788790, 0.143024,-0.043619,-0.596198;;,
      17;4;-0.802356, 0.146483,-0.058554,-0.575620;;,
      18;4;-0.815261, 0.147468,-0.076947,-0.554691;;,
      19;4;-0.827748, 0.144051,-0.091972,-0.534438;;,
      20;4;-0.853971, 0.123269,-0.090854,-0.497277;;,
      21;4;-0.879108, 0.102106,-0.060686,-0.461586;;,
      22;4;-0.896475, 0.099896,-0.054692,-0.428209;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000008,49.301296, 0.000025;;,
      1;3;-0.000002,49.301308, 0.000020;;,
      2;3; 0.000010,49.301304, 0.000028;;,
      3;3; 0.000001,49.301304, 0.000028;;,
      4;3;-0.000001,49.301300, 0.000025;;,
      5;3; 0.000002,49.301315, 0.000037;;,
      6;3; 0.000002,49.301308, 0.000009;;,
      7;3; 0.000004,49.301289, 0.000030;;,
      8;3; 0.000002,49.301323, 0.000023;;,
      9;3;-0.000006,49.301300, 0.000025;;,
      10;3; 0.000002,49.301285, 0.000015;;,
      11;3;-0.000019,49.301319, 0.000016;;,
      12;3;-0.000035,49.301304, 0.000013;;,
      13;3;-0.000004,49.301308, 0.000015;;,
      14;3; 0.000011,49.301308, 0.000021;;,
      15;3;-0.000022,49.301308, 0.000023;;,
      16;3; 0.000018,49.301304, 0.000011;;,
      17;3;-0.000027,49.301308, 0.000036;;,
      18;3; 0.000018,49.301304, 0.000027;;,
      19;3; 0.000012,49.301308, 0.000027;;,
      20;3; 0.000002,49.301300, 0.000035;;,
      21;3;-0.000001,49.301292, 0.000012;;,
      22;3;-0.000000,49.301304, 0.000022;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.985406,-0.030242, 0.089525,-0.141581;;,
      1;4;-0.981546, 0.020840, 0.127186,-0.141269;;,
      2;4;-0.974926, 0.080757, 0.153530,-0.139377;;,
      3;4;-0.966703, 0.141393, 0.165218,-0.134891;;,
      4;4;-0.959339, 0.189646, 0.163978,-0.129673;;,
      5;4;-0.955857, 0.215370, 0.153203,-0.128386;;,
      6;4;-0.957024, 0.217724, 0.136182,-0.134743;;,
      7;4;-0.960503, 0.205377, 0.115940,-0.147692;;,
      8;4;-0.963460, 0.191345, 0.094992,-0.161580;;,
      9;4;-0.964821, 0.185804, 0.075543,-0.169975;;,
      10;4;-0.964881, 0.191226, 0.060366,-0.169685;;,
      11;4;-0.964311, 0.202552, 0.052495,-0.162236;;,
      12;4;-0.964059, 0.211045, 0.053194,-0.152381;;,
      13;4;-0.965297, 0.208630, 0.060186,-0.145099;;,
      14;4;-0.968773, 0.190626, 0.067923,-0.143271;;,
      15;4;-0.974153, 0.156505, 0.069757,-0.147194;;,
      16;4;-0.979951, 0.109074, 0.060868,-0.155221;;,
      17;4;-0.984137, 0.052655, 0.040696,-0.164456;;,
      18;4;-0.985081,-0.008696, 0.013460,-0.171344;;,
      19;4;-0.982278,-0.071445,-0.013922,-0.172716;;,
      20;4;-0.969832,-0.181021,-0.047575,-0.156186;;,
      21;4;-0.961958,-0.232695,-0.050973,-0.133760;;,
      22;4;-0.961743,-0.235215,-0.054720,-0.129344;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000001,31.604996,-0.000001;;,
      1;3;-0.000000,31.604994,-0.000003;;,
      2;3;-0.000009,31.604982,-0.000002;;,
      3;3;-0.000008,31.604992,-0.000010;;,
      4;3; 0.000006,31.604996,-0.000003;;,
      5;3;-0.000010,31.604992, 0.000002;;,
      6;3;-0.000021,31.604986, 0.000010;;,
      7;3; 0.000017,31.604988,-0.000008;;,
      8;3; 0.000016,31.604996,-0.000013;;,
      9;3; 0.000006,31.604992,-0.000005;;,
      10;3; 0.000008,31.604988, 0.000004;;,
      11;3; 0.000000,31.604986,-0.000015;;,
      12;3; 0.000002,31.605015,-0.000002;;,
      13;3;-0.000006,31.604998, 0.000000;;,
      14;3;-0.000001,31.604988, 0.000001;;,
      15;3; 0.000007,31.605011, 0.000002;;,
      16;3;-0.000006,31.604992,-0.000006;;,
      17;3; 0.000016,31.605001,-0.000001;;,
      18;3; 0.000006,31.604988,-0.000008;;,
      19;3;-0.000006,31.604998,-0.000012;;,
      20;3;-0.000012,31.604988, 0.000002;;,
      21;3;-0.000006,31.604990,-0.000002;;,
      22;3;-0.000004,31.604996,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.946402, 0.268821, 0.010193,-0.178761;;,
      1;4;-0.946394, 0.268843, 0.010199,-0.178769;;,
      2;4;-0.946385, 0.268869, 0.010214,-0.178777;;,
      3;4;-0.946377, 0.268891, 0.010228,-0.178783;;,
      4;4;-0.946373, 0.268905, 0.010244,-0.178786;;,
      5;4;-0.946372, 0.268909, 0.010269,-0.178780;;,
      6;4;-0.946391, 0.268912, 0.010288,-0.178677;;,
      7;4;-0.946438, 0.268901, 0.010305,-0.178440;;,
      8;4;-0.946475, 0.268874, 0.010325,-0.178283;;,
      9;4;-0.946423, 0.268839, 0.010467,-0.178605;;,
      10;4;-0.946189, 0.268717, 0.010907,-0.179998;;,
      11;4;-0.945683, 0.268459, 0.011800,-0.182958;;,
      12;4;-0.944853, 0.268039, 0.013221,-0.187707;;,
      13;4;-0.943691, 0.267458, 0.015144,-0.194124;;,
      14;4;-0.942228, 0.266737, 0.017474,-0.201873;;,
      15;4;-0.940505, 0.265907, 0.020095,-0.210571;;,
      16;4;-0.938567, 0.264991, 0.022907,-0.219881;;,
      17;4;-0.936451, 0.264013, 0.025826,-0.229542;;,
      18;4;-0.934200, 0.262990, 0.028782,-0.239330;;,
      19;4;-0.931862, 0.261951, 0.031700,-0.249018;;,
      20;4;-0.927232, 0.259918, 0.037170,-0.267025;;,
      21;4;-0.923352, 0.258253, 0.041505,-0.281078;;,
      22;4;-0.920916, 0.257266, 0.043844,-0.289493;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 7.059702, 6.093999, 4.396988;;,
      1;3; 7.059707, 6.093990, 4.396989;;,
      2;3; 7.059704, 6.093997, 4.396993;;,
      3;3; 7.059702, 6.094000, 4.396986;;,
      4;3; 7.059696, 6.094009, 4.396984;;,
      5;3; 7.059690, 6.093994, 4.396988;;,
      6;3; 7.059710, 6.094004, 4.396986;;,
      7;3; 7.059684, 6.093997, 4.396980;;,
      8;3; 7.059712, 6.094002, 4.396990;;,
      9;3; 7.059700, 6.094006, 4.396996;;,
      10;3; 7.059693, 6.093996, 4.396986;;,
      11;3; 7.059710, 6.093999, 4.396999;;,
      12;3; 7.059698, 6.093997, 4.396973;;,
      13;3; 7.059705, 6.094005, 4.396995;;,
      14;3; 7.059703, 6.093977, 4.396997;;,
      15;3; 7.059706, 6.093997, 4.396990;;,
      16;3; 7.059706, 6.094019, 4.396992;;,
      17;3; 7.059710, 6.093988, 4.396986;;,
      18;3; 7.059699, 6.094007, 4.397001;;,
      19;3; 7.059692, 6.093983, 4.396996;;,
      20;3; 7.059709, 6.094007, 4.396987;;,
      21;3; 7.059707, 6.094005, 4.396984;;,
      22;3; 7.059708, 6.094002, 4.396992;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.895048,-0.115233,-0.379297, 0.204314;;,
      1;4;-0.892066,-0.119386,-0.377192, 0.218385;;,
      2;4;-0.889163,-0.123148,-0.375202, 0.231185;;,
      3;4;-0.886431,-0.126469,-0.373390, 0.242539;;,
      4;4;-0.883979,-0.129290,-0.371818, 0.252222;;,
      5;4;-0.881924,-0.131562,-0.370518, 0.260036;;,
      6;4;-0.880373,-0.133251,-0.369504, 0.265808;;,
      7;4;-0.879432,-0.134298,-0.368828, 0.269312;;,
      8;4;-0.879192,-0.134562,-0.368640, 0.270219;;,
      9;4;-0.879732,-0.133865,-0.369194, 0.268043;;,
      10;4;-0.881064,-0.132009,-0.370774, 0.262347;;,
      11;4;-0.883112,-0.128896,-0.373560, 0.252887;;,
      12;4;-0.885711,-0.124555,-0.377506, 0.239774;;,
      13;4;-0.888639,-0.119182,-0.382370, 0.223404;;,
      14;4;-0.891678,-0.113024,-0.387795, 0.204330;;,
      15;4;-0.894641,-0.106341,-0.393404, 0.183147;;,
      16;4;-0.897382,-0.099371,-0.398850, 0.160463;;,
      17;4;-0.899810,-0.092311,-0.403836, 0.136886;;,
      18;4;-0.901882,-0.085324,-0.408116, 0.113007;;,
      19;4;-0.903616,-0.078535,-0.411497, 0.089335;;,
      20;4;-0.906424,-0.065838,-0.414847, 0.044308;;,
      21;4;-0.909583,-0.055403,-0.411750, 0.007199;;,
      22;4;-0.914838,-0.049363,-0.400590,-0.012720;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000004, 7.536296, 0.000004;;,
      1;3; 0.000000, 7.536304,-0.000003;;,
      2;3; 0.000004, 7.536306, 0.000002;;,
      3;3;-0.000000, 7.536307, 0.000002;;,
      4;3; 0.000001, 7.536311, 0.000007;;,
      5;3;-0.000014, 7.536304,-0.000003;;,
      6;3; 0.000006, 7.536308, 0.000006;;,
      7;3;-0.000005, 7.536306, 0.000006;;,
      8;3; 0.000006, 7.536303, 0.000005;;,
      9;3; 0.000032, 7.536306, 0.000003;;,
      10;3;-0.000018, 7.536306,-0.000006;;,
      11;3; 0.000013, 7.536309,-0.000006;;,
      12;3;-0.000007, 7.536310, 0.000008;;,
      13;3;-0.000008, 7.536304,-0.000005;;,
      14;3;-0.000001, 7.536306, 0.000009;;,
      15;3;-0.000006, 7.536304, 0.000001;;,
      16;3; 0.000003, 7.536307,-0.000006;;,
      17;3; 0.000000, 7.536309, 0.000008;;,
      18;3; 0.000002, 7.536304,-0.000003;;,
      19;3;-0.000003, 7.536308, 0.000002;;,
      20;3; 0.000004, 7.536306,-0.000006;;,
      21;3; 0.000008, 7.536310, 0.000015;;,
      22;3; 0.000009, 7.536309,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      1;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      2;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      3;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      4;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      5;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      6;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      7;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      8;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      9;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      10;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      11;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      12;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      13;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      14;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      15;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      16;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      17;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      18;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      19;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      20;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      21;4;-1.000000,-0.000001, 0.000001, 0.000001;;,
      22;4;-1.000000,-0.000001, 0.000001, 0.000001;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002, 7.512691, 0.000000;;,
      1;3;-0.000002, 7.512685,-0.000004;;,
      2;3; 0.000001, 7.512694,-0.000013;;,
      3;3;-0.000003, 7.512694,-0.000001;;,
      4;3;-0.000002, 7.512696,-0.000001;;,
      5;3; 0.000004, 7.512694, 0.000001;;,
      6;3;-0.000004, 7.512692,-0.000025;;,
      7;3;-0.000004, 7.512691, 0.000004;;,
      8;3; 0.000013, 7.512697,-0.000001;;,
      9;3; 0.000008, 7.512691, 0.000001;;,
      10;3;-0.000008, 7.512703,-0.000000;;,
      11;3; 0.000006, 7.512691,-0.000003;;,
      12;3;-0.000001, 7.512697,-0.000005;;,
      13;3; 0.000019, 7.512695, 0.000000;;,
      14;3;-0.000004, 7.512700, 0.000001;;,
      15;3;-0.000006, 7.512698,-0.000009;;,
      16;3;-0.000009, 7.512709,-0.000011;;,
      17;3; 0.000013, 7.512694,-0.000015;;,
      18;3;-0.000006, 7.512701,-0.000025;;,
      19;3; 0.000006, 7.512707,-0.000005;;,
      20;3; 0.000004, 7.512693,-0.000009;;,
      21;3; 0.000001, 7.512699, 0.000006;;,
      22;3;-0.000003, 7.512697,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb4}
    AnimationKey { // Rotation
      0;
      23;
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
      22;4;-1.000000, 0.000001,-0.000001,-0.000001;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000,10.212726,-0.000003;;,
      1;3;-0.000004,10.212727,-0.000008;;,
      2;3; 0.000004,10.212721,-0.000003;;,
      3;3;-0.000008,10.212723,-0.000001;;,
      4;3;-0.000003,10.212725,-0.000004;;,
      5;3; 0.000000,10.212726, 0.000006;;,
      6;3;-0.000001,10.212730, 0.000003;;,
      7;3; 0.000015,10.212717,-0.000010;;,
      8;3;-0.000006,10.212730, 0.000001;;,
      9;3;-0.000002,10.212721,-0.000020;;,
      10;3; 0.000021,10.212717, 0.000004;;,
      11;3; 0.000019,10.212727,-0.000006;;,
      12;3;-0.000023,10.212720,-0.000001;;,
      13;3;-0.000007,10.212723, 0.000005;;,
      14;3;-0.000018,10.212715, 0.000008;;,
      15;3;-0.000017,10.212710, 0.000002;;,
      16;3; 0.000010,10.212717,-0.000001;;,
      17;3; 0.000018,10.212718,-0.000006;;,
      18;3; 0.000008,10.212725, 0.000011;;,
      19;3; 0.000000,10.212729, 0.000009;;,
      20;3; 0.000000,10.212717, 0.000016;;,
      21;3;-0.000003,10.212719, 0.000015;;,
      22;3;-0.000001,10.212727, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.996412, 0.083611, 0.011392,-0.006581;;,
      1;4;-0.996415, 0.083574, 0.011386,-0.006598;;,
      2;4;-0.996418, 0.083533, 0.011381,-0.006621;;,
      3;4;-0.996422, 0.083487, 0.011379,-0.006667;;,
      4;4;-0.996425, 0.083437, 0.011384,-0.006763;;,
      5;4;-0.996429, 0.083388, 0.011389,-0.006833;;,
      6;4;-0.996432, 0.083351, 0.011386,-0.006761;;,
      7;4;-0.996436, 0.083329, 0.011375,-0.006521;;,
      8;4;-0.996439, 0.083300, 0.011372,-0.006347;;,
      9;4;-0.996443, 0.083217, 0.011421,-0.006788;;,
      10;4;-0.996444, 0.083015, 0.011576,-0.008575;;,
      11;4;-0.996432, 0.082640, 0.011907,-0.012332;;,
      12;4;-0.996381, 0.082066, 0.012426,-0.018312;;,
      13;4;-0.996254, 0.081306, 0.013121,-0.026352;;,
      14;4;-0.996015, 0.080395, 0.013955,-0.036009;;,
      15;4;-0.995636, 0.079372, 0.014892,-0.046766;;,
      16;4;-0.995106, 0.078281, 0.015882,-0.058172;;,
      17;4;-0.994425, 0.077147, 0.016907,-0.069861;;,
      18;4;-0.993607, 0.076003, 0.017933,-0.081524;;,
      19;4;-0.992680, 0.074875, 0.018937,-0.092855;;,
      20;4;-0.990699, 0.072796, 0.020724,-0.113081;;,
      21;4;-0.989121, 0.071051, 0.021837,-0.126940;;,
      22;4;-0.988419, 0.071639, 0.022290,-0.131905;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 6.192905,21.270994, 0.499002;;,
      1;3; 6.192905,21.270990, 0.499000;;,
      2;3; 6.192900,21.270996, 0.499000;;,
      3;3; 6.192900,21.270994, 0.499003;;,
      4;3; 6.192898,21.271006, 0.499000;;,
      5;3; 6.192887,21.270990, 0.499004;;,
      6;3; 6.192909,21.271000, 0.498995;;,
      7;3; 6.192873,21.270996, 0.498991;;,
      8;3; 6.192918,21.271000, 0.499001;;,
      9;3; 6.192897,21.271004, 0.499001;;,
      10;3; 6.192910,21.270988, 0.498996;;,
      11;3; 6.192919,21.271000, 0.499009;;,
      12;3; 6.192910,21.270992, 0.498987;;,
      13;3; 6.192913,21.271000, 0.499012;;,
      14;3; 6.192899,21.270987, 0.498995;;,
      15;3; 6.192907,21.271000, 0.499001;;,
      16;3; 6.192904,21.271011, 0.499003;;,
      17;3; 6.192907,21.270985, 0.498998;;,
      18;3; 6.192903,21.271017, 0.499002;;,
      19;3; 6.192902,21.270987, 0.499017;;,
      20;3; 6.192907,21.271006, 0.499002;;,
      21;3; 6.192898,21.271000, 0.498989;;,
      22;3; 6.192905,21.271004, 0.499003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.982040, 0.188544, 0.003742, 0.005912;;,
      1;4;-0.982052, 0.188479, 0.003743, 0.005935;;,
      2;4;-0.982066, 0.188408, 0.003744, 0.005957;;,
      3;4;-0.982079, 0.188336, 0.003746, 0.005978;;,
      4;4;-0.982093, 0.188266, 0.003747, 0.005996;;,
      5;4;-0.982105, 0.188203, 0.003749, 0.006012;;,
      6;4;-0.982117, 0.188139, 0.003750, 0.006028;;,
      7;4;-0.982129, 0.188076, 0.003750, 0.006045;;,
      8;4;-0.982140, 0.188014, 0.003748, 0.006063;;,
      9;4;-0.982152, 0.187953, 0.003746, 0.006082;;,
      10;4;-0.982164, 0.187891, 0.003743, 0.006104;;,
      11;4;-0.982175, 0.187831, 0.003737, 0.006130;;,
      12;4;-0.982186, 0.187774, 0.003729, 0.006165;;,
      13;4;-0.982198, 0.187710, 0.003720, 0.006202;;,
      14;4;-0.982211, 0.187643, 0.003709, 0.006232;;,
      15;4;-0.982224, 0.187575, 0.003699, 0.006247;;,
      16;4;-0.982234, 0.187518, 0.003687, 0.006257;;,
      17;4;-0.982230, 0.187539, 0.003674, 0.006260;;,
      18;4;-0.982223, 0.187578, 0.003648, 0.006251;;,
      19;4;-0.982221, 0.187590, 0.003627, 0.006215;;,
      20;4;-0.982244, 0.187475, 0.003612, 0.006142;;,
      21;4;-0.982319, 0.187081, 0.003611, 0.006036;;,
      22;4;-0.982087, 0.188304, 0.003644, 0.005864;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000002, 7.535995,-0.000001;;,
      1;3; 0.000002, 7.536002,-0.000004;;,
      2;3;-0.000002, 7.535994,-0.000004;;,
      3;3; 0.000003, 7.535997, 0.000007;;,
      4;3;-0.000002, 7.536001, 0.000001;;,
      5;3;-0.000014, 7.536003, 0.000006;;,
      6;3; 0.000000, 7.535994, 0.000009;;,
      7;3; 0.000010, 7.535999,-0.000002;;,
      8;3; 0.000000, 7.535999, 0.000003;;,
      9;3; 0.000014, 7.535990, 0.000003;;,
      10;3; 0.000010, 7.535984,-0.000003;;,
      11;3; 0.000012, 7.535991, 0.000008;;,
      12;3;-0.000019, 7.535996,-0.000005;;,
      13;3; 0.000013, 7.535989, 0.000007;;,
      14;3;-0.000004, 7.535995,-0.000002;;,
      15;3; 0.000006, 7.535995,-0.000007;;,
      16;3;-0.000000, 7.535987, 0.000003;;,
      17;3; 0.000000, 7.536003,-0.000018;;,
      18;3;-0.000002, 7.535994,-0.000010;;,
      19;3; 0.000004, 7.536003,-0.000016;;,
      20;3; 0.000000, 7.535997,-0.000010;;,
      21;3; 0.000001, 7.535995, 0.000008;;,
      22;3; 0.000002, 7.535991, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000003, 7.513009,-0.000001;;,
      1;3; 0.000003, 7.513002, 0.000001;;,
      2;3;-0.000002, 7.513003,-0.000006;;,
      3;3; 0.000007, 7.513002,-0.000006;;,
      4;3; 0.000014, 7.513002,-0.000004;;,
      5;3;-0.000009, 7.513001, 0.000005;;,
      6;3; 0.000013, 7.513005, 0.000002;;,
      7;3; 0.000010, 7.513003,-0.000002;;,
      8;3; 0.000017, 7.512998, 0.000008;;,
      9;3; 0.000005, 7.513001,-0.000008;;,
      10;3; 0.000012, 7.513000,-0.000009;;,
      11;3;-0.000004, 7.513003,-0.000007;;,
      12;3;-0.000004, 7.513002, 0.000001;;,
      13;3;-0.000019, 7.513004, 0.000011;;,
      14;3; 0.000006, 7.513006,-0.000010;;,
      15;3;-0.000004, 7.513002,-0.000010;;,
      16;3;-0.000003, 7.513010,-0.000002;;,
      17;3;-0.000002, 7.513008, 0.000004;;,
      18;3;-0.000004, 7.513006,-0.000023;;,
      19;3;-0.000008, 7.512995, 0.000004;;,
      20;3;-0.000000, 7.513002, 0.000002;;,
      21;3; 0.000011, 7.512998,-0.000011;;,
      22;3;-0.000002, 7.513003,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000004,10.212008, 0.000003;;,
      1;3; 0.000001,10.212005, 0.000004;;,
      2;3; 0.000002,10.212006,-0.000002;;,
      3;3; 0.000001,10.212009,-0.000004;;,
      4;3; 0.000010,10.212003,-0.000003;;,
      5;3; 0.000002,10.212004, 0.000004;;,
      6;3; 0.000013,10.212008,-0.000003;;,
      7;3;-0.000003,10.212008,-0.000000;;,
      8;3; 0.000013,10.212008,-0.000007;;,
      9;3; 0.000026,10.212009,-0.000003;;,
      10;3; 0.000034,10.212004,-0.000005;;,
      11;3;-0.000004,10.212011,-0.000002;;,
      12;3;-0.000002,10.212008,-0.000002;;,
      13;3;-0.000016,10.212011, 0.000023;;,
      14;3;-0.000004,10.212008, 0.000001;;,
      15;3; 0.000001,10.212007,-0.000007;;,
      16;3;-0.000001,10.212007,-0.000002;;,
      17;3;-0.000002,10.212009, 0.000000;;,
      18;3;-0.000007,10.212011,-0.000010;;,
      19;3; 0.000002,10.212002, 0.000013;;,
      20;3;-0.000000,10.212015,-0.000006;;,
      21;3; 0.000007,10.211999, 0.000008;;,
      22;3;-0.000002,10.212009,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.993272, 0.114967, 0.012587, 0.005902;;,
      1;4;-0.993278, 0.114908, 0.012628, 0.005921;;,
      2;4;-0.993285, 0.114843, 0.012672, 0.005939;;,
      3;4;-0.993292, 0.114776, 0.012719, 0.005956;;,
      4;4;-0.993299, 0.114709, 0.012767, 0.005971;;,
      5;4;-0.993306, 0.114644, 0.012816, 0.005982;;,
      6;4;-0.993312, 0.114586, 0.012864, 0.005990;;,
      7;4;-0.993318, 0.114530, 0.012911, 0.005993;;,
      8;4;-0.993324, 0.114474, 0.012954, 0.005992;;,
      9;4;-0.993330, 0.114416, 0.012994, 0.005985;;,
      10;4;-0.993337, 0.114355, 0.013031, 0.005953;;,
      11;4;-0.993344, 0.114292, 0.013055, 0.005886;;,
      12;4;-0.993352, 0.114225, 0.013079, 0.005783;;,
      13;4;-0.993361, 0.114152, 0.013101, 0.005651;;,
      14;4;-0.993370, 0.114075, 0.013119, 0.005498;;,
      15;4;-0.993380, 0.113998, 0.013131, 0.005342;;,
      16;4;-0.993388, 0.113931, 0.013135, 0.005193;;,
      17;4;-0.993388, 0.113940, 0.013114, 0.005057;;,
      18;4;-0.993386, 0.113969, 0.013074, 0.004948;;,
      19;4;-0.993387, 0.113973, 0.013012, 0.004878;;,
      20;4;-0.993400, 0.113868, 0.012928, 0.004907;;,
      21;4;-0.993438, 0.113529, 0.012785, 0.005277;;,
      22;4;-0.993299, 0.114731, 0.012600, 0.005924;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.016497,23.333992, 0.008997;;,
      1;3;-0.016495,23.333984, 0.008994;;,
      2;3;-0.016500,23.333994, 0.008989;;,
      3;3;-0.016504,23.333990, 0.008995;;,
      4;3;-0.016501,23.334000, 0.008998;;,
      5;3;-0.016504,23.333984, 0.008987;;,
      6;3;-0.016505,23.333998, 0.008993;;,
      7;3;-0.016521,23.333988, 0.008982;;,
      8;3;-0.016497,23.334000, 0.008995;;,
      9;3;-0.016505,23.334000, 0.009001;;,
      10;3;-0.016504,23.333981, 0.008990;;,
      11;3;-0.016480,23.333992, 0.009007;;,
      12;3;-0.016507,23.333986, 0.008986;;,
      13;3;-0.016491,23.334002, 0.008997;;,
      14;3;-0.016502,23.333969, 0.009001;;,
      15;3;-0.016494,23.333994, 0.008992;;,
      16;3;-0.016499,23.333996, 0.008998;;,
      17;3;-0.016491,23.333984, 0.008995;;,
      18;3;-0.016507,23.334003, 0.008989;;,
      19;3;-0.016506,23.333992, 0.008991;;,
      20;3;-0.016491,23.333990, 0.008995;;,
      21;3;-0.016505,23.333998, 0.008984;;,
      22;3;-0.016497,23.333998, 0.008996;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.990977, 0.133907, 0.003034,-0.004844;;,
      1;4;-0.990985, 0.133853, 0.003023,-0.004808;;,
      2;4;-0.990992, 0.133802, 0.003014,-0.004772;;,
      3;4;-0.990999, 0.133753, 0.003005,-0.004734;;,
      4;4;-0.991006, 0.133704, 0.002996,-0.004696;;,
      5;4;-0.991012, 0.133655, 0.002989,-0.004658;;,
      6;4;-0.991020, 0.133604, 0.002982,-0.004621;;,
      7;4;-0.991027, 0.133550, 0.002975,-0.004582;;,
      8;4;-0.991035, 0.133492, 0.002970,-0.004553;;,
      9;4;-0.991043, 0.133431, 0.002966,-0.004534;;,
      10;4;-0.991052, 0.133369, 0.002964,-0.004518;;,
      11;4;-0.991060, 0.133309, 0.002962,-0.004505;;,
      12;4;-0.991068, 0.133249, 0.002965,-0.004495;;,
      13;4;-0.991076, 0.133193, 0.002973,-0.004490;;,
      14;4;-0.991084, 0.133128, 0.002982,-0.004487;;,
      15;4;-0.991094, 0.133055, 0.002993,-0.004489;;,
      16;4;-0.991103, 0.132988, 0.003006,-0.004497;;,
      17;4;-0.991102, 0.132993, 0.003023,-0.004515;;,
      18;4;-0.991098, 0.133021, 0.003045,-0.004560;;,
      19;4;-0.991098, 0.133016, 0.003073,-0.004607;;,
      20;4;-0.991110, 0.132925, 0.003119,-0.004671;;,
      21;4;-0.991164, 0.132519, 0.003161,-0.004723;;,
      22;4;-0.990998, 0.133745, 0.003220,-0.004896;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001, 6.996998,-0.000002;;,
      1;3;-0.000001, 6.996996, 0.000001;;,
      2;3;-0.000006, 6.996998,-0.000005;;,
      3;3; 0.000007, 6.996989,-0.000006;;,
      4;3; 0.000005, 6.996995,-0.000009;;,
      5;3;-0.000009, 6.996992, 0.000003;;,
      6;3;-0.000003, 6.996994,-0.000005;;,
      7;3;-0.000012, 6.996990,-0.000001;;,
      8;3; 0.000017, 6.996996, 0.000011;;,
      9;3;-0.000014, 6.996986, 0.000006;;,
      10;3;-0.000001, 6.996997, 0.000000;;,
      11;3;-0.000004, 6.996994, 0.000004;;,
      12;3;-0.000012, 6.996993,-0.000013;;,
      13;3;-0.000004, 6.996985, 0.000000;;,
      14;3; 0.000002, 6.997004, 0.000002;;,
      15;3;-0.000007, 6.996997,-0.000021;;,
      16;3; 0.000001, 6.996991, 0.000012;;,
      17;3;-0.000006, 6.996996, 0.000010;;,
      18;3; 0.000008, 6.997007, 0.000005;;,
      19;3;-0.000006, 6.996992,-0.000010;;,
      20;3;-0.000004, 6.996994, 0.000000;;,
      21;3; 0.000005, 6.996988,-0.000010;;,
      22;3;-0.000004, 6.996998,-0.000012;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000, 7.016008, 0.000000;;,
      1;3;-0.000002, 7.016008, 0.000001;;,
      2;3;-0.000002, 7.016006, 0.000000;;,
      3;3; 0.000014, 7.016006,-0.000001;;,
      4;3; 0.000001, 7.016011,-0.000006;;,
      5;3; 0.000001, 7.016011,-0.000001;;,
      6;3; 0.000013, 7.016010,-0.000002;;,
      7;3;-0.000027, 7.016010,-0.000012;;,
      8;3; 0.000019, 7.016008, 0.000003;;,
      9;3;-0.000022, 7.016016,-0.000001;;,
      10;3;-0.000004, 7.016015,-0.000006;;,
      11;3;-0.000004, 7.016011,-0.000030;;,
      12;3; 0.000008, 7.016005, 0.000018;;,
      13;3;-0.000005, 7.016010, 0.000022;;,
      14;3; 0.000007, 7.016006, 0.000023;;,
      15;3;-0.000005, 7.016006,-0.000020;;,
      16;3;-0.000001, 7.016007,-0.000014;;,
      17;3;-0.000002, 7.016003,-0.000002;;,
      18;3; 0.000010, 7.016014,-0.000009;;,
      19;3;-0.000010, 7.016010, 0.000004;;,
      20;3; 0.000004, 7.016014, 0.000008;;,
      21;3;-0.000008, 7.016014, 0.000010;;,
      22;3; 0.000000, 7.016004, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001, 7.720994,-0.000001;;,
      1;3; 0.000002, 7.720996,-0.000001;;,
      2;3; 0.000005, 7.720996, 0.000006;;,
      3;3;-0.000001, 7.720993,-0.000000;;,
      4;3;-0.000011, 7.720990, 0.000012;;,
      5;3; 0.000003, 7.721002,-0.000004;;,
      6;3; 0.000019, 7.720991, 0.000002;;,
      7;3;-0.000017, 7.720991,-0.000002;;,
      8;3;-0.000002, 7.721000, 0.000003;;,
      9;3;-0.000015, 7.720994,-0.000004;;,
      10;3; 0.000010, 7.720988, 0.000003;;,
      11;3; 0.000004, 7.720990, 0.000007;;,
      12;3;-0.000002, 7.720994, 0.000017;;,
      13;3; 0.000007, 7.720996, 0.000002;;,
      14;3; 0.000010, 7.720991, 0.000024;;,
      15;3;-0.000006, 7.721000,-0.000042;;,
      16;3; 0.000004, 7.720997,-0.000020;;,
      17;3;-0.000001, 7.721006, 0.000003;;,
      18;3;-0.000007, 7.720993, 0.000017;;,
      19;3; 0.000006, 7.720997, 0.000006;;,
      20;3; 0.000002, 7.721003, 0.000017;;,
      21;3; 0.000005, 7.720982, 0.000002;;,
      22;3; 0.000000, 7.720992, 0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.983463, 0.170948,-0.001537, 0.059791;;,
      1;4;-0.983471, 0.170901,-0.001545, 0.059801;;,
      2;4;-0.983479, 0.170851,-0.001554, 0.059810;;,
      3;4;-0.983487, 0.170799,-0.001563, 0.059819;;,
      4;4;-0.983496, 0.170746,-0.001577, 0.059826;;,
      5;4;-0.983505, 0.170693,-0.001593, 0.059833;;,
      6;4;-0.983514, 0.170639,-0.001607, 0.059838;;,
      7;4;-0.983523, 0.170585,-0.001622, 0.059843;;,
      8;4;-0.983532, 0.170530,-0.001639, 0.059844;;,
      9;4;-0.983532, 0.170488,-0.001675, 0.059965;;,
      10;4;-0.983511, 0.170471,-0.001751, 0.060361;;,
      11;4;-0.983456, 0.170495,-0.001895, 0.061170;;,
      12;4;-0.983363, 0.170560,-0.002117, 0.062460;;,
      13;4;-0.983232, 0.170668,-0.002414, 0.064201;;,
      14;4;-0.983066, 0.170813,-0.002772, 0.066300;;,
      15;4;-0.982874, 0.170984,-0.003171, 0.068649;;,
      16;4;-0.982661, 0.171177,-0.003596, 0.071151;;,
      17;4;-0.982433, 0.171385,-0.004037, 0.073731;;,
      18;4;-0.982189, 0.171640,-0.004479, 0.076320;;,
      19;4;-0.981942, 0.171891,-0.004916, 0.078860;;,
      20;4;-0.981485, 0.172290,-0.005716, 0.083490;;,
      21;4;-0.981196, 0.172229,-0.006350, 0.086904;;,
      22;4;-0.980835, 0.173524,-0.006617, 0.088366;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-6.516898,22.686001, 0.103995;;,
      1;3;-6.516896,22.685997, 0.103992;;,
      2;3;-6.516903,22.686003, 0.103991;;,
      3;3;-6.516905,22.686003, 0.103992;;,
      4;3;-6.516905,22.686007, 0.103992;;,
      5;3;-6.516905,22.686001, 0.103985;;,
      6;3;-6.516891,22.686007, 0.103985;;,
      7;3;-6.516931,22.685997, 0.103985;;,
      8;3;-6.516904,22.686007, 0.103987;;,
      9;3;-6.516898,22.686012, 0.103992;;,
      10;3;-6.516897,22.685997, 0.103992;;,
      11;3;-6.516886,22.686007, 0.104000;;,
      12;3;-6.516902,22.685993, 0.103979;;,
      13;3;-6.516895,22.685999, 0.104010;;,
      14;3;-6.516904,22.685993, 0.103996;;,
      15;3;-6.516895,22.685999, 0.103989;;,
      16;3;-6.516898,22.686020, 0.103993;;,
      17;3;-6.516895,22.686001, 0.103995;;,
      18;3;-6.516904,22.686016, 0.103987;;,
      19;3;-6.516903,22.685997, 0.103998;;,
      20;3;-6.516897,22.686016, 0.103996;;,
      21;3;-6.516907,22.686008, 0.103991;;,
      22;3;-6.516899,22.686008, 0.103995;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.988884, 0.147352,-0.001913,-0.019782;;,
      1;4;-0.988894, 0.147287,-0.001910,-0.019783;;,
      2;4;-0.988905, 0.147216,-0.001908,-0.019783;;,
      3;4;-0.988916, 0.147141,-0.001907,-0.019784;;,
      4;4;-0.988927, 0.147067,-0.001906,-0.019784;;,
      5;4;-0.988937, 0.146995,-0.001906,-0.019784;;,
      6;4;-0.988947, 0.146930,-0.001906,-0.019784;;,
      7;4;-0.988957, 0.146865,-0.001907,-0.019784;;,
      8;4;-0.988966, 0.146802,-0.001908,-0.019783;;,
      9;4;-0.988976, 0.146739,-0.001910,-0.019781;;,
      10;4;-0.988985, 0.146676,-0.001913,-0.019778;;,
      11;4;-0.988994, 0.146616,-0.001916,-0.019774;;,
      12;4;-0.989003, 0.146557,-0.001920,-0.019768;;,
      13;4;-0.989011, 0.146501,-0.001924,-0.019762;;,
      14;4;-0.989021, 0.146437,-0.001930,-0.019752;;,
      15;4;-0.989032, 0.146364,-0.001936,-0.019739;;,
      16;4;-0.989042, 0.146298,-0.001943,-0.019726;;,
      17;4;-0.989041, 0.146305,-0.001958,-0.019718;;,
      18;4;-0.989036, 0.146337,-0.001973,-0.019710;;,
      19;4;-0.989037, 0.146337,-0.001989,-0.019696;;,
      20;4;-0.989050, 0.146253,-0.002004,-0.019670;;,
      21;4;-0.989110, 0.145852,-0.002021,-0.019588;;,
      22;4;-0.988924, 0.147101,-0.002047,-0.019669;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002, 6.409000, 0.000001;;,
      1;3; 0.000003, 6.408999,-0.000001;;,
      2;3; 0.000002, 6.408997, 0.000006;;,
      3;3; 0.000000, 6.408996, 0.000012;;,
      4;3;-0.000011, 6.408993,-0.000001;;,
      5;3;-0.000004, 6.408997, 0.000004;;,
      6;3;-0.000014, 6.408993, 0.000005;;,
      7;3;-0.000026, 6.408997,-0.000001;;,
      8;3;-0.000007, 6.408995, 0.000010;;,
      9;3; 0.000025, 6.408987, 0.000004;;,
      10;3;-0.000003, 6.408989, 0.000005;;,
      11;3;-0.000006, 6.408994,-0.000002;;,
      12;3;-0.000021, 6.408997,-0.000002;;,
      13;3; 0.000000, 6.409000, 0.000004;;,
      14;3;-0.000004, 6.408995,-0.000006;;,
      15;3; 0.000004, 6.408996,-0.000031;;,
      16;3;-0.000004, 6.409000, 0.000002;;,
      17;3;-0.000002, 6.408993, 0.000026;;,
      18;3; 0.000004, 6.409002,-0.000013;;,
      19;3; 0.000001, 6.408991, 0.000002;;,
      20;3; 0.000006, 6.408995,-0.000007;;,
      21;3; 0.000000, 6.408995,-0.000010;;,
      22;3;-0.000002, 6.408996,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000003, 6.150001,-0.000003;;,
      1;3;-0.000001, 6.149998, 0.000000;;,
      2;3; 0.000000, 6.150000,-0.000003;;,
      3;3; 0.000000, 6.150000, 0.000001;;,
      4;3; 0.000001, 6.150000, 0.000000;;,
      5;3;-0.000003, 6.149995, 0.000005;;,
      6;3; 0.000031, 6.149987, 0.000009;;,
      7;3;-0.000026, 6.150004,-0.000005;;,
      8;3;-0.000027, 6.149998,-0.000003;;,
      9;3; 0.000010, 6.149992,-0.000010;;,
      10;3; 0.000002, 6.149998, 0.000004;;,
      11;3;-0.000007, 6.149995,-0.000003;;,
      12;3;-0.000021, 6.149996, 0.000015;;,
      13;3;-0.000004, 6.149990, 0.000002;;,
      14;3; 0.000000, 6.149996, 0.000001;;,
      15;3; 0.000008, 6.149992,-0.000006;;,
      16;3;-0.000004, 6.149991, 0.000004;;,
      17;3;-0.000002, 6.149994, 0.000024;;,
      18;3;-0.000008, 6.149994,-0.000010;;,
      19;3; 0.000001, 6.149994, 0.000011;;,
      20;3; 0.000008, 6.149994, 0.000000;;,
      21;3; 0.000006, 6.149996, 0.000000;;,
      22;3; 0.000008, 6.149999, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000, 6.145998,-0.000005;;,
      1;3;-0.000000, 6.145995, 0.000005;;,
      2;3; 0.000002, 6.146003, 0.000008;;,
      3;3; 0.000005, 6.146000, 0.000011;;,
      4;3;-0.000007, 6.145991, 0.000007;;,
      5;3; 0.000015, 6.146000, 0.000004;;,
      6;3; 0.000000, 6.146004,-0.000000;;,
      7;3;-0.000021, 6.146000, 0.000002;;,
      8;3;-0.000007, 6.145989, 0.000000;;,
      9;3; 0.000008, 6.146000,-0.000001;;,
      10;3;-0.000002, 6.145999, 0.000015;;,
      11;3; 0.000010, 6.145994,-0.000006;;,
      12;3; 0.000011, 6.145989,-0.000010;;,
      13;3; 0.000000, 6.145998,-0.000000;;,
      14;3;-0.000006, 6.145997, 0.000014;;,
      15;3;-0.000003, 6.145991, 0.000000;;,
      16;3;-0.000002, 6.146000, 0.000006;;,
      17;3; 0.000002, 6.145998, 0.000004;;,
      18;3; 0.000009, 6.145995, 0.000005;;,
      19;3;-0.000009, 6.145996,-0.000008;;,
      20;3; 0.000004, 6.146000,-0.000011;;,
      21;3; 0.000006, 6.145987,-0.000006;;,
      22;3; 0.000006, 6.145990, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.983252, 0.145400,-0.015678, 0.108756;;,
      1;4;-0.983262, 0.145334,-0.015683, 0.108758;;,
      2;4;-0.983271, 0.145270,-0.015690, 0.108759;;,
      3;4;-0.983280, 0.145206,-0.015699, 0.108760;;,
      4;4;-0.983289, 0.145140,-0.015712, 0.108763;;,
      5;4;-0.983299, 0.145070,-0.015729, 0.108766;;,
      6;4;-0.983310, 0.144989,-0.015751, 0.108771;;,
      7;4;-0.983321, 0.144911,-0.015778, 0.108777;;,
      8;4;-0.983331, 0.144835,-0.015809, 0.108782;;,
      9;4;-0.983314, 0.144781,-0.015858, 0.109002;;,
      10;4;-0.983234, 0.144776,-0.015963, 0.109707;;,
      11;4;-0.983059, 0.144850,-0.016168, 0.111144;;,
      12;4;-0.982768, 0.145012,-0.016485, 0.113431;;,
      13;4;-0.982364, 0.145255,-0.016910, 0.116515;;,
      14;4;-0.981863, 0.145555,-0.017425, 0.120232;;,
      15;4;-0.981286, 0.145880,-0.018002, 0.124389;;,
      16;4;-0.980654, 0.146210,-0.018617, 0.128815;;,
      17;4;-0.979982, 0.146550,-0.019249, 0.133373;;,
      18;4;-0.979280, 0.146924,-0.019882, 0.137945;;,
      19;4;-0.978563, 0.147347,-0.020498, 0.142417;;,
      20;4;-0.977224, 0.147993,-0.021617, 0.150547;;,
      21;4;-0.976267, 0.148045,-0.022460, 0.156463;;,
      22;4;-0.975605, 0.149710,-0.022722, 0.158952;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-11.443201,18.881002, 0.462005;;,
      1;3;-11.443201,18.880993, 0.462005;;,
      2;3;-11.443203,18.880999, 0.462003;;,
      3;3;-11.443207,18.881001, 0.461999;;,
      4;3;-11.443213,18.881012, 0.462006;;,
      5;3;-11.443214,18.880997, 0.462002;;,
      6;3;-11.443208,18.881008, 0.461992;;,
      7;3;-11.443221,18.881004, 0.461988;;,
      8;3;-11.443205,18.881006, 0.461998;;,
      9;3;-11.443199,18.881001, 0.462002;;,
      10;3;-11.443200,18.880993, 0.461999;;,
      11;3;-11.443189,18.881002, 0.462008;;,
      12;3;-11.443205,18.880993, 0.461990;;,
      13;3;-11.443193,18.881004, 0.462018;;,
      14;3;-11.443201,18.880993, 0.462008;;,
      15;3;-11.443201,18.881004, 0.461992;;,
      16;3;-11.443202,18.881025, 0.461998;;,
      17;3;-11.443199,18.880999, 0.462006;;,
      18;3;-11.443204,18.881021, 0.461988;;,
      19;3;-11.443203,18.881002, 0.462008;;,
      20;3;-11.443201,18.881010, 0.461996;;,
      21;3;-11.443207,18.881002, 0.461998;;,
      22;3;-11.443203,18.881008, 0.462007;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.970246, 0.233856,-0.009326,-0.062031;;,
      1;4;-0.970261, 0.233792,-0.009316,-0.062030;;,
      2;4;-0.970278, 0.233722,-0.009305,-0.062029;;,
      3;4;-0.970296, 0.233651,-0.009296,-0.062027;;,
      4;4;-0.970312, 0.233582,-0.009287,-0.062025;;,
      5;4;-0.970328, 0.233519,-0.009279,-0.062023;;,
      6;4;-0.970343, 0.233456,-0.009272,-0.062022;;,
      7;4;-0.970358, 0.233393,-0.009266,-0.062021;;,
      8;4;-0.970373, 0.233330,-0.009261,-0.062022;;,
      9;4;-0.970389, 0.233267,-0.009257,-0.062021;;,
      10;4;-0.970404, 0.233204,-0.009254,-0.062021;;,
      11;4;-0.970418, 0.233144,-0.009253,-0.062021;;,
      12;4;-0.970432, 0.233086,-0.009253,-0.062020;;,
      13;4;-0.970448, 0.233020,-0.009254,-0.062019;;,
      14;4;-0.970464, 0.232952,-0.009257,-0.062021;;,
      15;4;-0.970481, 0.232882,-0.009260,-0.062024;;,
      16;4;-0.970495, 0.232822,-0.009266,-0.062028;;,
      17;4;-0.970489, 0.232841,-0.009276,-0.062041;;,
      18;4;-0.970480, 0.232878,-0.009289,-0.062053;;,
      19;4;-0.970477, 0.232889,-0.009305,-0.062053;;,
      20;4;-0.970505, 0.232778,-0.009322,-0.062025;;,
      21;4;-0.970602, 0.232402,-0.009340,-0.061924;;,
      22;4;-0.970305, 0.233609,-0.009426,-0.062022;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001, 4.920000, 0.000001;;,
      1;3;-0.000005, 4.919996,-0.000004;;,
      2;3; 0.000011, 4.919990,-0.000013;;,
      3;3; 0.000010, 4.919998,-0.000007;;,
      4;3;-0.000010, 4.919991, 0.000007;;,
      5;3;-0.000006, 4.919998,-0.000003;;,
      6;3; 0.000000, 4.919998, 0.000002;;,
      7;3; 0.000005, 4.920000, 0.000003;;,
      8;3;-0.000003, 4.919998, 0.000002;;,
      9;3; 0.000007, 4.920000,-0.000004;;,
      10;3;-0.000011, 4.920002, 0.000000;;,
      11;3; 0.000013, 4.919990,-0.000005;;,
      12;3;-0.000006, 4.920004, 0.000000;;,
      13;3; 0.000008, 4.919992, 0.000012;;,
      14;3;-0.000001, 4.919991, 0.000004;;,
      15;3; 0.000002, 4.919997,-0.000000;;,
      16;3;-0.000004, 4.920008,-0.000012;;,
      17;3; 0.000003, 4.919992,-0.000008;;,
      18;3; 0.000004, 4.919996, 0.000009;;,
      19;3;-0.000010, 4.920000,-0.000011;;,
      20;3;-0.000002, 4.919986, 0.000010;;,
      21;3; 0.000002, 4.919998, 0.000002;;,
      22;3; 0.000000, 4.920000,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky3}
    AnimationKey { // Rotation
      0;
      23;
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
      10;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001, 5.232998, 0.000001;;,
      1;3;-0.000001, 5.233006,-0.000008;;,
      2;3;-0.000008, 5.232998, 0.000001;;,
      3;3; 0.000004, 5.233004, 0.000005;;,
      4;3;-0.000004, 5.232987, 0.000003;;,
      5;3; 0.000013, 5.233000, 0.000004;;,
      6;3;-0.000010, 5.232998, 0.000006;;,
      7;3;-0.000028, 5.233003, 0.000004;;,
      8;3; 0.000005, 5.233004,-0.000006;;,
      9;3;-0.000000, 5.233002,-0.000002;;,
      10;3; 0.000003, 5.233007, 0.000003;;,
      11;3;-0.000015, 5.233006, 0.000002;;,
      12;3; 0.000015, 5.233008,-0.000016;;,
      13;3;-0.000018, 5.233001, 0.000004;;,
      14;3;-0.000009, 5.232999, 0.000010;;,
      15;3;-0.000002, 5.233003, 0.000008;;,
      16;3;-0.000002, 5.232997,-0.000004;;,
      17;3; 0.000004, 5.232998,-0.000003;;,
      18;3; 0.000000, 5.232991, 0.000017;;,
      19;3; 0.000005, 5.233011,-0.000020;;,
      20;3; 0.000011, 5.232995, 0.000008;;,
      21;3;-0.000006, 5.232995, 0.000004;;,
      22;3; 0.000000, 5.233003, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002, 5.570997,-0.000002;;,
      1;3;-0.000002, 5.571002,-0.000002;;,
      2;3;-0.000006, 5.571005, 0.000004;;,
      3;3; 0.000000, 5.571007, 0.000005;;,
      4;3;-0.000011, 5.571002, 0.000008;;,
      5;3;-0.000016, 5.570998, 0.000000;;,
      6;3; 0.000026, 5.570998, 0.000000;;,
      7;3; 0.000013, 5.570990,-0.000004;;,
      8;3;-0.000002, 5.570988, 0.000006;;,
      9;3;-0.000013, 5.570992,-0.000009;;,
      10;3; 0.000012, 5.571001,-0.000010;;,
      11;3; 0.000008, 5.570998, 0.000012;;,
      12;3;-0.000007, 5.571006, 0.000008;;,
      13;3;-0.000008, 5.570998, 0.000009;;,
      14;3;-0.000005, 5.570997, 0.000014;;,
      15;3; 0.000006, 5.570998,-0.000004;;,
      16;3;-0.000004, 5.570998,-0.000002;;,
      17;3; 0.000004, 5.571004,-0.000007;;,
      18;3; 0.000001, 5.571002, 0.000010;;,
      19;3;-0.000007, 5.570993, 0.000009;;,
      20;3;-0.000009, 5.570995, 0.000004;;,
      21;3;-0.000004, 5.570998, 0.000000;;,
      22;3;-0.000002, 5.571000, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      1;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      2;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      3;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      4;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      5;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      6;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      7;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      8;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      9;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      10;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      11;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      12;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      13;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      14;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      15;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      16;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      17;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      18;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      19;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      20;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      21;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      22;4;-0.500000,-0.500000, 0.500000,-0.500000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-1.467288, 5.012929,-18.471127;;,
      1;3;-1.467301, 5.012926,-18.471130;;,
      2;3;-1.467295, 5.012922,-18.471130;;,
      3;3;-1.467299, 5.012924,-18.471132;;,
      4;3;-1.467303, 5.012924,-18.471128;;,
      5;3;-1.467298, 5.012930,-18.471134;;,
      6;3;-1.467300, 5.012926,-18.471142;;,
      7;3;-1.467300, 5.012916,-18.471138;;,
      8;3;-1.467299, 5.012933,-18.471134;;,
      9;3;-1.467313, 5.012922,-18.471136;;,
      10;3;-1.467299, 5.012921,-18.471134;;,
      11;3;-1.467319, 5.012932,-18.471146;;,
      12;3;-1.467325, 5.012926,-18.471134;;,
      13;3;-1.467308, 5.012917,-18.471136;;,
      14;3;-1.467291, 5.012932,-18.471138;;,
      15;3;-1.467315, 5.012928,-18.471132;;,
      16;3;-1.467295, 5.012928,-18.471142;;,
      17;3;-1.467316, 5.012926,-18.471134;;,
      18;3;-1.467290, 5.012922,-18.471127;;,
      19;3;-1.467299, 5.012934,-18.471127;;,
      20;3;-1.467301, 5.012920,-18.471127;;,
      21;3;-1.467305, 5.012919,-18.471138;;,
      22;3;-1.467302, 5.012928,-18.471138;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      1;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      2;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      3;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      4;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      5;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      6;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      7;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      8;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      9;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      10;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      11;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      12;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      13;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      14;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      15;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      16;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      17;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      18;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      19;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      20;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      21;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      22;4;-0.106406,-0.175293,-0.069270, 0.976295;;;
    }
    AnimationKey { // Scale
      1;
      23;
      0;3; 1.000001, 1.000000, 1.000001;;,
      1;3; 1.000001, 1.000000, 1.000001;;,
      2;3; 1.000001, 1.000000, 1.000001;;,
      3;3; 1.000001, 1.000000, 1.000001;;,
      4;3; 1.000001, 1.000000, 1.000001;;,
      5;3; 1.000001, 1.000000, 1.000001;;,
      6;3; 1.000001, 1.000000, 1.000001;;,
      7;3; 1.000001, 1.000000, 1.000001;;,
      8;3; 1.000001, 1.000000, 1.000001;;,
      9;3; 1.000001, 1.000000, 1.000001;;,
      10;3; 1.000001, 1.000000, 1.000001;;,
      11;3; 1.000001, 1.000000, 1.000001;;,
      12;3; 1.000001, 1.000000, 1.000001;;,
      13;3; 1.000001, 1.000000, 1.000001;;,
      14;3; 1.000001, 1.000000, 1.000001;;,
      15;3; 1.000001, 1.000000, 1.000001;;,
      16;3; 1.000001, 1.000000, 1.000001;;,
      17;3; 1.000001, 1.000000, 1.000001;;,
      18;3; 1.000001, 1.000000, 1.000001;;,
      19;3; 1.000001, 1.000000, 1.000001;;,
      20;3; 1.000001, 1.000000, 1.000001;;,
      21;3; 1.000001, 1.000000, 1.000001;;,
      22;3; 1.000001, 1.000000, 1.000001;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 3.884896,-9.462722,-18.584896;;,
      1;3; 3.884905,-9.462709,-18.584904;;,
      2;3; 3.884905,-9.462709,-18.584885;;,
      3;3; 3.884903,-9.462715,-18.584894;;,
      4;3; 3.884899,-9.462705,-18.584909;;,
      5;3; 3.884901,-9.462704,-18.584896;;,
      6;3; 3.884899,-9.462704,-18.584896;;,
      7;3; 3.884907,-9.462700,-18.584902;;,
      8;3; 3.884902,-9.462704,-18.584896;;,
      9;3; 3.884889,-9.462703,-18.584906;;,
      10;3; 3.884902,-9.462718,-18.584900;;,
      11;3; 3.884894,-9.462706,-18.584908;;,
      12;3; 3.884903,-9.462713,-18.584911;;,
      13;3; 3.884911,-9.462713,-18.584900;;,
      14;3; 3.884907,-9.462705,-18.584921;;,
      15;3; 3.884905,-9.462706,-18.584919;;,
      16;3; 3.884899,-9.462719,-18.584875;;,
      17;3; 3.884898,-9.462704,-18.584896;;,
      18;3; 3.884905,-9.462702,-18.584900;;,
      19;3; 3.884911,-9.462695,-18.584894;;,
      20;3; 3.884906,-9.462717,-18.584902;;,
      21;3; 3.884877,-9.462718,-18.584900;;,
      22;3; 3.884887,-9.462712,-18.584902;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour3}
    AnimationKey { // Rotation
      0;
      23;
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
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000004,11.039499, 0.000004;;,
      1;3; 0.000004,11.039499,-0.000015;;,
      2;3; 0.000000,11.039507,-0.000009;;,
      3;3; 0.000002,11.039505,-0.000013;;,
      4;3; 0.000005,11.039499,-0.000005;;,
      5;3; 0.000002,11.039513, 0.000000;;,
      6;3; 0.000003,11.039493,-0.000000;;,
      7;3;-0.000008,11.039495,-0.000001;;,
      8;3;-0.000002,11.039507, 0.000002;;,
      9;3; 0.000000,11.039498,-0.000002;;,
      10;3; 0.000004,11.039493, 0.000007;;,
      11;3; 0.000001,11.039503,-0.000004;;,
      12;3;-0.000005,11.039499, 0.000004;;,
      13;3;-0.000004,11.039499,-0.000004;;,
      14;3; 0.000004,11.039499,-0.000000;;,
      15;3;-0.000004,11.039490, 0.000010;;,
      16;3;-0.000004,11.039501,-0.000016;;,
      17;3; 0.000003,11.039505, 0.000001;;,
      18;3;-0.000008,11.039484, 0.000013;;,
      19;3;-0.000003,11.039501, 0.000006;;,
      20;3;-0.000010,11.039510, 0.000001;;,
      21;3;-0.000006,11.039483,-0.000005;;,
      22;3; 0.000002,11.039489, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      1;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      2;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      3;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      4;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      5;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      6;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      7;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      8;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      9;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      10;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      11;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      12;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      13;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      14;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      15;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      16;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      17;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      18;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      19;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      20;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      21;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      22;4;-0.135079, 0.914205,-0.186988, 0.333195;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-2.648907,-11.494610,22.195309;;,
      1;3;-2.648907,-11.494599,22.195299;;,
      2;3;-2.648900,-11.494599,22.195312;;,
      3;3;-2.648904,-11.494604,22.195307;;,
      4;3;-2.648910,-11.494591,22.195293;;,
      5;3;-2.648906,-11.494594,22.195303;;,
      6;3;-2.648910,-11.494595,22.195301;;,
      7;3;-2.648900,-11.494598,22.195297;;,
      8;3;-2.648902,-11.494598,22.195309;;,
      9;3;-2.648917,-11.494593,22.195290;;,
      10;3;-2.648899,-11.494603,22.195293;;,
      11;3;-2.648909,-11.494595,22.195293;;,
      12;3;-2.648903,-11.494604,22.195301;;,
      13;3;-2.648891,-11.494607,22.195303;;,
      14;3;-2.648903,-11.494595,22.195288;;,
      15;3;-2.648903,-11.494600,22.195278;;,
      16;3;-2.648909,-11.494614,22.195324;;,
      17;3;-2.648910,-11.494590,22.195305;;,
      18;3;-2.648901,-11.494590,22.195301;;,
      19;3;-2.648902,-11.494582,22.195303;;,
      20;3;-2.648902,-11.494604,22.195301;;,
      21;3;-2.648926,-11.494602,22.195299;;,
      22;3;-2.648918,-11.494601,22.195299;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour5}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,11.039510,-0.000009;;,
      1;3;-0.000000,11.039500, 0.000008;;,
      2;3;-0.000003,11.039506,-0.000014;;,
      3;3; 0.000004,11.039496,-0.000002;;,
      4;3; 0.000004,11.039501,-0.000006;;,
      5;3; 0.000001,11.039507, 0.000000;;,
      6;3; 0.000002,11.039504, 0.000000;;,
      7;3;-0.000002,11.039489, 0.000004;;,
      8;3; 0.000002,11.039508,-0.000002;;,
      9;3;-0.000005,11.039498,-0.000010;;,
      10;3;-0.000003,11.039508, 0.000003;;,
      11;3; 0.000001,11.039508, 0.000004;;,
      12;3;-0.000002,11.039496, 0.000010;;,
      13;3; 0.000002,11.039508, 0.000026;;,
      14;3;-0.000006,11.039501,-0.000008;;,
      15;3;-0.000003,11.039503,-0.000020;;,
      16;3;-0.000005,11.039498, 0.000010;;,
      17;3; 0.000008,11.039499, 0.000012;;,
      18;3;-0.000002,11.039495,-0.000007;;,
      19;3;-0.000005,11.039503, 0.000002;;,
      20;3;-0.000004,11.039491, 0.000006;;,
      21;3;-0.000010,11.039507,-0.000009;;,
      22;3; 0.000000,11.039503,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.080871,-0.114194,-0.757559,-0.637592;;,
      1;4;-0.098357,-0.120466,-0.774533,-0.613117;;,
      2;4;-0.129908,-0.120485,-0.781186,-0.598628;;,
      3;4;-0.171260,-0.117093,-0.776631,-0.594814;;,
      4;4;-0.211462,-0.113742,-0.766828,-0.595249;;,
      5;4;-0.238651,-0.111725,-0.761997,-0.591544;;,
      6;4;-0.249140,-0.109559,-0.767988,-0.579758;;,
      7;4;-0.246708,-0.107513,-0.781608,-0.562730;;,
      8;4;-0.237017,-0.107114,-0.796251,-0.546199;;,
      9;4;-0.229508,-0.108667,-0.806670,-0.533668;;,
      10;4;-0.222820,-0.113637,-0.813930,-0.524363;;,
      11;4;-0.214813,-0.122305,-0.821071,-0.514528;;,
      12;4;-0.202996,-0.132920,-0.830716,-0.501034;;,
      13;4;-0.190393,-0.142155,-0.842750,-0.483026;;,
      14;4;-0.180982,-0.148371,-0.855773,-0.461394;;,
      15;4;-0.173635,-0.153878,-0.867584,-0.439853;;,
      16;4;-0.166607,-0.162952,-0.873164,-0.428105;;,
      17;4;-0.159834,-0.174992,-0.865891,-0.440526;;,
      18;4;-0.154899,-0.180155,-0.842391,-0.483662;;,
      19;4;-0.165366,-0.159465,-0.824029,-0.517882;;,
      20;4;-0.175784,-0.079402,-0.718360,-0.668397;;,
      21;4;-0.151405,-0.032021,-0.584926,-0.796187;;,
      22;4;-0.108341,-0.031402,-0.428961,-0.896252;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      15;3; 1.000000, 1.000001, 1.000000;;,
      16;3; 1.000000, 1.000000, 1.000000;;,
      17;3; 1.000000, 1.000001, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;19.899097,-7.885098,-3.429500;;,
      1;3;19.899094,-7.885095,-3.429504;;,
      2;3;19.899097,-7.885098,-3.429504;;,
      3;3;19.899097,-7.885089,-3.429495;;,
      4;3;19.899094,-7.885095,-3.429513;;,
      5;3;19.899097,-7.885099,-3.429518;;,
      6;3;19.899094,-7.885083,-3.429507;;,
      7;3;19.899097,-7.885100,-3.429497;;,
      8;3;19.899096,-7.885085,-3.429499;;,
      9;3;19.899094,-7.885112,-3.429500;;,
      10;3;19.899094,-7.885106,-3.429500;;,
      11;3;19.899096,-7.885108,-3.429506;;,
      12;3;19.899096,-7.885105,-3.429483;;,
      13;3;19.899096,-7.885104,-3.429501;;,
      14;3;19.899094,-7.885115,-3.429508;;,
      15;3;19.899096,-7.885102,-3.429498;;,
      16;3;19.899096,-7.885098,-3.429492;;,
      17;3;19.899097,-7.885096,-3.429513;;,
      18;3;19.899094,-7.885099,-3.429486;;,
      19;3;19.899096,-7.885095,-3.429511;;,
      20;3;19.899097,-7.885093,-3.429497;;,
      21;3;19.899096,-7.885089,-3.429503;;,
      22;3;19.899096,-7.885094,-3.429497;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.360423,-0.930807, 0.031082,-0.052233;;,
      1;4;-0.308630,-0.949312, 0.028267,-0.052485;;,
      2;4;-0.264326,-0.962069, 0.027558,-0.061604;;,
      3;4;-0.229167,-0.969664, 0.029491,-0.079779;;,
      4;4;-0.205938,-0.972780, 0.034993,-0.100323;;,
      5;4;-0.196008,-0.972851, 0.042418,-0.115514;;,
      6;4;-0.197840,-0.971233, 0.050368,-0.122591;;,
      7;4;-0.206769,-0.968911, 0.057677,-0.123014;;,
      8;4;-0.216321,-0.966841, 0.064042,-0.119679;;,
      9;4;-0.222046,-0.965938, 0.067611,-0.114402;;,
      10;4;-0.221386,-0.966720, 0.069692,-0.107623;;,
      11;4;-0.215839,-0.968804, 0.071953,-0.098264;;,
      12;4;-0.209583,-0.971089, 0.075715,-0.085610;;,
      13;4;-0.207145,-0.972456, 0.079305,-0.071631;;,
      14;4;-0.211804,-0.972239, 0.080057,-0.059004;;,
      15;4;-0.227099,-0.969475, 0.078108,-0.049423;;,
      16;4;-0.260038,-0.961564, 0.075926,-0.044828;;,
      17;4;-0.317315,-0.944031, 0.076451,-0.047664;;,
      18;4;-0.393159,-0.914187, 0.079448,-0.058103;;,
      19;4;-0.420402,-0.900171, 0.081487,-0.079459;;,
      20;4;-0.519358,-0.844427, 0.088578,-0.096774;;,
      21;4;-0.718625,-0.688200, 0.085998,-0.050628;;,
      22;4;-0.882452,-0.460606, 0.095006,-0.009686;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002,38.282906,-0.000001;;,
      1;3; 0.000001,38.282906, 0.000003;;,
      2;3;-0.000001,38.282887,-0.000001;;,
      3;3;-0.000007,38.282921, 0.000005;;,
      4;3;-0.000003,38.282902,-0.000008;;,
      5;3;-0.000003,38.282894,-0.000001;;,
      6;3; 0.000001,38.282913,-0.000008;;,
      7;3;-0.000001,38.282925, 0.000022;;,
      8;3;-0.000003,38.282921,-0.000001;;,
      9;3; 0.000001,38.282909, 0.000018;;,
      10;3; 0.000001,38.282917, 0.000022;;,
      11;3;-0.000004,38.282909, 0.000015;;,
      12;3; 0.000001,38.282909,-0.000012;;,
      13;3;-0.000002,38.282917, 0.000006;;,
      14;3;-0.000009,38.282906, 0.000042;;,
      15;3; 0.000005,38.282917, 0.000016;;,
      16;3; 0.000001,38.282921,-0.000013;;,
      17;3;-0.000001,38.282890, 0.000003;;,
      18;3;-0.000004,38.282917, 0.000006;;,
      19;3; 0.000003,38.282917, 0.000000;;,
      20;3; 0.000001,38.282909, 0.000006;;,
      21;3; 0.000002,38.282917,-0.000007;;,
      22;3; 0.000002,38.282917, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.958080, 0.285975, 0.005711, 0.016394;;,
      1;4;-0.957129, 0.285922, 0.009919, 0.045328;;,
      2;4;-0.951384, 0.300124, 0.013989, 0.067803;;,
      3;4;-0.939695, 0.330989, 0.019156, 0.083985;;,
      4;4;-0.925360, 0.366748, 0.024311, 0.092810;;,
      5;4;-0.915744, 0.390152, 0.026249, 0.092226;;,
      6;4;-0.916473, 0.391289, 0.022933, 0.080274;;,
      7;4;-0.924944, 0.374764, 0.016240, 0.061376;;,
      8;4;-0.933619, 0.355550, 0.009514, 0.043009;;,
      9;4;-0.940142, 0.339312, 0.005053, 0.031230;;,
      10;4;-0.944056, 0.328826, 0.002555, 0.025006;;,
      11;4;-0.945940, 0.323679, 0.000426, 0.020733;;,
      12;4;-0.947316, 0.319972,-0.002785, 0.014275;;,
      13;4;-0.950869, 0.309489,-0.005753, 0.005672;;,
      14;4;-0.958022, 0.286623,-0.006115,-0.002038;;,
      15;4;-0.967333, 0.253416,-0.003773,-0.005710;;,
      16;4;-0.976477, 0.215589, 0.000139,-0.003837;;,
      17;4;-0.983039, 0.183345, 0.004223,-0.001426;;,
      18;4;-0.985482, 0.169459, 0.006761,-0.008016;;,
      19;4;-0.982013, 0.186453, 0.005795,-0.029191;;,
      20;4;-0.925220, 0.364313,-0.002960,-0.105994;;,
      21;4;-0.917676, 0.368135,-0.013220,-0.148902;;,
      22;4;-0.939127, 0.314697,-0.016929,-0.136818;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000001,32.683994,-0.000002;;,
      1;3; 0.000003,32.683983,-0.000014;;,
      2;3; 0.000006,32.683994, 0.000007;;,
      3;3; 0.000007,32.683990,-0.000004;;,
      4;3;-0.000000,32.683971,-0.000003;;,
      5;3;-0.000003,32.684010,-0.000001;;,
      6;3;-0.000004,32.683983, 0.000009;;,
      7;3;-0.000009,32.683987, 0.000006;;,
      8;3; 0.000002,32.683975,-0.000012;;,
      9;3; 0.000001,32.684017,-0.000004;;,
      10;3; 0.000002,32.683975, 0.000007;;,
      11;3; 0.000004,32.683983,-0.000002;;,
      12;3; 0.000001,32.683979,-0.000014;;,
      13;3; 0.000001,32.683990,-0.000001;;,
      14;3;-0.000003,32.683987, 0.000026;;,
      15;3;-0.000005,32.683983, 0.000004;;,
      16;3; 0.000001,32.683990, 0.000007;;,
      17;3; 0.000007,32.683994, 0.000013;;,
      18;3;-0.000004,32.683983,-0.000006;;,
      19;3; 0.000000,32.683983,-0.000003;;,
      20;3; 0.000001,32.683979,-0.000006;;,
      21;3;-0.000004,32.683975,-0.000007;;,
      22;3; 0.000000,32.683979, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.871735, 0.489644,-0.017399, 0.004938;;,
      1;4;-0.865595, 0.500722,-0.004060,-0.002648;;,
      2;4;-0.862965, 0.505199, 0.004050,-0.007032;;,
      3;4;-0.865048, 0.501650, 0.002515,-0.005727;;,
      4;4;-0.870357, 0.492328,-0.009541, 0.001157;;,
      5;4;-0.875758, 0.481830,-0.027836, 0.010634;;,
      6;4;-0.879132, 0.474224,-0.043600, 0.018360;;,
      7;4;-0.881069, 0.470048,-0.048300, 0.020952;;,
      8;4;-0.883588, 0.466193,-0.040094, 0.018113;;,
      9;4;-0.887029, 0.460772,-0.026372, 0.013192;;,
      10;4;-0.888584, 0.458222,-0.018593, 0.010286;;,
      11;4;-0.884504, 0.465918,-0.021624, 0.010292;;,
      12;4;-0.874337, 0.484448,-0.027208, 0.010209;;,
      13;4;-0.863226, 0.504365,-0.020727, 0.005250;;,
      14;4;-0.858228, 0.513219, 0.003518,-0.006213;;,
      15;4;-0.861524, 0.506212, 0.034493,-0.018360;;,
      16;4;-0.869301, 0.490944, 0.052606,-0.022866;;,
      17;4;-0.876498, 0.478857, 0.046364,-0.017248;;,
      18;4;-0.880100, 0.474264, 0.021637,-0.005506;;,
      19;4;-0.879990, 0.474934,-0.004048, 0.006167;;,
      20;4;-0.879747, 0.475164,-0.010050, 0.012795;;,
      21;4;-0.881873, 0.471455, 0.005230, 0.001998;;,
      22;4;-0.840264, 0.538985,-0.045310, 0.037399;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001,27.100000,-0.000008;;,
      1;3;-0.000006,27.100010,-0.000005;;,
      2;3;-0.000003,27.100014, 0.000005;;,
      3;3;-0.000003,27.100018,-0.000006;;,
      4;3; 0.000002,27.100000,-0.000006;;,
      5;3;-0.000001,27.100046, 0.000017;;,
      6;3;-0.000003,27.100018, 0.000006;;,
      7;3; 0.000001,27.099991, 0.000000;;,
      8;3; 0.000007,27.100010, 0.000005;;,
      9;3;-0.000000,27.099987, 0.000000;;,
      10;3; 0.000002,27.100019, 0.000004;;,
      11;3; 0.000000,27.100000,-0.000013;;,
      12;3; 0.000001,27.099993, 0.000001;;,
      13;3; 0.000003,27.100008, 0.000016;;,
      14;3; 0.000003,27.099998,-0.000028;;,
      15;3;-0.000004,27.100008, 0.000020;;,
      16;3;-0.000001,27.100002,-0.000018;;,
      17;3;-0.000002,27.100012,-0.000012;;,
      18;3;-0.000004,27.100002,-0.000011;;,
      19;3; 0.000002,27.100002,-0.000026;;,
      20;3;-0.000002,27.100008,-0.000005;;,
      21;3; 0.000001,27.100002,-0.000001;;,
      22;3; 0.000003,27.100006, 0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000001,16.632002, 0.000006;;,
      1;3;-0.000001,16.631989, 0.000005;;,
      2;3; 0.000003,16.632002, 0.000013;;,
      3;3;-0.000004,16.632000,-0.000011;;,
      4;3;-0.000005,16.631998,-0.000008;;,
      5;3;-0.000001,16.631994, 0.000010;;,
      6;3; 0.000000,16.631994, 0.000004;;,
      7;3; 0.000003,16.631989, 0.000024;;,
      8;3; 0.000004,16.632000,-0.000005;;,
      9;3; 0.000002,16.632004,-0.000010;;,
      10;3;-0.000003,16.631989, 0.000000;;,
      11;3;-0.000003,16.631973,-0.000004;;,
      12;3; 0.000004,16.631996, 0.000006;;,
      13;3;-0.000001,16.631990, 0.000003;;,
      14;3;-0.000002,16.632010, 0.000002;;,
      15;3;-0.000008,16.631994,-0.000004;;,
      16;3;-0.000000,16.632006,-0.000007;;,
      17;3;-0.000001,16.632004,-0.000005;;,
      18;3;-0.000001,16.631990,-0.000005;;,
      19;3;-0.000002,16.631996, 0.000007;;,
      20;3; 0.000003,16.632002, 0.000012;;,
      21;3;-0.000005,16.631992, 0.000000;;,
      22;3;-0.000004,16.631992,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.147548,-0.106337, 0.804561, 0.565335;;,
      1;4;-0.168533,-0.120615, 0.836716, 0.506908;;,
      2;4;-0.199455,-0.127391, 0.859929, 0.452229;;,
      3;4;-0.239638,-0.124440, 0.872335, 0.407578;;,
      4;4;-0.283086,-0.115012, 0.872799, 0.380600;;,
      5;4;-0.322732,-0.101804, 0.862909, 0.375323;;,
      6;4;-0.352057,-0.086876, 0.846229, 0.390391;;,
      7;4;-0.368169,-0.070565, 0.826273, 0.420411;;,
      8;4;-0.371510,-0.051777, 0.805564, 0.458658;;,
      9;4;-0.363809,-0.030292, 0.786317, 0.498429;;,
      10;4;-0.348362,-0.007104, 0.769529, 0.535181;;,
      11;4;-0.326016, 0.014384, 0.756568, 0.566667;;,
      12;4;-0.296020, 0.030977, 0.750589, 0.589940;;,
      13;4;-0.255434, 0.038940, 0.756611, 0.600648;;,
      14;4;-0.204115, 0.034224, 0.775024, 0.597079;;,
      15;4;-0.146560, 0.014401, 0.798947, 0.583092;;,
      16;4;-0.091308,-0.020404, 0.816679, 0.569458;;,
      17;4;-0.048998,-0.065003, 0.815143, 0.573513;;,
      18;4;-0.022109,-0.107640, 0.790126, 0.603014;;,
      19;4;-0.017850,-0.133689, 0.778610, 0.612842;;,
      20;4;-0.020642,-0.114805, 0.715270, 0.689045;;,
      21;4; 0.005122,-0.062417, 0.642161, 0.764007;;,
      22;4; 0.030605,-0.044405, 0.558061, 0.828046;;;
    }
    AnimationKey { // Scale
      1;
      23;
      0;3; 1.000000, 0.999997, 1.000000;;,
      1;3; 1.000000, 0.999997, 1.000000;;,
      2;3; 1.000000, 0.999998, 1.000000;;,
      3;3; 0.999999, 0.999998, 1.000000;;,
      4;3; 0.999999, 0.999998, 1.000000;;,
      5;3; 0.999999, 0.999998, 1.000000;;,
      6;3; 0.999999, 0.999998, 1.000000;;,
      7;3; 0.999999, 0.999998, 1.000000;;,
      8;3; 0.999999, 0.999998, 1.000000;;,
      9;3; 0.999999, 0.999998, 1.000000;;,
      10;3; 1.000000, 0.999998, 1.000000;;,
      11;3; 1.000000, 0.999997, 1.000000;;,
      12;3; 1.000000, 0.999997, 1.000000;;,
      13;3; 1.000000, 0.999997, 1.000000;;,
      14;3; 1.000000, 0.999997, 1.000000;;,
      15;3; 1.000000, 0.999997, 1.000000;;,
      16;3; 1.000000, 0.999997, 1.000000;;,
      17;3; 1.000000, 0.999997, 1.000000;;,
      18;3; 1.000000, 0.999997, 1.000000;;,
      19;3; 1.000000, 0.999998, 1.000000;;,
      20;3; 1.000000, 0.999998, 0.999999;;,
      21;3; 1.000000, 0.999998, 0.999999;;,
      22;3; 1.000000, 0.999999, 0.999998;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-19.899099,-7.884995,-3.429521;;,
      1;3;-19.899096,-7.884996,-3.429518;;,
      2;3;-19.899101,-7.885003,-3.429511;;,
      3;3;-19.899097,-7.884990,-3.429515;;,
      4;3;-19.899097,-7.884995,-3.429512;;,
      5;3;-19.899097,-7.884989,-3.429519;;,
      6;3;-19.899099,-7.884994,-3.429508;;,
      7;3;-19.899099,-7.885000,-3.429506;;,
      8;3;-19.899099,-7.884992,-3.429497;;,
      9;3;-19.899097,-7.885004,-3.429500;;,
      10;3;-19.899103,-7.885007,-3.429500;;,
      11;3;-19.899099,-7.884990,-3.429514;;,
      12;3;-19.899097,-7.885015,-3.429479;;,
      13;3;-19.899096,-7.884992,-3.429511;;,
      14;3;-19.899097,-7.885010,-3.429513;;,
      15;3;-19.899099,-7.885005,-3.429486;;,
      16;3;-19.899097,-7.885000,-3.429493;;,
      17;3;-19.899099,-7.884999,-3.429517;;,
      18;3;-19.899094,-7.885001,-3.429493;;,
      19;3;-19.899099,-7.884996,-3.429509;;,
      20;3;-19.899097,-7.884992,-3.429493;;,
      21;3;-19.899097,-7.884989,-3.429502;;,
      22;3;-19.899097,-7.885000,-3.429499;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.329933,-0.942594, 0.026805, 0.044065;;,
      1;4;-0.285625,-0.956712, 0.016859, 0.053255;;,
      2;4;-0.249677,-0.965879, 0.011004, 0.067954;;,
      3;4;-0.222124,-0.970728, 0.007122, 0.091089;;,
      4;4;-0.202332,-0.971766, 0.004004, 0.121308;;,
      5;4;-0.190239,-0.969597,-0.000346, 0.153915;;,
      6;4;-0.184543,-0.965594,-0.006060, 0.183125;;,
      7;4;-0.183342,-0.961311,-0.012106, 0.205232;;,
      8;4;-0.184817,-0.958081,-0.016822, 0.218265;;,
      9;4;-0.186661,-0.955977,-0.020818, 0.225459;;,
      10;4;-0.188458,-0.954857,-0.024336, 0.228342;;,
      11;4;-0.191611,-0.954573,-0.026988, 0.226599;;,
      12;4;-0.199620,-0.955196,-0.028094, 0.216711;;,
      13;4;-0.215602,-0.956570,-0.028403, 0.194119;;,
      14;4;-0.241689,-0.956781,-0.029587, 0.159002;;,
      15;4;-0.283064,-0.951442,-0.033069, 0.116355;;,
      16;4;-0.350362,-0.932635,-0.040799, 0.075982;;,
      17;4;-0.450886,-0.889424,-0.054637, 0.051397;;,
      18;4;-0.570539,-0.816615,-0.073329, 0.047419;;,
      19;4;-0.624114,-0.774203,-0.085042, 0.062115;;,
      20;4;-0.738954,-0.663756,-0.094683, 0.066402;;,
      21;4;-0.835217,-0.540467,-0.095318, 0.034964;;,
      22;4;-0.891191,-0.440342,-0.108642, 0.008654;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000005,38.282909,-0.000010;;,
      1;3;-0.000006,38.282917, 0.000003;;,
      2;3;-0.000008,38.282932, 0.000005;;,
      3;3;-0.000008,38.282909,-0.000000;;,
      4;3;-0.000021,38.282936,-0.000000;;,
      5;3; 0.000000,38.282928, 0.000005;;,
      6;3; 0.000000,38.282917, 0.000001;;,
      7;3;-0.000003,38.282913, 0.000006;;,
      8;3;-0.000004,38.282925, 0.000008;;,
      9;3;-0.000003,38.282906, 0.000012;;,
      10;3; 0.000010,38.282913, 0.000002;;,
      11;3; 0.000001,38.282913,-0.000023;;,
      12;3;-0.000006,38.282906,-0.000006;;,
      13;3; 0.000002,38.282917, 0.000022;;,
      14;3; 0.000001,38.282917,-0.000008;;,
      15;3; 0.000004,38.282906, 0.000005;;,
      16;3;-0.000000,38.282928,-0.000006;;,
      17;3;-0.000003,38.282906, 0.000009;;,
      18;3; 0.000003,38.282902, 0.000001;;,
      19;3; 0.000001,38.282894, 0.000004;;,
      20;3;-0.000003,38.282902,-0.000002;;,
      21;3; 0.000002,38.282909, 0.000006;;,
      22;3; 0.000001,38.282909, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.937736, 0.346041,-0.003092,-0.029952;;,
      1;4;-0.943864, 0.327800,-0.006219,-0.040365;;,
      2;4;-0.949449, 0.309527,-0.010138,-0.051356;;,
      3;4;-0.953124, 0.296397,-0.014976,-0.058984;;,
      4;4;-0.953397, 0.294654,-0.020570,-0.061568;;,
      5;4;-0.949983, 0.306419,-0.024620,-0.055085;;,
      6;4;-0.942567, 0.330685,-0.025758,-0.039388;;,
      7;4;-0.931124, 0.363415,-0.024624,-0.018192;;,
      8;4;-0.916876, 0.398506,-0.022698, 0.003873;;,
      9;4;-0.901283, 0.431928,-0.020484, 0.026602;;,
      10;4;-0.886241, 0.460529,-0.018491, 0.046352;;,
      11;4;-0.871758, 0.485780,-0.016602, 0.061482;;,
      12;4;-0.860401, 0.504157,-0.013666, 0.073140;;,
      13;4;-0.860135, 0.503486,-0.008784, 0.081198;;,
      14;4;-0.876190, 0.474892,-0.002782, 0.082228;;,
      15;4;-0.905118, 0.418715, 0.002299, 0.073716;;,
      16;4;-0.939248, 0.338941, 0.003314, 0.054057;;,
      17;4;-0.968094, 0.249123,-0.001102, 0.027046;;,
      18;4;-0.985196, 0.171212,-0.007069, 0.005113;;,
      19;4;-0.989062, 0.147118,-0.009506,-0.004738;;,
      20;4;-0.973768, 0.221351,-0.005251, 0.052465;;,
      21;4;-0.959423, 0.263213,-0.007707, 0.100835;;,
      22;4;-0.946537, 0.305516,-0.021631, 0.101293;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000005,32.684067, 0.000014;;,
      1;3;-0.000005,32.684067, 0.000008;;,
      2;3;-0.000003,32.684071, 0.000002;;,
      3;3;-0.000013,32.684052, 0.000007;;,
      4;3; 0.000008,32.684082, 0.000003;;,
      5;3; 0.000003,32.684048, 0.000005;;,
      6;3;-0.000003,32.684055,-0.000001;;,
      7;3; 0.000001,32.684063,-0.000001;;,
      8;3; 0.000001,32.684052,-0.000002;;,
      9;3;-0.000005,32.684067, 0.000014;;,
      10;3;-0.000000,32.684059,-0.000008;;,
      11;3; 0.000002,32.684063, 0.000007;;,
      12;3; 0.000004,32.684063,-0.000004;;,
      13;3; 0.000000,32.684063, 0.000002;;,
      14;3; 0.000000,32.684063, 0.000031;;,
      15;3; 0.000001,32.684052,-0.000015;;,
      16;3; 0.000000,32.684067,-0.000008;;,
      17;3; 0.000003,32.684063,-0.000008;;,
      18;3;-0.000000,32.684055, 0.000008;;,
      19;3; 0.000000,32.684059,-0.000008;;,
      20;3; 0.000001,32.684071,-0.000014;;,
      21;3;-0.000000,32.684063,-0.000010;;,
      22;3; 0.000000,32.684063, 0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.896453, 0.441594, 0.035450,-0.010496;;,
      1;4;-0.894287, 0.446230, 0.032225,-0.009522;;,
      2;4;-0.892812, 0.448927, 0.035258,-0.010403;;,
      3;4;-0.892344, 0.449025, 0.043936,-0.013024;;,
      4;4;-0.892732, 0.447124, 0.053453,-0.015882;;,
      5;4;-0.893392, 0.445090, 0.058668,-0.017409;;,
      6;4;-0.893433, 0.445093, 0.058079,-0.017223;;,
      7;4;-0.892237, 0.448029, 0.054088,-0.016075;;,
      8;4;-0.890401, 0.452244, 0.049439,-0.014745;;,
      9;4;-0.889755, 0.454129, 0.043947,-0.013101;;,
      10;4;-0.891624, 0.451267, 0.035441,-0.010449;;,
      11;4;-0.894972, 0.445438, 0.023734,-0.006843;;,
      12;4;-0.897160, 0.441512, 0.012593,-0.003510;;,
      13;4;-0.896845, 0.442284, 0.007082,-0.001957;;,
      14;4;-0.895523, 0.444907, 0.009296,-0.003024;;,
      15;4;-0.895891, 0.443909, 0.016867,-0.006250;;,
      16;4;-0.898926, 0.437295, 0.024590,-0.010008;;,
      17;4;-0.903187, 0.428193, 0.027227,-0.012732;;,
      18;4;-0.906711, 0.420892, 0.022907,-0.014128;;,
      19;4;-0.908576, 0.417143, 0.015672,-0.015349;;,
      20;4;-0.907719, 0.419138, 0.010362,-0.016202;;,
      21;4;-0.904017, 0.427347, 0.004167,-0.010512;;,
      22;4;-0.899056, 0.437819,-0.002521,-0.002516;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000004,27.100008, 0.000014;;,
      1;3;-0.000008,27.100008,-0.000011;;,
      2;3;-0.000002,27.100008,-0.000023;;,
      3;3; 0.000002,27.100012, 0.000014;;,
      4;3; 0.000002,27.100008,-0.000003;;,
      5;3; 0.000012,27.100031, 0.000004;;,
      6;3; 0.000006,27.099998,-0.000014;;,
      7;3; 0.000008,27.100018,-0.000012;;,
      8;3;-0.000002,27.099997,-0.000009;;,
      9;3;-0.000003,27.100021,-0.000002;;,
      10;3; 0.000002,27.100012,-0.000001;;,
      11;3; 0.000002,27.100025,-0.000004;;,
      12;3;-0.000004,27.099993, 0.000008;;,
      13;3; 0.000004,27.100008, 0.000011;;,
      14;3; 0.000001,27.100021,-0.000005;;,
      15;3;-0.000003,27.100010,-0.000002;;,
      16;3;-0.000001,27.100008, 0.000003;;,
      17;3; 0.000001,27.100021, 0.000025;;,
      18;3; 0.000000,27.100012, 0.000016;;,
      19;3; 0.000001,27.100008, 0.000019;;,
      20;3; 0.000005,27.100010,-0.000008;;,
      21;3; 0.000000,27.100008,-0.000001;;,
      22;3; 0.000001,27.100010, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToe_End}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000002,16.631947, 0.000003;;,
      1;3;-0.000000,16.631935, 0.000002;;,
      2;3;-0.000009,16.631950, 0.000005;;,
      3;3; 0.000000,16.631954,-0.000023;;,
      4;3;-0.000002,16.631947, 0.000004;;,
      5;3;-0.000004,16.631956, 0.000011;;,
      6;3;-0.000006,16.631945, 0.000001;;,
      7;3; 0.000008,16.631939, 0.000009;;,
      8;3; 0.000002,16.631947,-0.000010;;,
      9;3;-0.000006,16.631947,-0.000004;;,
      10;3;-0.000001,16.631943,-0.000014;;,
      11;3;-0.000004,16.631977, 0.000013;;,
      12;3;-0.000008,16.631929, 0.000015;;,
      13;3;-0.000002,16.631947, 0.000002;;,
      14;3;-0.000005,16.631937, 0.000004;;,
      15;3;-0.000003,16.631954, 0.000001;;,
      16;3; 0.000004,16.631947,-0.000004;;,
      17;3;-0.000001,16.631956, 0.000006;;,
      18;3; 0.000002,16.631947,-0.000006;;,
      19;3; 0.000003,16.631929,-0.000005;;,
      20;3;-0.000001,16.631948, 0.000000;;,
      21;3;-0.000002,16.631931, 0.000010;;,
      22;3; 0.000002,16.631948,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth1}
    AnimationKey { // Rotation
      0;
      23;
      0;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      1;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      2;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      3;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      4;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      5;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      6;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      7;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      8;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      9;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      10;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      11;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      12;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      13;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      14;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      15;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      16;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      17;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      18;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      19;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      20;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      21;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      22;4;-0.000000, 1.000000,-0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000,-19.940702,22.170185;;,
      1;3; 0.000000,-19.940701,22.170189;;,
      2;3;-0.000000,-19.940708,22.170193;;,
      3;3; 0.000000,-19.940701,22.170197;;,
      4;3; 0.000001,-19.940699,22.170193;;,
      5;3; 0.000000,-19.940699,22.170181;;,
      6;3; 0.000000,-19.940685,22.170200;;,
      7;3; 0.000001,-19.940702,22.170204;;,
      8;3; 0.000001,-19.940685,22.170208;;,
      9;3;-0.000000,-19.940712,22.170198;;,
      10;3;-0.000001,-19.940693,22.170200;;,
      11;3;-0.000000,-19.940701,22.170191;;,
      12;3;-0.000001,-19.940712,22.170219;;,
      13;3; 0.000002,-19.940706,22.170198;;,
      14;3; 0.000000,-19.940714,22.170187;;,
      15;3; 0.000000,-19.940708,22.170204;;,
      16;3;-0.000000,-19.940702,22.170202;;,
      17;3; 0.000001,-19.940706,22.170193;;,
      18;3; 0.000001,-19.940704,22.170218;;,
      19;3; 0.000001,-19.940704,22.170193;;,
      20;3;-0.000001,-19.940693,22.170202;;,
      21;3; 0.000000,-19.940699,22.170204;;,
      22;3; 0.000000,-19.940706,22.170208;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth2}
    AnimationKey { // Rotation
      0;
      23;
      0;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      1;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      2;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      3;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      4;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      5;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      6;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      7;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      8;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      9;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      10;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      11;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      12;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      13;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      14;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      15;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      16;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      17;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      18;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      19;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      20;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      21;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      22;4; 0.000000, 0.000000, 1.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,10.763300, 0.000021;;,
      1;3;-0.000000,10.763294, 0.000015;;,
      2;3;-0.000000,10.763297, 0.000006;;,
      3;3; 0.000001,10.763300,-0.000014;;,
      4;3;-0.000000,10.763303,-0.000001;;,
      5;3;-0.000001,10.763316, 0.000015;;,
      6;3;-0.000001,10.763283, 0.000003;;,
      7;3; 0.000001,10.763283,-0.000009;;,
      8;3;-0.000000,10.763288,-0.000003;;,
      9;3; 0.000001,10.763296, 0.000001;;,
      10;3;-0.000001,10.763298,-0.000006;;,
      11;3;-0.000000,10.763293,-0.000001;;,
      12;3; 0.000000,10.763302,-0.000012;;,
      13;3;-0.000001,10.763288, 0.000002;;,
      14;3; 0.000000,10.763288,-0.000011;;,
      15;3; 0.000001,10.763302,-0.000022;;,
      16;3; 0.000000,10.763299, 0.000012;;,
      17;3; 0.000001,10.763300,-0.000009;;,
      18;3; 0.000001,10.763289,-0.000002;;,
      19;3;-0.000001,10.763300, 0.000011;;,
      20;3;-0.000000,10.763300, 0.000005;;,
      21;3;-0.000001,10.763298, 0.000004;;,
      22;3;-0.000000,10.763297, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      1;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      2;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      3;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      4;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      5;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      6;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      7;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      8;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      9;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      10;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      11;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      12;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      13;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      14;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      15;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      16;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      17;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      18;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      19;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      20;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      21;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      22;4;-0.000000,-0.000000, 1.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000,13.749512,-0.000019;;,
      1;3; 0.000000,13.749501, 0.000015;;,
      2;3;-0.000000,13.749509,-0.000014;;,
      3;3; 0.000000,13.749518,-0.000010;;,
      4;3;-0.000000,13.749507,-0.000003;;,
      5;3;-0.000000,13.749515, 0.000002;;,
      6;3;-0.000000,13.749505,-0.000001;;,
      7;3; 0.000000,13.749505, 0.000003;;,
      8;3;-0.000000,13.749502, 0.000002;;,
      9;3; 0.000000,13.749518,-0.000001;;,
      10;3;-0.000001,13.749502, 0.000001;;,
      11;3; 0.000001,13.749503,-0.000001;;,
      12;3; 0.000003,13.749529, 0.000006;;,
      13;3; 0.000001,13.749516,-0.000002;;,
      14;3;-0.000000,13.749518, 0.000004;;,
      15;3; 0.000000,13.749514, 0.000024;;,
      16;3; 0.000002,13.749502, 0.000001;;,
      17;3;-0.000000,13.749511,-0.000020;;,
      18;3;-0.000000,13.749512,-0.000015;;,
      19;3; 0.000001,13.749499,-0.000019;;,
      20;3; 0.000001,13.749512,-0.000007;;,
      21;3; 0.000001,13.749515, 0.000008;;,
      22;3; 0.000000,13.749505,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3; 0.000000,14.182601, 0.000007;;,
      1;3;-0.000000,14.182594,-0.000006;;,
      2;3;-0.000000,14.182592,-0.000001;;,
      3;3;-0.000000,14.182592,-0.000012;;,
      4;3; 0.000001,14.182592,-0.000003;;,
      5;3;-0.000002,14.182599,-0.000011;;,
      6;3; 0.000001,14.182592, 0.000003;;,
      7;3; 0.000001,14.182593,-0.000006;;,
      8;3;-0.000000,14.182606,-0.000003;;,
      9;3;-0.000001,14.182607,-0.000001;;,
      10;3;-0.000002,14.182590,-0.000003;;,
      11;3;-0.000001,14.182609, 0.000004;;,
      12;3;-0.000002,14.182611,-0.000018;;,
      13;3;-0.000002,14.182608, 0.000001;;,
      14;3; 0.000000,14.182610,-0.000006;;,
      15;3;-0.000000,14.182605, 0.000002;;,
      16;3;-0.000002,14.182595, 0.000019;;,
      17;3; 0.000000,14.182604,-0.000007;;,
      18;3; 0.000000,14.182598, 0.000025;;,
      19;3; 0.000000,14.182597,-0.000001;;,
      20;3; 0.000000,14.182596, 0.000013;;,
      21;3; 0.000001,14.182601,-0.000002;;,
      22;3;-0.000000,14.182599, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      1;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      2;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      3;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      4;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      5;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      6;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      7;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      8;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      9;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      10;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      11;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      12;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      13;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      14;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      15;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      16;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      17;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      18;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      19;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      20;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      21;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      22;4;-0.707106,-0.000000,-0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;-0.000000,-5.419194,-29.327021;;,
      1;3;-0.000000,-5.419196,-29.327017;;,
      2;3;-0.000000,-5.419199,-29.327005;;,
      3;3; 0.000000,-5.419188,-29.327017;;,
      4;3; 0.000000,-5.419197,-29.327026;;,
      5;3; 0.000000,-5.419188,-29.327023;;,
      6;3; 0.000000,-5.419182,-29.327007;;,
      7;3; 0.000002,-5.419201,-29.327000;;,
      8;3; 0.000001,-5.419199,-29.326996;;,
      9;3;-0.000000,-5.419204,-29.326998;;,
      10;3;-0.000002,-5.419208,-29.327000;;,
      11;3;-0.000001,-5.419199,-29.327007;;,
      12;3;-0.000001,-5.419200,-29.326984;;,
      13;3; 0.000002,-5.419193,-29.327009;;,
      14;3; 0.000000,-5.419207,-29.327017;;,
      15;3; 0.000000,-5.419203,-29.326994;;,
      16;3;-0.000001,-5.419197,-29.326998;;,
      17;3; 0.000001,-5.419195,-29.327013;;,
      18;3; 0.000000,-5.419200,-29.326988;;,
      19;3;-0.000001,-5.419198,-29.327013;;,
      20;3;-0.000001,-5.419190,-29.326996;;,
      21;3;-0.000000,-5.419192,-29.327003;;,
      22;3;-0.000000,-5.419199,-29.326998;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth2}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;15.308603, 0.000001, 0.000004;;,
      1;3;15.308599, 0.000002, 0.000033;;,
      2;3;15.308602, 0.000000,-0.000017;;,
      3;3;15.308613, 0.000001, 0.000006;;,
      4;3;15.308596, 0.000002, 0.000016;;,
      5;3;15.308591, 0.000000, 0.000009;;,
      6;3;15.308594, 0.000002,-0.000012;;,
      7;3;15.308603, 0.000003,-0.000011;;,
      8;3;15.308612, 0.000001,-0.000001;;,
      9;3;15.308604,-0.000000,-0.000001;;,
      10;3;15.308599, 0.000000,-0.000003;;,
      11;3;15.308602, 0.000002,-0.000009;;,
      12;3;15.308607,-0.000000, 0.000012;;,
      13;3;15.308592, 0.000002, 0.000001;;,
      14;3;15.308611, 0.000000,-0.000009;;,
      15;3;15.308598, 0.000000, 0.000013;;,
      16;3;15.308601, 0.000000,-0.000002;;,
      17;3;15.308599, 0.000002, 0.000003;;,
      18;3;15.308600, 0.000001,-0.000004;;,
      19;3;15.308597, 0.000000,-0.000006;;,
      20;3;15.308599,-0.000000, 0.000005;;,
      21;3;15.308605, 0.000001, 0.000004;;,
      22;3;15.308608, 0.000001,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth3}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;17.777098, 0.000002,-0.000012;;,
      1;3;17.777098, 0.000002, 0.000015;;,
      2;3;17.777100, 0.000001,-0.000005;;,
      3;3;17.777111, 0.000002, 0.000014;;,
      4;3;17.777103, 0.000003, 0.000025;;,
      5;3;17.777082, 0.000002, 0.000008;;,
      6;3;17.777105, 0.000002,-0.000001;;,
      7;3;17.777119, 0.000003,-0.000008;;,
      8;3;17.777096, 0.000002,-0.000001;;,
      9;3;17.777111, 0.000003, 0.000003;;,
      10;3;17.777100, 0.000002, 0.000002;;,
      11;3;17.777069, 0.000001, 0.000009;;,
      12;3;17.777103, 0.000002, 0.000014;;,
      13;3;17.777102, 0.000003,-0.000005;;,
      14;3;17.777107, 0.000002,-0.000011;;,
      15;3;17.777102, 0.000002, 0.000029;;,
      16;3;17.777098, 0.000001, 0.000012;;,
      17;3;17.777109, 0.000002, 0.000004;;,
      18;3;17.777103, 0.000002,-0.000005;;,
      19;3;17.777103, 0.000001,-0.000007;;,
      20;3;17.777096, 0.000002, 0.000004;;,
      21;3;17.777098, 0.000001, 0.000001;;,
      22;3;17.777107, 0.000002, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth4}
    AnimationKey { // Rotation
      0;
      23;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      23;
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
      22;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      23;
      0;3;15.545403, 0.000002,-0.000006;;,
      1;3;15.545398, 0.000002, 0.000011;;,
      2;3;15.545404, 0.000002, 0.000009;;,
      3;3;15.545409, 0.000003, 0.000001;;,
      4;3;15.545396, 0.000002, 0.000033;;,
      5;3;15.545382, 0.000001, 0.000003;;,
      6;3;15.545424, 0.000002, 0.000009;;,
      7;3;15.545408, 0.000002,-0.000004;;,
      8;3;15.545378, 0.000000, 0.000000;;,
      9;3;15.545401, 0.000002,-0.000000;;,
      10;3;15.545377, 0.000002,-0.000003;;,
      11;3;15.545376, 0.000001,-0.000011;;,
      12;3;15.545376, 0.000003, 0.000004;;,
      13;3;15.545414, 0.000003,-0.000021;;,
      14;3;15.545402, 0.000004,-0.000011;;,
      15;3;15.545404, 0.000001,-0.000003;;,
      16;3;15.545405, 0.000000, 0.000009;;,
      17;3;15.545400, 0.000003, 0.000004;;,
      18;3;15.545396, 0.000003,-0.000006;;,
      19;3;15.545397, 0.000001, 0.000005;;,
      20;3;15.545397, 0.000002,-0.000005;;,
      21;3;15.545397, 0.000002, 0.000001;;,
      22;3;15.545402, 0.000002,-0.000001;;;
    }
  }
} // End of AnimationSet Global
