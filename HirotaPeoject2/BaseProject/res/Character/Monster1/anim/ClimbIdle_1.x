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
         0.984304,-0.101976,-0.144039, 0.000000,
        -0.002234, 0.808896,-0.587947, 0.000000,
         0.176469, 0.579041, 0.795972, 0.000000,
         7.629294,90.952637, 3.553513, 1.000000;;
      }
      Frame Armature_mixamorig_BackCloth1 {
        FrameTransformMatrix {
          -0.000002,-1.000000, 0.000000, 0.000000,
           1.000000,-0.000002,-0.000000, 0.000000,
          -0.000000, 0.000000, 1.000000, 0.000000,
           0.000000,-5.419199,-29.327000, 1.000000;;
        }
        Frame Armature_mixamorig_BackCloth2 {
          FrameTransformMatrix {
             1.000000,-0.000000, 0.000000, 0.000000,
            -0.000000, 1.000000,-0.000000, 0.000000,
             0.000000,-0.000000, 1.000000, 0.000000,
            15.308603, 0.000001, 0.000005, 1.000000;;
          }
          Frame Armature_mixamorig_BackCloth3 {
            FrameTransformMatrix {
               1.000000,-0.000000, 0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
               0.000000,-0.000000, 1.000000, 0.000000,
              17.777103, 0.000001,-0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_BackCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000, 0.000000, 0.000000,
                -0.000000, 1.000000,-0.000000, 0.000000,
                 0.000000,-0.000000, 1.000000, 0.000000,
                15.545395, 0.000001, 0.000003, 1.000000;;
              }
            } // End of Armature_mixamorig_BackCloth4
          } // End of Armature_mixamorig_BackCloth3
        } // End of Armature_mixamorig_BackCloth2
      } // End of Armature_mixamorig_BackCloth1
      Frame Armature_mixamorig_FrontCloth1 {
        FrameTransformMatrix {
           1.000000,-0.000002,-0.000000, 0.000000,
          -0.000002,-1.000000, 0.000000, 0.000000,
          -0.000000,-0.000000,-1.000000, 0.000000,
          -0.000000,-19.940702,22.170202, 1.000000;;
        }
        Frame Armature_mixamorig_FrontCloth2 {
          FrameTransformMatrix {
            -1.000000, 0.000000, 0.000000, 0.000000,
             0.000000, 1.000000, 0.000000, 0.000000,
            -0.000000, 0.000000,-1.000000, 0.000000,
            -0.000000,10.763300, 0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_FrontCloth3 {
            FrameTransformMatrix {
              -1.000000, 0.000000,-0.000000, 0.000000,
               0.000000, 1.000000,-0.000000, 0.000000,
               0.000000, 0.000000,-1.000000, 0.000000,
              -0.000000,13.749508, 0.000008, 1.000000;;
            }
            Frame Armature_mixamorig_FrontCloth4 {
              FrameTransformMatrix {
                 1.000000, 0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000, 0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                 0.000000,14.182594,-0.000005, 1.000000;;
              }
            } // End of Armature_mixamorig_FrontCloth4
          } // End of Armature_mixamorig_FrontCloth3
        } // End of Armature_mixamorig_FrontCloth2
      } // End of Armature_mixamorig_FrontCloth1
      Frame Armature_mixamorig_LeftUpLeg {
        FrameTransformMatrix {
          -0.973924,-0.194811, 0.116275, 0.000000,
           0.084743, 0.163038, 0.982974, 0.000000,
          -0.210452, 0.967196,-0.142277, 0.000000,
          19.899096,-7.885098,-3.429502, 1.000000;;
        }
        Frame Armature_mixamorig_LeftLeg {
          FrameTransformMatrix {
             0.899929,-0.343279, 0.268863, 0.000000,
            -0.313606,-0.937967,-0.147884, 0.000000,
             0.302950, 0.048768,-0.951758, 0.000000,
             0.000001,38.282917, 0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_LeftFoot {
            FrameTransformMatrix {
               0.873044,-0.398770,-0.280672, 0.000000,
               0.092719,-0.429324, 0.898379, 0.000000,
              -0.478746,-0.810348,-0.337845, 0.000000,
               0.000000,32.683983,-0.000000, 1.000000;;
            }
            Frame Armature_mixamorig_LeftToeBase {
              FrameTransformMatrix {
                 1.000000, 0.000001,-0.000001, 0.000000,
                 0.000001,-0.122916, 0.992417, 0.000000,
                 0.000001,-0.992417,-0.122916, 0.000000,
                -0.000002,27.100002, 0.000013, 1.000000;;
              }
              Frame Armature_mixamorig_LeftToe_End {
                FrameTransformMatrix {
                   1.000000, 0.000000, 0.000000, 0.000000,
                  -0.000000, 1.000000, 0.000000, 0.000000,
                  -0.000000, 0.000000, 1.000000, 0.000000,
                  -0.000000,16.632004, 0.000001, 1.000000;;
                }
              } // End of Armature_mixamorig_LeftToe_End
            } // End of Armature_mixamorig_LeftToeBase
          } // End of Armature_mixamorig_LeftFoot
        } // End of Armature_mixamorig_LeftLeg
      } // End of Armature_mixamorig_LeftUpLeg
      Frame Armature_mixamorig_RightUpLeg {
        FrameTransformMatrix {
          -0.939077, 0.105194,-0.327214, 0.000000,
          -0.084660,-0.993474,-0.076418, 0.000000,
          -0.333118,-0.044062, 0.941853, 0.000000,
          -19.899099,-7.884997,-3.429500, 1.000000;;
        }
        Frame Armature_mixamorig_RightLeg {
          FrameTransformMatrix {
             0.951165, 0.242146, 0.191442, 0.000000,
             0.094184, 0.362957,-0.927034, 0.000000,
            -0.293963, 0.899793, 0.322425, 0.000000,
            -0.000001,38.282913,-0.000000, 1.000000;;
          }
          Frame Armature_mixamorig_RightFoot {
            FrameTransformMatrix {
               0.996898, 0.072801, 0.029906, 0.000000,
              -0.033504, 0.048704, 0.998251, 0.000000,
               0.071217,-0.996157, 0.050992, 0.000000,
               0.000001,32.684063,-0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_RightToeBase {
              FrameTransformMatrix {
                 1.000000, 0.000002, 0.000002, 0.000000,
                -0.000002,-0.233362, 0.972390, 0.000000,
                 0.000002,-0.972390,-0.233362, 0.000000,
                -0.000001,27.100010, 0.000000, 1.000000;;
              }
              Frame Armature_mixamorig_RightToe_End {
                FrameTransformMatrix {
                   1.000000,-0.000000, 0.000000, 0.000000,
                   0.000000, 1.000000, 0.000000, 0.000000,
                   0.000000,-0.000000, 1.000000, 0.000000,
                   0.000001,16.631941,-0.000001, 1.000000;;
                }
              } // End of Armature_mixamorig_RightToe_End
            } // End of Armature_mixamorig_RightToeBase
          } // End of Armature_mixamorig_RightFoot
        } // End of Armature_mixamorig_RightLeg
      } // End of Armature_mixamorig_RightUpLeg
      Frame Armature_mixamorig_Spine {
        FrameTransformMatrix {
           0.996861,-0.006168,-0.078936, 0.000000,
           0.024734, 0.971328, 0.236454, 0.000000,
           0.075214,-0.237664, 0.968431, 0.000000,
          -0.000000,13.784798, 0.064404, 1.000000;;
        }
        Frame Armature_mixamorig_Spine1 {
          FrameTransformMatrix {
             0.991455, 0.022437,-0.128505, 0.000000,
             0.029606, 0.920690, 0.389170, 0.000000,
             0.127045,-0.389649, 0.912158, 0.000000,
            -0.000002,12.024303,-0.000002, 1.000000;;
          }
          Frame Armature_mixamorig_Spine2 {
            FrameTransformMatrix {
               0.991455, 0.023671,-0.128284, 0.000000,
               0.026531, 0.926256, 0.375961, 0.000000,
               0.127723,-0.376152, 0.917713, 0.000000,
              -0.000004,17.815826, 0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_LeftShoulder {
              FrameTransformMatrix {
                 0.731375, 0.069962,-0.678378, 0.000000,
                 0.665552, 0.143770, 0.732374, 0.000000,
                 0.148769,-0.987135, 0.058586, 0.000000,
                17.399494,24.614185, 1.157901, 1.000000;;
              }
              Frame Armature_mixamorig_LeftArm {
                FrameTransformMatrix {
                   0.797493, 0.070870, 0.599151, 0.000000,
                  -0.129968, 0.989941, 0.055897, 0.000000,
                  -0.589163,-0.122448, 0.798682, 0.000000,
                   0.000007,19.910402,-0.000003, 1.000000;;
                }
                Frame Armature_mixamorig_LeftForeArm {
                  FrameTransformMatrix {
                    -0.379911, 0.867137,-0.322089, 0.000000,
                    -0.919841,-0.390948, 0.032453, 0.000000,
                    -0.097779, 0.308600, 0.946153, 0.000000,
                    -0.000004,49.301300, 0.000006, 1.000000;;
                  }
                  Frame Armature_mixamorig_LeftHand {
                    FrameTransformMatrix {
                       0.740807,-0.622280,-0.252930, 0.000000,
                       0.164614, 0.533243,-0.829792, 0.000000,
                       0.651236, 0.573079, 0.497466, 0.000000,
                      -0.000002,31.604710,-0.000002, 1.000000;;
                    }
                    Frame Armature_mixamorig_LeftHandIndex1 {
                      FrameTransformMatrix {
                         0.984479, 0.088541, 0.151529, 0.000000,
                        -0.169686, 0.259793, 0.950639, 0.000000,
                         0.044804,-0.961597, 0.270785, 0.000000,
                        -6.192897,21.271070, 0.498710, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandIndex2 {
                        FrameTransformMatrix {
                           0.993824, 0.004627, 0.110868, 0.000000,
                          -0.105333, 0.353610, 0.929443, 0.000000,
                          -0.034904,-0.935381, 0.351913, 0.000000,
                          -0.000008, 7.536494,-0.000016, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandIndex3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000,-0.000000, 0.000000,
                             0.000000, 1.000000, 0.000000, 0.000000,
                            -0.000000,-0.000000, 1.000000, 0.000000,
                             0.000000, 7.512298, 0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000001,10.212400, 0.000005, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandIndex4
                        } // End of Armature_mixamorig_LeftHandIndex3
                      } // End of Armature_mixamorig_LeftHandIndex2
                    } // End of Armature_mixamorig_LeftHandIndex1
                    Frame Armature_mixamorig_LeftHandMiddle1 {
                      FrameTransformMatrix {
                         0.994666, 0.007579, 0.102869, 0.000000,
                        -0.100994, 0.274287, 0.956330, 0.000000,
                        -0.020967,-0.961618, 0.273589, 0.000000,
                         0.016497,23.334372, 0.008610, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandMiddle2 {
                        FrameTransformMatrix {
                           0.990779, 0.078137, 0.110685, 0.000000,
                          -0.126924, 0.249478, 0.960027, 0.000000,
                           0.047400,-0.965223, 0.257095, 0.000000,
                           0.000001, 6.996593,-0.000018, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandMiddle3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000,-0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                             0.000003, 7.016017, 0.000005, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000004, 7.721623, 0.000013, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandMiddle4
                        } // End of Armature_mixamorig_LeftHandMiddle3
                      } // End of Armature_mixamorig_LeftHandMiddle2
                    } // End of Armature_mixamorig_LeftHandMiddle1
                    Frame Armature_mixamorig_LeftHandPinky1 {
                      FrameTransformMatrix {
                         0.999758,-0.014178, 0.016815, 0.000000,
                        -0.009311, 0.419810, 0.907564, 0.000000,
                        -0.019926,-0.907502, 0.419576, 0.000000,
                        11.443204,18.881189, 0.461815, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandPinky2 {
                        FrameTransformMatrix {
                           0.993439, 0.114363,-0.000679, 0.000000,
                          -0.078940, 0.690008, 0.719484, 0.000000,
                           0.082751,-0.714710, 0.694509, 0.000000,
                           0.000005, 4.919604,-0.000010, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandPinky3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                             0.000005, 5.232995,-0.000006, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandPinky4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000006, 5.571695,-0.000007, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandPinky4
                        } // End of Armature_mixamorig_LeftHandPinky3
                      } // End of Armature_mixamorig_LeftHandPinky2
                    } // End of Armature_mixamorig_LeftHandPinky1
                    Frame Armature_mixamorig_LeftHandRing1 {
                      FrameTransformMatrix {
                         0.997454,-0.062172, 0.034940, 0.000000,
                        -0.010688, 0.354074, 0.935157, 0.000000,
                        -0.070512,-0.933149, 0.352507, 0.000000,
                         6.516899,22.686583, 0.103604, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandRing2 {
                        FrameTransformMatrix {
                           0.995107, 0.097419, 0.016495, 0.000000,
                          -0.046237, 0.311605, 0.949086, 0.000000,
                           0.087319,-0.945205, 0.314585, 0.000000,
                           0.000004, 6.408608,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandRing3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000,-0.000000, 0.000000,
                             0.000000, 1.000000, 0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000011, 6.150277,-0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandRing4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000004, 6.145402, 0.000000, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandRing4
                        } // End of Armature_mixamorig_LeftHandRing3
                      } // End of Armature_mixamorig_LeftHandRing2
                    } // End of Armature_mixamorig_LeftHandRing1
                    Frame Armature_mixamorig_LeftHandThumb1 {
                      FrameTransformMatrix {
                         0.835540, 0.546906,-0.052596, 0.000000,
                        -0.548634, 0.835648,-0.026326, 0.000000,
                         0.029554, 0.050852, 0.998269, 0.000000,
                        -7.059595, 6.094481, 4.397209, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandThumb2 {
                        FrameTransformMatrix {
                           0.613326,-0.393668, 0.684731, 0.000000,
                           0.429864, 0.893667, 0.128753, 0.000000,
                          -0.662607, 0.215374, 0.717332, 0.000000,
                          -0.000008, 7.536489, 0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandThumb3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000001, 7.512288, 0.000008, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000007,10.212402, 0.000008, 1.000000;;
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
                 0.977927,-0.110665, 0.177233, 0.000000,
                 0.179928, 0.877250,-0.445038, 0.000000,
                -0.106228, 0.467104, 0.877798, 0.000000,
                -0.000003,39.117577,11.976999, 1.000000;;
              }
              Frame Armature_mixamorig_Head {
                FrameTransformMatrix {
                   0.844197, 0.319772, 0.430207, 0.000000,
                  -0.054789, 0.849846,-0.524176, 0.000000,
                  -0.533226, 0.418937, 0.734957, 0.000000,
                   0.000005,14.552513,15.664104, 1.000000;;
                }
                Frame Armature_mixamorig_HeadTop_End {
                  FrameTransformMatrix {
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                     0.000003,15.601703, 7.553697, 1.000000;;
                  }
                } // End of Armature_mixamorig_HeadTop_End
                Frame Armature_mixamorig_Jaw {
                  FrameTransformMatrix {
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -0.000000,-0.587429, 0.809276, 0.000000,
                     0.000000,-0.809276,-0.587429, 0.000000,
                     0.000004,-2.317782, 3.620693, 1.000000;;
                  }
                } // End of Armature_mixamorig_Jaw
                Frame Armature_mixamorig_LeftEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                     3.528697, 2.462097,12.838191, 1.000000;;
                  }
                } // End of Armature_mixamorig_LeftEye
                Frame Armature_mixamorig_RightEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                    -3.528701, 2.462103,12.838193, 1.000000;;
                  }
                } // End of Armature_mixamorig_RightEye
              } // End of Armature_mixamorig_Head
            } // End of Armature_mixamorig_Neck
            Frame Armature_mixamorig_RightShoulder {
              FrameTransformMatrix {
                -0.046041, 0.072625, 0.996296, 0.000000,
                -0.611647, 0.786486,-0.085597, 0.000000,
                -0.789790,-0.613323, 0.008210, 0.000000,
                -17.399506,24.614290, 1.157893, 1.000000;;
              }
              Frame Armature_mixamorig_RightArm {
                FrameTransformMatrix {
                   0.581868, 0.122095,-0.804066, 0.000000,
                   0.044583, 0.982392, 0.181436, 0.000000,
                   0.812060,-0.141420, 0.566179, 0.000000,
                   0.000005,19.910389,-0.000002, 1.000000;;
                }
                Frame Armature_mixamorig_RightArmour1 {
                  FrameTransformMatrix {
                    -0.000000,-1.000000,-0.000001, 0.000000,
                    -0.000000, 0.000001,-1.000000, 0.000000,
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -1.467302, 5.012931,-18.471140, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightArmour2 {
                    FrameTransformMatrix {
                      -0.915901, 0.232054,-0.327534, 0.000000,
                      -0.183487,-0.967759,-0.172553, 0.000000,
                      -0.357018,-0.097943, 0.928950, 0.000000,
                       3.884899,-9.462715,-18.584906, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour3 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000007,11.039494,-0.000011, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour3
                  } // End of Armature_mixamorig_RightArmour2
                  Frame Armature_mixamorig_RightArmour4 {
                    FrameTransformMatrix {
                       0.708033,-0.251874, 0.659734, 0.000000,
                      -0.431906,-0.893578, 0.122374, 0.000000,
                       0.558701,-0.371588,-0.741469, 0.000000,
                      -2.648914,-11.494607,22.195301, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour5 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000002,11.039505, 0.000008, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour5
                  } // End of Armature_mixamorig_RightArmour4
                } // End of Armature_mixamorig_RightArmour1
                Frame Armature_mixamorig_RightForeArm {
                  FrameTransformMatrix {
                     0.659127,-0.709008,-0.250718, 0.000000,
                     0.607148, 0.698424,-0.378913, 0.000000,
                     0.443760, 0.097528, 0.890823, 0.000000,
                    -0.000006,49.301296, 0.000013, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightHand {
                    FrameTransformMatrix {
                       0.942898, 0.232323, 0.238682, 0.000000,
                      -0.123032, 0.908838,-0.398594, 0.000000,
                      -0.309525, 0.346468, 0.885525, 0.000000,
                      -0.000006,31.604992,-0.000002, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightHandIndex1 {
                      FrameTransformMatrix {
                         0.999553, 0.000069,-0.029891, 0.000000,
                         0.029696, 0.111676, 0.993301, 0.000000,
                         0.003406,-0.993745, 0.111624, 0.000000,
                         6.192902,21.271008, 0.499000, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandIndex2 {
                        FrameTransformMatrix {
                           0.995915, 0.026412,-0.086346, 0.000000,
                           0.064325, 0.463575, 0.883720, 0.000000,
                           0.063368,-0.885664, 0.459982, 0.000000,
                          -0.000000, 7.535989,-0.000012, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandIndex3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000,-0.000000, 1.000000, 0.000000,
                             0.000000, 7.512996,-0.000017, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandIndex4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000001,10.211998, 0.000002, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandIndex4
                        } // End of Armature_mixamorig_RightHandIndex3
                      } // End of Armature_mixamorig_RightHandIndex2
                    } // End of Armature_mixamorig_RightHandIndex1
                    Frame Armature_mixamorig_RightHandMiddle1 {
                      FrameTransformMatrix {
                         0.984771, 0.002342,-0.173842, 0.000000,
                         0.171935, 0.135163, 0.975792, 0.000000,
                         0.025782,-0.990821, 0.132702, 0.000000,
                        -0.016501,23.334028, 0.008995, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandMiddle2 {
                        FrameTransformMatrix {
                           0.995566, 0.014700,-0.092913, 0.000000,
                           0.077596, 0.430024, 0.899477, 0.000000,
                           0.053177,-0.902698, 0.426977, 0.000000,
                          -0.000002, 6.997002,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandMiddle3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000,-0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                             0.000000, 7.015995,-0.000009, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000003, 7.720985, 0.000026, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandMiddle4
                        } // End of Armature_mixamorig_RightHandMiddle3
                      } // End of Armature_mixamorig_RightHandMiddle2
                    } // End of Armature_mixamorig_RightHandMiddle1
                    Frame Armature_mixamorig_RightHandPinky1 {
                      FrameTransformMatrix {
                         0.996947,-0.018389,-0.075891, 0.000000,
                         0.078084, 0.244247, 0.966564, 0.000000,
                         0.000762,-0.969539, 0.244937, 0.000000,
                        -11.443205,18.881027, 0.462002, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandPinky2 {
                        FrameTransformMatrix {
                           0.979712,-0.200113, 0.010927, 0.000000,
                           0.157835, 0.804027, 0.573262, 0.000000,
                          -0.123503,-0.559907, 0.819299, 0.000000,
                           0.000005, 4.920001,-0.000001, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandPinky3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000, 0.000000, 0.000000,
                             0.000000, 1.000000, 0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000002, 5.232996,-0.000011, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandPinky4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000006, 5.570986,-0.000015, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandPinky4
                        } // End of Armature_mixamorig_RightHandPinky3
                      } // End of Armature_mixamorig_RightHandPinky2
                    } // End of Armature_mixamorig_RightHandPinky1
                    Frame Armature_mixamorig_RightHandRing1 {
                      FrameTransformMatrix {
                         0.999201, 0.000201,-0.039958, 0.000000,
                         0.038464, 0.266163, 0.963160, 0.000000,
                         0.010829,-0.963928, 0.265943, 0.000000,
                        -6.516902,22.686001, 0.103994, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandRing2 {
                        FrameTransformMatrix {
                           0.991894,-0.126926,-0.005979, 0.000000,
                           0.081293, 0.597706, 0.797584, 0.000000,
                          -0.097660,-0.791604, 0.603179, 0.000000,
                           0.000002, 6.408989, 0.000001, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandRing3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000001, 6.149989,-0.000023, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandRing4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000001, 6.145974,-0.000021, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandRing4
                        } // End of Armature_mixamorig_RightHandRing3
                      } // End of Armature_mixamorig_RightHandRing2
                    } // End of Armature_mixamorig_RightHandRing1
                    Frame Armature_mixamorig_RightHandThumb1 {
                      FrameTransformMatrix {
                         0.882785,-0.467360, 0.047594, 0.000000,
                         0.462338, 0.882295, 0.088316, 0.000000,
                        -0.083267,-0.055959, 0.994955, 0.000000,
                         7.059701, 6.094013, 4.396992, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandThumb2 {
                        FrameTransformMatrix {
                           0.908507, 0.389818,-0.150523, 0.000000,
                          -0.408486, 0.904396,-0.123315, 0.000000,
                           0.088062, 0.173520, 0.980885, 0.000000,
                          -0.000000, 7.536304,-0.000005, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandThumb3 {
                          FrameTransformMatrix {
                             1.000000, 0.000001,-0.000002, 0.000000,
                            -0.000001, 1.000000,-0.000002, 0.000000,
                             0.000002, 0.000002, 1.000000, 0.000000,
                            -0.000004, 7.512712, 0.000002, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000001, 0.000002, 0.000000,
                               0.000001, 1.000000, 0.000001, 0.000000,
                              -0.000002,-0.000001, 1.000000, 0.000000,
                              -0.000000,10.212736, 0.000005, 1.000000;;
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
      1;
      0;4;-0.707107, 0.707107, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 0.100000, 0.100000, 0.100000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 0.000000, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Hips}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.947255,-0.307992, 0.084588,-0.026324;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 7.629294,90.952637, 3.553513;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.992046, 0.119480, 0.038846,-0.007787;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,13.784798, 0.064404;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.977791, 0.199127, 0.065339,-0.001833;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,12.024303,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.979212, 0.192020, 0.065361,-0.000730;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000004,17.815826, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.966045,-0.236051,-0.073356,-0.075202;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000003,39.117577,11.976999;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.925878,-0.254654,-0.260141, 0.101136;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000005,14.552513,15.664104;;;
    }
  }
  Animation {
    {Armature_mixamorig_HeadTop_End}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000003,15.601703, 7.553697;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftEye}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 3.528697, 2.462097,12.838191;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightEye}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-3.528701, 2.462103,12.838193;;;
    }
  }
  Animation {
    {Armature_mixamorig_Jaw}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.454186, 0.890907, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000004,-2.317782, 3.620693;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.695293, 0.618267, 0.297409,-0.214151;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;17.399494,24.614185, 1.157901;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.946852, 0.047089,-0.313754, 0.053028;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000007,19.910402,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.542055,-0.127361, 0.103454, 0.824168;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000004,49.301300, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.832393,-0.421337, 0.271556,-0.236335;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,31.604710,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.957791,-0.020145, 0.021443, 0.285955;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-7.059595, 6.094481, 4.397209;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.897820,-0.024120,-0.375169,-0.229314;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000008, 7.536489, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001, 7.512288, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000007,10.212402, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.792947, 0.602889,-0.033648, 0.081414;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-6.192897,21.271070, 0.498710;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.821485, 0.567517,-0.044362, 0.033464;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000008, 7.536494,-0.000016;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 7.512298, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,10.212400, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.797267, 0.601413,-0.038832, 0.034046;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.016497,23.334372, 0.008610;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.790151, 0.609140,-0.020023, 0.064880;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001, 6.996593,-0.000018;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000003, 7.016017, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000004, 7.721623, 0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.822197, 0.568083,-0.032064,-0.015654;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 6.516899,22.686583, 0.103604;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.809521, 0.585004, 0.021872, 0.044364;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000004, 6.408608,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000011, 6.150277,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000004, 6.145402, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.842488, 0.538603,-0.010903,-0.001444;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;11.443204,18.881189, 0.461815;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.918961, 0.390167, 0.022697, 0.052587;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000005, 4.919604,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000005, 5.232995,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000006, 5.571695,-0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.661184, 0.199538,-0.675336, 0.258730;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-17.399506,24.614290, 1.157893;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.884652, 0.091238, 0.456712, 0.021904;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000005,19.910389,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.901162,-0.132174, 0.192662,-0.365127;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000006,49.301296, 0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.966600,-0.192702,-0.141788, 0.091909;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000006,31.604992,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.969540, 0.037202,-0.033743,-0.239726;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 7.059701, 6.094013, 4.396992;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.973882,-0.076199, 0.061246, 0.204928;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000, 7.536304,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000001, 0.000001, 0.000001;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000004, 7.512712, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000001,-0.000001,-0.000001;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,10.212736, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.745462, 0.666381, 0.011167,-0.009936;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 6.192902,21.271008, 0.499000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.854323, 0.517774, 0.043811,-0.011095;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000, 7.535989,-0.000012;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 7.512996,-0.000017;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001,10.211998, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.750439, 0.655154, 0.066502,-0.056498;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.016501,23.334028, 0.008995;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.844477, 0.533518, 0.043249,-0.018620;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002, 6.997002,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 7.015995,-0.000009;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000003, 7.720985, 0.000026;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.795504, 0.605619, 0.015961,-0.012025;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-6.516902,22.686001, 0.103994;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.893417, 0.444694,-0.025655,-0.058265;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000002, 6.408989, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001, 6.149989,-0.000023;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001, 6.145974,-0.000021;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.788373, 0.613955, 0.024307,-0.030592;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-11.443205,18.881027, 0.462002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.949083, 0.298490,-0.035410,-0.094288;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000005, 4.920001,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002, 5.232996,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000006, 5.570986,-0.000015;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.500000,-0.500000, 0.500000,-0.500000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-1.467302, 5.012931,-18.471140;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.106406,-0.175293,-0.069270, 0.976295;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000001, 1.000000, 1.000001;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 3.884899,-9.462715,-18.584906;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000007,11.039494,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.135080, 0.914205,-0.186988, 0.333195;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-2.648914,-11.494607,22.195301;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour5}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,11.039505, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.108208, 0.036453,-0.754858,-0.645873;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;19.899096,-7.885098,-3.429502;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.050509,-0.973352, 0.168717,-0.146867;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,38.282917, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.525803, 0.812437,-0.094177,-0.233685;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,32.683983,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.662225, 0.749305, 0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,27.100002, 0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,16.632004, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.048223,-0.167727,-0.030611, 0.984177;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 0.999999, 0.999998;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-19.899099,-7.884997,-3.429500;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.811872,-0.562535,-0.149471, 0.045562;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001,38.282913,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.723981, 0.688695, 0.014265, 0.036708;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,32.684063,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.619128, 0.785290,-0.000000, 0.000002;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001,27.100010, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToe_End}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,16.631941,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.000000, 1.000000,-0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,-19.940702,22.170202;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth2}
    AnimationKey { // Rotation
      0;
      1;
      0;4; 0.000000, 0.000000, 1.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,10.763300, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.000000, 0.000000, 1.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,13.749508, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,14.182594,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.707106,-0.000000,-0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,-5.419199,-29.327000;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;15.308603, 0.000001, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;17.777103, 0.000001,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth4}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;15.545395, 0.000001, 0.000003;;;
    }
  }
} // End of AnimationSet Global
