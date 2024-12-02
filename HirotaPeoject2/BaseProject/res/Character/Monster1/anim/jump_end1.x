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
         0.995839, 0.042650, 0.080530, 0.000000,
        -0.035641, 0.995610,-0.086552, 0.000000,
        -0.083868, 0.083322, 0.992987, 0.000000,
        -1.584336,76.556389,17.239450, 1.000000;;
      }
      Frame Armature_mixamorig_BackCloth1 {
        FrameTransformMatrix {
          -0.000002,-1.000000, 0.000000, 0.000000,
           1.000000,-0.000002,-0.000000, 0.000000,
           0.000000, 0.000000, 1.000000, 0.000000,
           0.000000,-5.419195,-29.327000, 1.000000;;
        }
        Frame Armature_mixamorig_BackCloth2 {
          FrameTransformMatrix {
             1.000000,-0.000000,-0.000000, 0.000000,
             0.000000, 1.000000,-0.000000, 0.000000,
            -0.000000, 0.000000, 1.000000, 0.000000,
            15.308602, 0.000001,-0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_BackCloth3 {
            FrameTransformMatrix {
               1.000000,-0.000000,-0.000000, 0.000000,
               0.000000, 1.000000,-0.000000, 0.000000,
              -0.000000, 0.000000, 1.000000, 0.000000,
              17.777102, 0.000002, 0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_BackCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000,-0.000000, 0.000000,
                -0.000000, 0.000000, 1.000000, 0.000000,
                15.545400, 0.000002, 0.000000, 1.000000;;
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
           0.000000,-19.940695,22.170200, 1.000000;;
        }
        Frame Armature_mixamorig_FrontCloth2 {
          FrameTransformMatrix {
            -1.000000,-0.000000, 0.000000, 0.000000,
            -0.000000, 1.000000, 0.000000, 0.000000,
            -0.000000, 0.000000,-1.000000, 0.000000,
            -0.000000,10.763302, 0.000003, 1.000000;;
          }
          Frame Armature_mixamorig_FrontCloth3 {
            FrameTransformMatrix {
              -1.000000,-0.000000,-0.000000, 0.000000,
               0.000000, 1.000000,-0.000000, 0.000000,
               0.000000,-0.000000,-1.000000, 0.000000,
              -0.000000,13.749507,-0.000004, 1.000000;;
            }
            Frame Armature_mixamorig_FrontCloth4 {
              FrameTransformMatrix {
                 1.000000, 0.000000,-0.000000, 0.000000,
                -0.000000, 1.000000,-0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                 0.000000,14.182600, 0.000003, 1.000000;;
              }
            } // End of Armature_mixamorig_FrontCloth4
          } // End of Armature_mixamorig_FrontCloth3
        } // End of Armature_mixamorig_FrontCloth2
      } // End of Armature_mixamorig_FrontCloth1
      Frame Armature_mixamorig_LeftUpLeg {
        FrameTransformMatrix {
          -0.847689, 0.512105, 0.138462, 0.000000,
           0.114520,-0.078199, 0.990339, 0.000000,
           0.517985, 0.855356, 0.007642, 0.000000,
          19.899096,-7.885089,-3.429499, 1.000000;;
        }
        Frame Armature_mixamorig_LeftLeg {
          FrameTransformMatrix {
             0.972602,-0.122020,-0.197879, 0.000000,
            -0.162802,-0.965113,-0.205068, 0.000000,
            -0.165953, 0.231664,-0.958536, 0.000000,
            -0.000003,38.282917,-0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_LeftFoot {
            FrameTransformMatrix {
               0.998070,-0.061395, 0.009287, 0.000000,
               0.049267, 0.874028, 0.483371, 0.000000,
              -0.037793,-0.481981, 0.875366, 0.000000,
               0.000001,32.683975, 0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_LeftToeBase {
              FrameTransformMatrix {
                 0.941060, 0.095418,-0.324503, 0.000000,
                 0.153907, 0.733518, 0.662015, 0.000000,
                 0.301197,-0.672939, 0.675599, 0.000000,
                 0.000000,27.100000,-0.000000, 1.000000;;
              }
              Frame Armature_mixamorig_LeftToe_End {
                FrameTransformMatrix {
                   1.000000, 0.000000,-0.000000, 0.000000,
                  -0.000000, 1.000000, 0.000000, 0.000000,
                   0.000000, 0.000000, 1.000000, 0.000000,
                  -0.000000,16.631994,-0.000000, 1.000000;;
                }
              } // End of Armature_mixamorig_LeftToe_End
            } // End of Armature_mixamorig_LeftToeBase
          } // End of Armature_mixamorig_LeftFoot
        } // End of Armature_mixamorig_LeftLeg
      } // End of Armature_mixamorig_LeftUpLeg
      Frame Armature_mixamorig_RightUpLeg {
        FrameTransformMatrix {
          -0.915978,-0.370236,-0.154626, 0.000000,
          -0.401099, 0.854750, 0.329425, 0.000000,
           0.010201, 0.363769,-0.931432, 0.000000,
          -19.899099,-7.884988,-3.429500, 1.000000;;
        }
        Frame Armature_mixamorig_RightLeg {
          FrameTransformMatrix {
             0.882499, 0.441410,-0.162335, 0.000000,
             0.307855,-0.803103,-0.510148, 0.000000,
            -0.355556, 0.400230,-0.844628, 0.000000,
             0.000000,38.282913, 0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_RightFoot {
            FrameTransformMatrix {
               0.814990, 0.573834,-0.080656, 0.000000,
              -0.479140, 0.745599, 0.463150, 0.000000,
               0.325909,-0.338817, 0.882602, 0.000000,
               0.000001,32.684059, 0.000004, 1.000000;;
            }
            Frame Armature_mixamorig_RightToeBase {
              FrameTransformMatrix {
                 0.998251, 0.026653,-0.052773, 0.000000,
                 0.023806, 0.635842, 0.771452, 0.000000,
                 0.054117,-0.771359, 0.634095, 0.000000,
                -0.000003,27.100004, 0.000006, 1.000000;;
              }
              Frame Armature_mixamorig_RightToe_End {
                FrameTransformMatrix {
                   1.000000,-0.000000, 0.000000, 0.000000,
                   0.000000, 1.000000, 0.000000, 0.000000,
                   0.000000,-0.000000, 1.000000, 0.000000,
                   0.000001,16.631948,-0.000003, 1.000000;;
                }
              } // End of Armature_mixamorig_RightToe_End
            } // End of Armature_mixamorig_RightToeBase
          } // End of Armature_mixamorig_RightFoot
        } // End of Armature_mixamorig_RightLeg
      } // End of Armature_mixamorig_RightUpLeg
      Frame Armature_mixamorig_Spine {
        FrameTransformMatrix {
           0.988421, 0.017622, 0.150713, 0.000000,
          -0.125219, 0.655712, 0.744555, 0.000000,
          -0.085703,-0.754805, 0.650326, 0.000000,
           0.000000,13.784811, 0.064401, 1.000000;;
        }
        Frame Armature_mixamorig_Spine1 {
          FrameTransformMatrix {
             0.999293,-0.021851, 0.030592, 0.000000,
             0.019562, 0.997124, 0.073223, 0.000000,
            -0.032104,-0.072573, 0.996846, 0.000000,
            -0.000001,12.024295,-0.000007, 1.000000;;
          }
          Frame Armature_mixamorig_Spine2 {
            FrameTransformMatrix {
               0.999405,-0.024118, 0.024658, 0.000000,
               0.022500, 0.997701, 0.063924, 0.000000,
              -0.026143,-0.063332, 0.997650, 0.000000,
               0.000000,17.815804, 0.000003, 1.000000;;
            }
            Frame Armature_mixamorig_LeftShoulder {
              FrameTransformMatrix {
                 0.510780, 0.073876,-0.856532, 0.000000,
                 0.808562, 0.297248, 0.507811, 0.000000,
                 0.292118,-0.951938, 0.092095, 0.000000,
                17.399498,24.614193, 1.157898, 1.000000;;
              }
              Frame Armature_mixamorig_LeftArm {
                FrameTransformMatrix {
                   0.520857,-0.562046, 0.642505, 0.000000,
                   0.210009, 0.813897, 0.541727, 0.000000,
                  -0.827408,-0.147230, 0.541959, 0.000000,
                   0.000004,19.910397, 0.000022, 1.000000;;
                }
                Frame Armature_mixamorig_LeftForeArm {
                  FrameTransformMatrix {
                     0.564242, 0.435716, 0.701272, 0.000000,
                    -0.650217, 0.757951, 0.052231, 0.000000,
                    -0.508772,-0.485450, 0.710978, 0.000000,
                    -0.000004,49.301292,-0.000010, 1.000000;;
                  }
                  Frame Armature_mixamorig_LeftHand {
                    FrameTransformMatrix {
                       0.670597, 0.741820,-0.001589, 0.000000,
                      -0.738881, 0.668127, 0.087532, 0.000000,
                       0.065995,-0.057525, 0.996161, 0.000000,
                       0.000011,31.604710, 0.000004, 1.000000;;
                    }
                    Frame Armature_mixamorig_LeftHandIndex1 {
                      FrameTransformMatrix {
                         0.991326, 0.108189, 0.074618, 0.000000,
                        -0.131091, 0.773436, 0.620171, 0.000000,
                         0.009384,-0.624573, 0.780910, 0.000000,
                        -6.192906,21.271091, 0.498695, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandIndex2 {
                        FrameTransformMatrix {
                           0.997013, 0.077237, 0.000157, 0.000000,
                          -0.057362, 0.739093, 0.671156, 0.000000,
                           0.051722,-0.669160, 0.741316, 0.000000,
                          -0.000005, 7.536500, 0.000000, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandIndex3 {
                          FrameTransformMatrix {
                             0.999426,-0.033649,-0.003974, 0.000000,
                             0.033882, 0.993390, 0.109671, 0.000000,
                             0.000258,-0.109742, 0.993960, 0.000000,
                             0.000009, 7.512295, 0.000000, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandIndex4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000003,10.212397,-0.000009, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandIndex4
                        } // End of Armature_mixamorig_LeftHandIndex3
                      } // End of Armature_mixamorig_LeftHandIndex2
                    } // End of Armature_mixamorig_LeftHandIndex1
                    Frame Armature_mixamorig_LeftHandMiddle1 {
                      FrameTransformMatrix {
                         0.999262, 0.036637, 0.011544, 0.000000,
                        -0.035749, 0.777003, 0.628481, 0.000000,
                         0.014056,-0.628430, 0.777739, 0.000000,
                         0.016500,23.334381, 0.008589, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandMiddle2 {
                        FrameTransformMatrix {
                           0.996316, 0.085745, 0.001058, 0.000000,
                          -0.055027, 0.629817, 0.774792, 0.000000,
                           0.065768,-0.771996, 0.632216, 0.000000,
                           0.000005, 6.996596, 0.000000, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandMiddle3 {
                          FrameTransformMatrix {
                             0.999600,-0.026512,-0.009804, 0.000000,
                             0.028253, 0.947885, 0.317357, 0.000000,
                             0.000880,-0.317508, 0.948255, 0.000000,
                            -0.000007, 7.016006, 0.000000, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                               0.000002, 7.721608,-0.000001, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandMiddle4
                        } // End of Armature_mixamorig_LeftHandMiddle3
                      } // End of Armature_mixamorig_LeftHandMiddle2
                    } // End of Armature_mixamorig_LeftHandMiddle1
                    Frame Armature_mixamorig_LeftHandPinky1 {
                      FrameTransformMatrix {
                         0.990344, 0.092984, 0.102826, 0.000000,
                        -0.138098, 0.596559, 0.790598, 0.000000,
                         0.012171,-0.797164, 0.603640, 0.000000,
                        11.443206,18.881199, 0.461798, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandPinky2 {
                        FrameTransformMatrix {
                           0.999997, 0.001921, 0.001356, 0.000000,
                          -0.001849, 0.286580, 0.958055, 0.000000,
                           0.001451,-0.958054, 0.286583, 0.000000,
                           0.000008, 4.919606,-0.000011, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandPinky3 {
                          FrameTransformMatrix {
                             0.999999, 0.000955, 0.000251, 0.000000,
                            -0.000955, 0.870704, 0.491807, 0.000000,
                             0.000251,-0.491807, 0.870704, 0.000000,
                            -0.000010, 5.232979,-0.000009, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandPinky4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000003, 5.571711,-0.000011, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandPinky4
                        } // End of Armature_mixamorig_LeftHandPinky3
                      } // End of Armature_mixamorig_LeftHandPinky2
                    } // End of Armature_mixamorig_LeftHandPinky1
                    Frame Armature_mixamorig_LeftHandRing1 {
                      FrameTransformMatrix {
                         0.999935,-0.004041, 0.010667, 0.000000,
                        -0.007616, 0.459648, 0.888069, 0.000000,
                        -0.008491,-0.888092, 0.459587, 0.000000,
                         6.516908,22.686596, 0.103590, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandRing2 {
                        FrameTransformMatrix {
                           0.999735, 0.017324, 0.015160, 0.000000,
                          -0.022982, 0.712828, 0.700962, 0.000000,
                           0.001337,-0.701125, 0.713037, 0.000000,
                           0.000002, 6.408597,-0.000008, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandRing3 {
                          FrameTransformMatrix {
                             0.999776,-0.021120, 0.000957, 0.000000,
                             0.020075, 0.962567, 0.270299, 0.000000,
                            -0.006630,-0.270219, 0.962776, 0.000000,
                             0.000009, 6.150299, 0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandRing4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000003, 6.145405,-0.000010, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandRing4
                        } // End of Armature_mixamorig_LeftHandRing3
                      } // End of Armature_mixamorig_LeftHandRing2
                    } // End of Armature_mixamorig_LeftHandRing1
                    Frame Armature_mixamorig_LeftHandThumb1 {
                      FrameTransformMatrix {
                         0.865982, 0.491147,-0.094078, 0.000000,
                        -0.456878, 0.853537, 0.250472, 0.000000,
                         0.203318,-0.173922, 0.963542, 0.000000,
                        -7.059600, 6.094497, 4.397198, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandThumb2 {
                        FrameTransformMatrix {
                           0.955044,-0.274564,-0.111826, 0.000000,
                           0.291588, 0.938075, 0.187061, 0.000000,
                           0.053541,-0.211258, 0.975963, 0.000000,
                           0.000000, 7.536495, 0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandThumb3 {
                          FrameTransformMatrix {
                             0.618160, 0.106693,-0.778778, 0.000000,
                             0.120986, 0.966025, 0.228379, 0.000000,
                             0.776686,-0.235396, 0.584250, 0.000000,
                            -0.000004, 7.512292,-0.000003, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000000,10.212405, 0.000003, 1.000000;;
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
                 0.994272,-0.094067,-0.050733, 0.000000,
                 0.090320, 0.993330,-0.071682, 0.000000,
                 0.057137, 0.066689, 0.996136, 0.000000,
                -0.000001,39.117596,11.977005, 1.000000;;
              }
              Frame Armature_mixamorig_Head {
                FrameTransformMatrix {
                   0.951585,-0.294340,-0.088599, 0.000000,
                   0.222160, 0.857767,-0.463553, 0.000000,
                   0.212439, 0.421427, 0.881629, 0.000000,
                   0.000003,14.552514,15.664104, 1.000000;;
                }
                Frame Armature_mixamorig_HeadTop_End {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000, 0.000000, 0.000000,
                    -0.000000,-0.000000, 1.000000, 0.000000,
                    -0.000002,15.601688, 7.553708, 1.000000;;
                  }
                } // End of Armature_mixamorig_HeadTop_End
                Frame Armature_mixamorig_Jaw {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                     0.000000,-0.587429, 0.809276, 0.000000,
                     0.000000,-0.809276,-0.587429, 0.000000,
                     0.000001,-2.317807, 3.620710, 1.000000;;
                  }
                } // End of Armature_mixamorig_Jaw
                Frame Armature_mixamorig_LeftEye {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000, 0.000000, 0.000000,
                    -0.000000,-0.000000, 1.000000, 0.000000,
                     3.528699, 2.462079,12.838202, 1.000000;;
                  }
                } // End of Armature_mixamorig_LeftEye
                Frame Armature_mixamorig_RightEye {
                  FrameTransformMatrix {
                     1.000000, 0.000000,-0.000000, 0.000000,
                    -0.000000, 1.000000, 0.000000, 0.000000,
                    -0.000000,-0.000000, 1.000000, 0.000000,
                    -3.528702, 2.462084,12.838210, 1.000000;;
                  }
                } // End of Armature_mixamorig_RightEye
              } // End of Armature_mixamorig_Head
            } // End of Armature_mixamorig_Neck
            Frame Armature_mixamorig_RightShoulder {
              FrameTransformMatrix {
                 0.333757,-0.123797, 0.934495, 0.000000,
                -0.753572, 0.560543, 0.343397, 0.000000,
                -0.566336,-0.818820, 0.093795, 0.000000,
                -17.399504,24.614298, 1.157900, 1.000000;;
              }
              Frame Armature_mixamorig_RightArm {
                FrameTransformMatrix {
                   0.903903, 0.160469,-0.396495, 0.000000,
                   0.034130, 0.896947, 0.440819, 0.000000,
                   0.426373,-0.411990, 0.805277, 0.000000,
                  -0.000003,19.910408, 0.000000, 1.000000;;
                }
                Frame Armature_mixamorig_RightArmour1 {
                  FrameTransformMatrix {
                    -0.000000,-1.000000,-0.000001, 0.000000,
                    -0.000000, 0.000001,-1.000000, 0.000000,
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -1.467296, 5.012923,-18.471134, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightArmour2 {
                    FrameTransformMatrix {
                      -0.915901, 0.232054,-0.327534, 0.000000,
                      -0.183487,-0.967759,-0.172553, 0.000000,
                      -0.357018,-0.097943, 0.928950, 0.000000,
                       3.884903,-9.462718,-18.584892, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour3 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000003,11.039516,-0.000009, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour3
                  } // End of Armature_mixamorig_RightArmour2
                  Frame Armature_mixamorig_RightArmour4 {
                    FrameTransformMatrix {
                       0.708033,-0.251874, 0.659734, 0.000000,
                      -0.431906,-0.893578, 0.122374, 0.000000,
                       0.558701,-0.371588,-0.741469, 0.000000,
                      -2.648904,-11.494619,22.195309, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour5 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000002,11.039497,-0.000002, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour5
                  } // End of Armature_mixamorig_RightArmour4
                } // End of Armature_mixamorig_RightArmour1
                Frame Armature_mixamorig_RightForeArm {
                  FrameTransformMatrix {
                     0.772283,-0.505186,-0.385183, 0.000000,
                     0.572163, 0.816595, 0.076170, 0.000000,
                     0.276058,-0.279213, 0.919691, 0.000000,
                     0.000008,49.301300, 0.000028, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightHand {
                    FrameTransformMatrix {
                       0.950116,-0.311223, 0.020511, 0.000000,
                       0.310158, 0.949707, 0.043121, 0.000000,
                      -0.032900,-0.034608, 0.998859, 0.000000,
                      -0.000008,31.604988,-0.000004, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightHandIndex1 {
                      FrameTransformMatrix {
                         0.998612, 0.052641,-0.001503, 0.000000,
                        -0.023838, 0.477299, 0.878417, 0.000000,
                         0.046959,-0.877163, 0.477892, 0.000000,
                         6.192900,21.271000, 0.499001, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandIndex2 {
                        FrameTransformMatrix {
                           0.997003,-0.077367,-0.000368, 0.000000,
                           0.031055, 0.395833, 0.917797, 0.000000,
                          -0.070862,-0.915058, 0.397050, 0.000000,
                          -0.000002, 7.536004,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandIndex3 {
                          FrameTransformMatrix {
                             0.999429, 0.006801, 0.033096, 0.000000,
                            -0.031958, 0.508175, 0.860660, 0.000000,
                            -0.010965,-0.861227, 0.508102, 0.000000,
                             0.000006, 7.512980,-0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000004,10.212006, 0.000004, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandIndex4
                        } // End of Armature_mixamorig_RightHandIndex3
                      } // End of Armature_mixamorig_RightHandIndex2
                    } // End of Armature_mixamorig_RightHandIndex1
                    Frame Armature_mixamorig_RightHandMiddle1 {
                      FrameTransformMatrix {
                         0.999759, 0.002232,-0.021825, 0.000000,
                         0.019453, 0.369828, 0.928897, 0.000000,
                         0.010145,-0.929098, 0.369696, 0.000000,
                        -0.016504,23.333996, 0.008995, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandMiddle2 {
                        FrameTransformMatrix {
                           0.996276,-0.086197,-0.002089, 0.000000,
                           0.010347, 0.095465, 0.995379, 0.000000,
                          -0.085600,-0.991694, 0.096001, 0.000000,
                           0.000004, 6.996988, 0.000010, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandMiddle3 {
                          FrameTransformMatrix {
                             0.999615, 0.022950, 0.015619, 0.000000,
                            -0.027751, 0.841138, 0.540108, 0.000000,
                            -0.000742,-0.540333, 0.841451, 0.000000,
                             0.000013, 7.016021, 0.000013, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000005, 7.720997, 0.000008, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandMiddle4
                        } // End of Armature_mixamorig_RightHandMiddle3
                      } // End of Armature_mixamorig_RightHandMiddle2
                    } // End of Armature_mixamorig_RightHandMiddle1
                    Frame Armature_mixamorig_RightHandPinky1 {
                      FrameTransformMatrix {
                         0.997555,-0.001808,-0.069855, 0.000000,
                         0.069847, 0.056065, 0.995981, 0.000000,
                         0.002116,-0.998425, 0.056055, 0.000000,
                        -11.443207,18.881004, 0.461998, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandPinky2 {
                        FrameTransformMatrix {
                           0.999998,-0.001574,-0.000811, 0.000000,
                           0.001576, 0.581894, 0.813263, 0.000000,
                          -0.000809,-0.813263, 0.581896, 0.000000,
                          -0.000011, 4.920010, 0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandPinky3 {
                          FrameTransformMatrix {
                             1.000000,-0.000844,-0.000193, 0.000000,
                             0.000844, 0.900092, 0.435699, 0.000000,
                            -0.000194,-0.435699, 0.900092, 0.000000,
                            -0.000010, 5.233001,-0.000008, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandPinky4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000002, 5.571009, 0.000003, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandPinky4
                        } // End of Armature_mixamorig_RightHandPinky3
                      } // End of Armature_mixamorig_RightHandPinky2
                    } // End of Armature_mixamorig_RightHandPinky1
                    Frame Armature_mixamorig_RightHandRing1 {
                      FrameTransformMatrix {
                         0.996645, 0.080515, 0.014729, 0.000000,
                        -0.029579, 0.186498, 0.982010, 0.000000,
                         0.076320,-0.979151, 0.188253, 0.000000,
                        -6.516903,22.685997, 0.103985, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandRing2 {
                        FrameTransformMatrix {
                           0.999700,-0.020680,-0.013161, 0.000000,
                           0.018563, 0.288066, 0.957430, 0.000000,
                          -0.016009,-0.957387, 0.288363, 0.000000,
                           0.000014, 6.409010,-0.000008, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandRing3 {
                          FrameTransformMatrix {
                             0.999791, 0.020413,-0.001321, 0.000000,
                            -0.014997, 0.775388, 0.631307, 0.000000,
                             0.013911,-0.631155, 0.775532, 0.000000,
                            -0.000002, 6.150006, 0.000005, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandRing4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                               0.000003, 6.145992, 0.000011, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandRing4
                        } // End of Armature_mixamorig_RightHandRing3
                      } // End of Armature_mixamorig_RightHandRing2
                    } // End of Armature_mixamorig_RightHandRing1
                    Frame Armature_mixamorig_RightHandThumb1 {
                      FrameTransformMatrix {
                         0.976733,-0.103577, 0.187787, 0.000000,
                        -0.095369, 0.574512, 0.812921, 0.000000,
                        -0.192086,-0.811916, 0.551267, 0.000000,
                         7.059700, 6.094006, 4.396984, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandThumb2 {
                        FrameTransformMatrix {
                           0.951153, 0.004347, 0.308690, 0.000000,
                           0.056044, 0.980856,-0.186498, 0.000000,
                          -0.303591, 0.194688, 0.932700, 0.000000,
                          -0.000006, 7.536305, 0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandThumb3 {
                          FrameTransformMatrix {
                             0.927041, 0.226906,-0.298510, 0.000000,
                            -0.296507, 0.930930,-0.213196, 0.000000,
                             0.229516, 0.286152, 0.930290, 0.000000,
                             0.000000, 7.512693,-0.000010, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000001, 0.000002, 0.000000,
                               0.000001, 1.000000, 0.000001, 0.000000,
                              -0.000002,-0.000001, 1.000000, 0.000000,
                              -0.000001,10.212722, 0.000008, 1.000000;;
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
      26;
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
      25;4;-0.707107, 0.707107, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      22;3; 0.100000, 0.100000, 0.100000;;,
      23;3; 0.100000, 0.100000, 0.100000;;,
      24;3; 0.100000, 0.100000, 0.100000;;,
      25;3; 0.100000, 0.100000, 0.100000;;;
    }
    AnimationKey { // Position
      2;
      26;
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
      25;3; 0.000000, 0.000000, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Hips}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.998053,-0.042551,-0.041180, 0.019611;;,
      1;4;-0.997978,-0.036213,-0.048602, 0.019135;;,
      2;4;-0.997906,-0.024597,-0.056686, 0.019118;;,
      3;4;-0.997624,-0.011971,-0.065343, 0.018255;;,
      4;4;-0.996999,-0.007032,-0.075346, 0.016336;;,
      5;4;-0.996342, 0.000980,-0.083932, 0.016028;;,
      6;4;-0.995487, 0.012148,-0.092653, 0.016552;;,
      7;4;-0.994704, 0.020677,-0.099458, 0.015641;;,
      8;4;-0.994110, 0.026579,-0.103890, 0.015705;;,
      9;4;-0.993556, 0.031699,-0.107653, 0.015921;;,
      10;4;-0.993121, 0.036077,-0.110064, 0.017204;;,
      11;4;-0.992743, 0.039929,-0.111781, 0.019283;;,
      12;4;-0.992379, 0.043373,-0.113087, 0.022665;;,
      13;4;-0.991977, 0.045443,-0.114914, 0.026677;;,
      14;4;-0.991360, 0.044624,-0.118935, 0.032685;;,
      15;4;-0.990630, 0.042995,-0.124010, 0.037761;;,
      16;4;-0.990043, 0.042030,-0.128826, 0.038119;;,
      17;4;-0.988960, 0.043218,-0.137867, 0.032903;;,
      18;4;-0.988177, 0.053930,-0.140126, 0.031016;;,
      19;4;-0.988263, 0.068669,-0.132715, 0.031745;;,
      20;4;-0.988302, 0.085184,-0.121308, 0.035884;;,
      21;4;-0.987503, 0.104454,-0.111919, 0.037437;;,
      22;4;-0.985170, 0.130009,-0.106022, 0.036006;;,
      23;4;-0.982353, 0.153316,-0.101514, 0.034227;;,
      24;4;-0.980986, 0.163858,-0.099214, 0.031211;;,
      25;4;-0.980102, 0.170515,-0.097878, 0.027275;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-1.584336,76.556389,17.239450;;,
      1;3;-1.624432,76.556389,16.144938;;,
      2;3;-1.697731,76.556381,15.133663;;,
      3;3;-1.695808,76.556381,14.540763;;,
      4;3;-1.709761,76.556381,13.803381;;,
      5;3;-1.775763,76.556381,13.226071;;,
      6;3;-1.981847,76.556381,12.974025;;,
      7;3;-2.052505,76.556381,12.072264;;,
      8;3;-1.999241,76.556381,10.745573;;,
      9;3;-2.002870,76.556381, 9.240674;;,
      10;3;-2.008306,76.556381, 7.393256;;,
      11;3;-1.959270,76.556381, 5.375556;;,
      12;3;-1.934154,76.556381, 3.133505;;,
      13;3;-2.047885,76.556381, 1.307010;;,
      14;3;-2.133275,76.556381,-0.170610;;,
      15;3;-2.210985,76.556381,-1.208180;;,
      16;3;-2.185824,76.556381,-1.924176;;,
      17;3;-2.125849,76.556381,-2.271518;;,
      18;3;-1.906982,76.556381,-2.087096;;,
      19;3;-1.404513,76.556389,-0.829140;;,
      20;3;-0.945915,76.556389, 1.068412;;,
      21;3;-0.606497,76.556389, 2.693448;;,
      22;3;-0.386967,76.556389, 3.761482;;,
      23;3;-0.252582,76.556389, 3.649226;;,
      24;3;-0.097708,76.556389, 1.962942;;,
      25;3; 0.072203,76.556389,-0.189476;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.907532, 0.413032,-0.065126, 0.039349;;,
      1;4;-0.910751, 0.406926,-0.062443, 0.032335;;,
      2;4;-0.915556, 0.396900,-0.059984, 0.025094;;,
      3;4;-0.921243, 0.383930,-0.059635, 0.018779;;,
      4;4;-0.924122, 0.377797,-0.056312, 0.009848;;,
      5;4;-0.929602, 0.364963,-0.051323, 0.003011;;,
      6;4;-0.937180, 0.345940,-0.044882,-0.002430;;,
      7;4;-0.942710, 0.331073,-0.040567,-0.006536;;,
      8;4;-0.949178, 0.312285,-0.038302,-0.008510;;,
      9;4;-0.955746, 0.291756,-0.036598,-0.009395;;,
      10;4;-0.961271, 0.273061,-0.035709,-0.010989;;,
      11;4;-0.965979, 0.255934,-0.034368,-0.014168;;,
      12;4;-0.969116, 0.243672,-0.032463,-0.019627;;,
      13;4;-0.971264, 0.234704,-0.029650,-0.026082;;,
      14;4;-0.972057, 0.230671,-0.026650,-0.034451;;,
      15;4;-0.972355, 0.227658,-0.022328,-0.046893;;,
      16;4;-0.972661, 0.225444,-0.018083,-0.052714;;,
      17;4;-0.972638, 0.225285,-0.010065,-0.055865;;,
      18;4;-0.972247, 0.226776,-0.000213,-0.057521;;,
      19;4;-0.971267, 0.231190, 0.010653,-0.055485;;,
      20;4;-0.969910, 0.236493, 0.020718,-0.054002;;,
      21;4;-0.968470, 0.242048, 0.031697,-0.049746;;,
      22;4;-0.966932, 0.247647, 0.044005,-0.042162;;,
      23;4;-0.965438, 0.252529, 0.053575,-0.035881;;,
      24;4;-0.964489, 0.255638, 0.057402,-0.033380;;,
      25;4;-0.963748, 0.258144, 0.059537,-0.031730;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,13.784811, 0.064401;;,
      1;3; 0.000000,13.784794, 0.064398;;,
      2;3; 0.000000,13.784797, 0.064401;;,
      3;3;-0.000000,13.784801, 0.064400;;,
      4;3; 0.000000,13.784797, 0.064401;;,
      5;3; 0.000000,13.784795, 0.064399;;,
      6;3;-0.000000,13.784799, 0.064400;;,
      7;3; 0.000001,13.784794, 0.064399;;,
      8;3;-0.000000,13.784801, 0.064400;;,
      9;3; 0.000000,13.784805, 0.064400;;,
      10;3;-0.000000,13.784785, 0.064400;;,
      11;3; 0.000000,13.784792, 0.064401;;,
      12;3; 0.000000,13.784805, 0.064399;;,
      13;3;-0.000000,13.784808, 0.064398;;,
      14;3;-0.000000,13.784791, 0.064400;;,
      15;3;-0.000000,13.784789, 0.064400;;,
      16;3; 0.000000,13.784805, 0.064399;;,
      17;3; 0.000000,13.784801, 0.064400;;,
      18;3;-0.000001,13.784792, 0.064399;;,
      19;3;-0.000001,13.784787, 0.064399;;,
      20;3;-0.000001,13.784797, 0.064400;;,
      21;3; 0.000000,13.784803, 0.064400;;,
      22;3; 0.000000,13.784797, 0.064402;;,
      23;3; 0.000000,13.784800, 0.064401;;,
      24;3; 0.000000,13.784801, 0.064400;;,
      25;3; 0.000001,13.784800, 0.064399;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.999158, 0.036480,-0.015687,-0.010362;;,
      1;4;-0.999240, 0.034318,-0.015150,-0.010573;;,
      2;4;-0.999328, 0.031330,-0.015323,-0.011265;;,
      3;4;-0.999400, 0.028620,-0.015443,-0.011890;;,
      4;4;-0.999438, 0.027594,-0.014851,-0.011874;;,
      5;4;-0.999477, 0.026685,-0.013782,-0.011960;;,
      6;4;-0.999523, 0.025463,-0.012476,-0.012245;;,
      7;4;-0.999581, 0.023729,-0.011657,-0.011825;;,
      8;4;-0.999626, 0.021839,-0.011502,-0.011810;;,
      9;4;-0.999644, 0.020740,-0.011667,-0.012061;;,
      10;4;-0.999651, 0.020004,-0.011770,-0.012615;;,
      11;4;-0.999653, 0.019525,-0.011419,-0.013471;;,
      12;4;-0.999656, 0.019127,-0.010733,-0.014371;;,
      13;4;-0.999667, 0.018410,-0.009690,-0.015294;;,
      14;4;-0.999698, 0.016652,-0.007909,-0.016246;;,
      15;4;-0.999703, 0.014772,-0.007511,-0.017870;;,
      16;4;-0.999687, 0.013612,-0.006682,-0.019874;;,
      17;4;-0.999683, 0.014099,-0.005947,-0.020018;;,
      18;4;-0.999691, 0.015120,-0.004861,-0.019116;;,
      19;4;-0.999723, 0.016096,-0.002626,-0.016942;;,
      20;4;-0.999762, 0.016536, 0.000283,-0.014241;;,
      21;4;-0.999792, 0.016531, 0.003608,-0.011361;;,
      22;4;-0.999806, 0.015415, 0.008475,-0.008899;;,
      23;4;-0.999792, 0.014187, 0.012889,-0.007020;;,
      24;4;-0.999778, 0.013683, 0.014776,-0.006243;;,
      25;4;-0.999767, 0.013378, 0.015876,-0.005860;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000001,12.024295,-0.000007;;,
      1;3;-0.000000,12.024300,-0.000007;;,
      2;3; 0.000000,12.024303, 0.000003;;,
      3;3;-0.000001,12.024291,-0.000001;;,
      4;3; 0.000001,12.024301,-0.000007;;,
      5;3; 0.000001,12.024305,-0.000006;;,
      6;3;-0.000001,12.024302, 0.000002;;,
      7;3; 0.000000,12.024300, 0.000005;;,
      8;3; 0.000001,12.024293,-0.000010;;,
      9;3; 0.000001,12.024298,-0.000007;;,
      10;3; 0.000002,12.024296,-0.000001;;,
      11;3;-0.000001,12.024305,-0.000005;;,
      12;3; 0.000000,12.024289, 0.000005;;,
      13;3;-0.000001,12.024299, 0.000000;;,
      14;3; 0.000001,12.024310, 0.000005;;,
      15;3; 0.000000,12.024302,-0.000001;;,
      16;3; 0.000000,12.024302,-0.000003;;,
      17;3; 0.000001,12.024301, 0.000002;;,
      18;3; 0.000002,12.024299, 0.000003;;,
      19;3; 0.000000,12.024282,-0.000004;;,
      20;3;-0.000000,12.024308,-0.000008;;,
      21;3;-0.000001,12.024297,-0.000008;;,
      22;3; 0.000000,12.024296,-0.000004;;,
      23;3; 0.000000,12.024295,-0.000006;;,
      24;3;-0.000000,12.024293, 0.000002;;,
      25;3; 0.000000,12.024303,-0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.999344, 0.031835,-0.012708,-0.011662;;,
      1;4;-0.999410, 0.029767,-0.012215,-0.012011;;,
      2;4;-0.999479, 0.026892,-0.012400,-0.012818;;,
      3;4;-0.999535, 0.024291,-0.012516,-0.013561;;,
      4;4;-0.999562, 0.023357,-0.011983,-0.013652;;,
      5;4;-0.999590, 0.022530,-0.010947,-0.013879;;,
      6;4;-0.999622, 0.021388,-0.009664,-0.014326;;,
      7;4;-0.999667, 0.019731,-0.008937,-0.014020;;,
      8;4;-0.999705, 0.017937,-0.008235,-0.014187;;,
      9;4;-0.999703, 0.016944,-0.010173,-0.014253;;,
      10;4;-0.999706, 0.016314,-0.009882,-0.014946;;,
      11;4;-0.999706, 0.015932,-0.008755,-0.016018;;,
      12;4;-0.999701, 0.015621,-0.007974,-0.017042;;,
      13;4;-0.999700, 0.014977,-0.007040,-0.018071;;,
      14;4;-0.999714, 0.013266,-0.005303,-0.019167;;,
      15;4;-0.999704, 0.011471,-0.004888,-0.020894;;,
      16;4;-0.999673, 0.010377,-0.004016,-0.023010;;,
      17;4;-0.999637, 0.010886,-0.003322,-0.024430;;,
      18;4;-0.999612, 0.012012,-0.002427,-0.024998;;,
      19;4;-0.999629, 0.013380,-0.000762,-0.023708;;,
      20;4;-0.999664, 0.014602, 0.001338,-0.021382;;,
      21;4;-0.999706, 0.015380, 0.003790,-0.018373;;,
      22;4;-0.999763, 0.013874, 0.006720,-0.015355;;,
      23;4;-0.999809, 0.011481, 0.009845,-0.012348;;,
      24;4;-0.999832, 0.008827, 0.013038,-0.009357;;,
      25;4;-0.999829, 0.005960, 0.016289,-0.006385;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,17.815804, 0.000003;;,
      1;3;-0.000001,17.815786, 0.000003;;,
      2;3; 0.000000,17.815804,-0.000000;;,
      3;3; 0.000004,17.815802, 0.000004;;,
      4;3;-0.000000,17.815809,-0.000001;;,
      5;3; 0.000000,17.815800, 0.000008;;,
      6;3; 0.000000,17.815807,-0.000008;;,
      7;3; 0.000001,17.815796, 0.000005;;,
      8;3;-0.000001,17.815798, 0.000001;;,
      9;3;-0.000001,17.815800, 0.000006;;,
      10;3;-0.000000,17.815792, 0.000008;;,
      11;3;-0.000001,17.815802, 0.000005;;,
      12;3; 0.000000,17.815800, 0.000002;;,
      13;3;-0.000002,17.815796, 0.000002;;,
      14;3; 0.000000,17.815802,-0.000002;;,
      15;3; 0.000000,17.815811,-0.000007;;,
      16;3; 0.000000,17.815809,-0.000000;;,
      17;3; 0.000000,17.815783,-0.000004;;,
      18;3;-0.000001,17.815798, 0.000001;;,
      19;3; 0.000001,17.815807,-0.000005;;,
      20;3; 0.000001,17.815792, 0.000005;;,
      21;3;-0.000001,17.815786,-0.000003;;,
      22;3; 0.000000,17.815800, 0.000002;;,
      23;3; 0.000000,17.815798,-0.000005;;,
      24;3;-0.000000,17.815809,-0.000010;;,
      25;3; 0.000001,17.815800,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.997965,-0.034663, 0.027023,-0.046191;;,
      1;4;-0.997974,-0.035860, 0.028303,-0.044281;;,
      2;4;-0.998029,-0.035825, 0.029528,-0.042215;;,
      3;4;-0.998102,-0.035210, 0.030756,-0.040094;;,
      4;4;-0.998183,-0.034083, 0.032049,-0.037969;;,
      5;4;-0.998272,-0.032406, 0.033428,-0.035851;;,
      6;4;-0.998371,-0.029732, 0.035057,-0.033808;;,
      7;4;-0.998487,-0.024609, 0.037356,-0.031984;;,
      8;4;-0.998536,-0.019130, 0.040086,-0.030887;;,
      9;4;-0.998494,-0.015015, 0.043014,-0.030553;;,
      10;4;-0.998406,-0.012931, 0.045551,-0.030705;;,
      11;4;-0.998325,-0.012335, 0.047189,-0.031120;;,
      12;4;-0.998271,-0.012694, 0.047722,-0.031894;;,
      13;4;-0.998230,-0.014499, 0.047071,-0.033324;;,
      14;4;-0.998166,-0.018906, 0.045187,-0.035567;;,
      15;4;-0.998025,-0.026342, 0.042168,-0.038388;;,
      16;4;-0.997785,-0.035365, 0.038352,-0.041280;;,
      17;4;-0.997536,-0.042854, 0.034095,-0.043842;;,
      18;4;-0.997457,-0.045902, 0.029401,-0.045912;;,
      19;4;-0.997608,-0.044561, 0.023921,-0.047114;;,
      20;4;-0.997849,-0.042858, 0.017583,-0.046388;;,
      21;4;-0.997977,-0.045938, 0.011323,-0.042463;;,
      22;4;-0.997813,-0.055558, 0.006998,-0.035131;;,
      23;4;-0.997267,-0.068982, 0.006052,-0.025761;;,
      24;4;-0.996450,-0.082196, 0.008225,-0.016209;;,
      25;4;-0.995649,-0.092032, 0.012261,-0.007921;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000001,39.117596,11.977005;;,
      1;3; 0.000000,39.117584,11.977009;;,
      2;3; 0.000000,39.117603,11.977013;;,
      3;3;-0.000003,39.117603,11.977001;;,
      4;3;-0.000002,39.117592,11.977004;;,
      5;3;-0.000001,39.117603,11.976999;;,
      6;3;-0.000001,39.117607,11.976997;;,
      7;3; 0.000001,39.117588,11.977007;;,
      8;3; 0.000002,39.117588,11.977008;;,
      9;3; 0.000001,39.117599,11.976998;;,
      10;3;-0.000003,39.117599,11.976999;;,
      11;3; 0.000001,39.117592,11.977011;;,
      12;3; 0.000001,39.117599,11.977012;;,
      13;3; 0.000000,39.117603,11.977003;;,
      14;3;-0.000001,39.117599,11.976995;;,
      15;3; 0.000001,39.117596,11.976999;;,
      16;3; 0.000001,39.117580,11.977004;;,
      17;3; 0.000000,39.117615,11.976992;;,
      18;3;-0.000001,39.117584,11.976998;;,
      19;3;-0.000002,39.117607,11.977000;;,
      20;3; 0.000000,39.117607,11.977003;;,
      21;3;-0.000000,39.117596,11.976997;;,
      22;3; 0.000000,39.117592,11.976999;;,
      23;3;-0.000001,39.117588,11.977000;;,
      24;3;-0.000000,39.117607,11.977005;;,
      25;3; 0.000001,39.117592,11.977018;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.960596,-0.230320, 0.078347,-0.134422;;,
      1;4;-0.961543,-0.227233, 0.082299,-0.130488;;,
      2;4;-0.962519,-0.223800, 0.085644,-0.127025;;,
      3;4;-0.963487,-0.220180, 0.088753,-0.123839;;,
      4;4;-0.964427,-0.216343, 0.091794,-0.121038;;,
      5;4;-0.965335,-0.212259, 0.094803,-0.118688;;,
      6;4;-0.966180,-0.207651, 0.097984,-0.117370;;,
      7;4;-0.966887,-0.201707, 0.101745,-0.118710;;,
      8;4;-0.968070,-0.194006, 0.105699,-0.118446;;,
      9;4;-0.969586,-0.186950, 0.109066,-0.114270;;,
      10;4;-0.971042,-0.183559, 0.110752,-0.105441;;,
      11;4;-0.972129,-0.184845, 0.110380,-0.092808;;,
      12;4;-0.972713,-0.189866, 0.108237,-0.077873;;,
      13;4;-0.972722,-0.197659, 0.104405,-0.061993;;,
      14;4;-0.972050,-0.208040, 0.098511,-0.046192;;,
      15;4;-0.970663,-0.220637, 0.090348,-0.031152;;,
      16;4;-0.968798,-0.233780, 0.080525,-0.017098;;,
      17;4;-0.967110,-0.244442, 0.070212,-0.004039;;,
      18;4;-0.966562,-0.249277, 0.059736, 0.007153;;,
      19;4;-0.967920,-0.246393, 0.047276, 0.013663;;,
      20;4;-0.970957,-0.237076, 0.030015, 0.011671;;,
      21;4;-0.974102,-0.225973, 0.007885, 0.000124;;,
      22;4;-0.975587,-0.218530,-0.014409,-0.016365;;,
      23;4;-0.975168,-0.217202,-0.030678,-0.030495;;,
      24;4;-0.973872,-0.220469,-0.038526,-0.038512;;,
      25;4;-0.972641,-0.225511,-0.038426,-0.040467;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000003,14.552514,15.664104;;,
      1;3;-0.000001,14.552497,15.664108;;,
      2;3;-0.000000,14.552494,15.664097;;,
      3;3; 0.000003,14.552503,15.664106;;,
      4;3; 0.000000,14.552516,15.664110;;,
      5;3;-0.000001,14.552507,15.664100;;,
      6;3; 0.000000,14.552493,15.664106;;,
      7;3;-0.000001,14.552520,15.664099;;,
      8;3;-0.000001,14.552502,15.664114;;,
      9;3; 0.000000,14.552491,15.664101;;,
      10;3; 0.000003,14.552505,15.664101;;,
      11;3; 0.000005,14.552523,15.664104;;,
      12;3; 0.000004,14.552505,15.664101;;,
      13;3; 0.000001,14.552497,15.664101;;,
      14;3; 0.000000,14.552476,15.664103;;,
      15;3; 0.000003,14.552508,15.664100;;,
      16;3;-0.000002,14.552526,15.664100;;,
      17;3; 0.000001,14.552512,15.664102;;,
      18;3; 0.000000,14.552504,15.664109;;,
      19;3;-0.000002,14.552490,15.664102;;,
      20;3; 0.000001,14.552500,15.664110;;,
      21;3; 0.000000,14.552517,15.664103;;,
      22;3; 0.000001,14.552515,15.664082;;,
      23;3; 0.000000,14.552503,15.664108;;,
      24;3;-0.000001,14.552511,15.664104;;,
      25;3; 0.000000,14.552507,15.664101;;;
    }
  }
  Animation {
    {Armature_mixamorig_HeadTop_End}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000002,15.601688, 7.553708;;,
      1;3;-0.000001,15.601677, 7.553695;;,
      2;3;-0.000002,15.601703, 7.553703;;,
      3;3;-0.000001,15.601710, 7.553699;;,
      4;3; 0.000000,15.601707, 7.553692;;,
      5;3;-0.000006,15.601688, 7.553698;;,
      6;3; 0.000008,15.601690, 7.553699;;,
      7;3; 0.000001,15.601688, 7.553691;;,
      8;3; 0.000002,15.601678, 7.553698;;,
      9;3;-0.000001,15.601719, 7.553703;;,
      10;3;-0.000004,15.601733, 7.553697;;,
      11;3;-0.000002,15.601694, 7.553702;;,
      12;3; 0.000001,15.601701, 7.553704;;,
      13;3; 0.000000,15.601709, 7.553707;;,
      14;3; 0.000005,15.601688, 7.553708;;,
      15;3; 0.000001,15.601685, 7.553702;;,
      16;3; 0.000002,15.601690, 7.553702;;,
      17;3;-0.000003,15.601719, 7.553697;;,
      18;3;-0.000002,15.601715, 7.553712;;,
      19;3; 0.000000,15.601717, 7.553707;;,
      20;3; 0.000000,15.601684, 7.553707;;,
      21;3;-0.000001,15.601715, 7.553706;;,
      22;3;-0.000000,15.601690, 7.553710;;,
      23;3; 0.000000,15.601699, 7.553705;;,
      24;3;-0.000001,15.601688, 7.553704;;,
      25;3; 0.000000,15.601702, 7.553698;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftEye}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 3.528699, 2.462079,12.838202;;,
      1;3; 3.528703, 2.462074,12.838195;;,
      2;3; 3.528700, 2.462099,12.838200;;,
      3;3; 3.528701, 2.462107,12.838200;;,
      4;3; 3.528700, 2.462104,12.838202;;,
      5;3; 3.528696, 2.462089,12.838197;;,
      6;3; 3.528706, 2.462103,12.838199;;,
      7;3; 3.528705, 2.462079,12.838195;;,
      8;3; 3.528701, 2.462088,12.838204;;,
      9;3; 3.528700, 2.462105,12.838214;;,
      10;3; 3.528697, 2.462117,12.838205;;,
      11;3; 3.528698, 2.462096,12.838203;;,
      12;3; 3.528703, 2.462091,12.838198;;,
      13;3; 3.528699, 2.462094,12.838213;;,
      14;3; 3.528705, 2.462087,12.838211;;,
      15;3; 3.528702, 2.462079,12.838200;;,
      16;3; 3.528702, 2.462090,12.838204;;,
      17;3; 3.528698, 2.462115,12.838199;;,
      18;3; 3.528697, 2.462104,12.838217;;,
      19;3; 3.528699, 2.462130,12.838205;;,
      20;3; 3.528699, 2.462093,12.838206;;,
      21;3; 3.528699, 2.462111,12.838206;;,
      22;3; 3.528700, 2.462085,12.838203;;,
      23;3; 3.528701, 2.462082,12.838205;;,
      24;3; 3.528699, 2.462092,12.838205;;,
      25;3; 3.528701, 2.462111,12.838205;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightEye}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-3.528702, 2.462084,12.838210;;,
      1;3;-3.528698, 2.462070,12.838192;;,
      2;3;-3.528701, 2.462101,12.838202;;,
      3;3;-3.528698, 2.462102,12.838206;;,
      4;3;-3.528700, 2.462101,12.838197;;,
      5;3;-3.528705, 2.462081,12.838198;;,
      6;3;-3.528693, 2.462095,12.838194;;,
      7;3;-3.528695, 2.462077,12.838199;;,
      8;3;-3.528701, 2.462090,12.838206;;,
      9;3;-3.528702, 2.462118,12.838209;;,
      10;3;-3.528704, 2.462127,12.838199;;,
      11;3;-3.528702, 2.462103,12.838209;;,
      12;3;-3.528698, 2.462102,12.838199;;,
      13;3;-3.528704, 2.462111,12.838211;;,
      14;3;-3.528696, 2.462092,12.838207;;,
      15;3;-3.528699, 2.462080,12.838203;;,
      16;3;-3.528701, 2.462106,12.838207;;,
      17;3;-3.528700, 2.462106,12.838200;;,
      18;3;-3.528701, 2.462090,12.838209;;,
      19;3;-3.528700, 2.462111,12.838208;;,
      20;3;-3.528701, 2.462090,12.838208;;,
      21;3;-3.528701, 2.462121,12.838204;;,
      22;3;-3.528701, 2.462080,12.838203;;,
      23;3;-3.528700, 2.462090,12.838205;;,
      24;3;-3.528701, 2.462088,12.838202;;,
      25;3;-3.528700, 2.462105,12.838205;;;
    }
  }
  Animation {
    {Armature_mixamorig_Jaw}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      1;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      2;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      3;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      4;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      5;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      6;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      7;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      8;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      9;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      10;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      11;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      12;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      13;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      14;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      15;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      16;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      17;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      18;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      19;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      20;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      21;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      22;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      23;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      24;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      25;4;-0.454186, 0.890907, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000001,-2.317807, 3.620710;;,
      1;3; 0.000002,-2.317816, 3.620694;;,
      2;3;-0.000001,-2.317791, 3.620698;;,
      3;3; 0.000001,-2.317782, 3.620698;;,
      4;3; 0.000001,-2.317791, 3.620696;;,
      5;3;-0.000004,-2.317803, 3.620697;;,
      6;3; 0.000006,-2.317784, 3.620697;;,
      7;3; 0.000004,-2.317808, 3.620696;;,
      8;3; 0.000002,-2.317806, 3.620700;;,
      9;3; 0.000000,-2.317774, 3.620704;;,
      10;3;-0.000004,-2.317762, 3.620693;;,
      11;3;-0.000002,-2.317794, 3.620702;;,
      12;3; 0.000003,-2.317801, 3.620695;;,
      13;3;-0.000000,-2.317789, 3.620706;;,
      14;3; 0.000005,-2.317798, 3.620703;;,
      15;3; 0.000001,-2.317819, 3.620700;;,
      16;3; 0.000001,-2.317791, 3.620705;;,
      17;3;-0.000002,-2.317778, 3.620697;;,
      18;3;-0.000003,-2.317786, 3.620711;;,
      19;3; 0.000000,-2.317779, 3.620701;;,
      20;3;-0.000001,-2.317806, 3.620705;;,
      21;3;-0.000002,-2.317772, 3.620706;;,
      22;3;-0.000000,-2.317809, 3.620703;;,
      23;3; 0.000000,-2.317799, 3.620704;;,
      24;3;-0.000001,-2.317799, 3.620702;;,
      25;3; 0.000001,-2.317790, 3.620690;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.689225, 0.529490, 0.416645,-0.266490;;,
      1;4;-0.684856, 0.529061, 0.420119,-0.273069;;,
      2;4;-0.680465, 0.527223, 0.425234,-0.279605;;,
      3;4;-0.676181, 0.525322, 0.430226,-0.285871;;,
      4;4;-0.672701, 0.523375, 0.434671,-0.290884;;,
      5;4;-0.671382, 0.520961, 0.438316,-0.292787;;,
      6;4;-0.670680, 0.519223, 0.440752,-0.293823;;,
      7;4;-0.669188, 0.520024, 0.440650,-0.295955;;,
      8;4;-0.667307, 0.520877, 0.440697,-0.298623;;,
      9;4;-0.664136, 0.524101, 0.438641,-0.303043;;,
      10;4;-0.659284, 0.526263, 0.438705,-0.309726;;,
      11;4;-0.654411, 0.522596, 0.441473,-0.322088;;,
      12;4;-0.647565, 0.512143, 0.446754,-0.344645;;,
      13;4;-0.634059, 0.501061, 0.452443,-0.377097;;,
      14;4;-0.615625, 0.494974, 0.454673,-0.411435;;,
      15;4;-0.596911, 0.495968, 0.453356,-0.438386;;,
      16;4;-0.578400, 0.500417, 0.453183,-0.457888;;,
      17;4;-0.549811, 0.514896, 0.446419,-0.483010;;,
      18;4;-0.525952, 0.518911, 0.449875,-0.501716;;,
      19;4;-0.507067, 0.518224, 0.459808,-0.512741;;,
      20;4;-0.492659, 0.514535, 0.475408,-0.516264;;,
      21;4;-0.480104, 0.507652, 0.496325,-0.515220;;,
      22;4;-0.470323, 0.500641, 0.518080,-0.509655;;,
      23;4;-0.463750, 0.495272, 0.534960,-0.503448;;,
      24;4;-0.466903, 0.493795, 0.542800,-0.493495;;,
      25;4;-0.465198, 0.499209, 0.541084,-0.491539;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;17.399498,24.614193, 1.157898;;,
      1;3;17.399500,24.614195, 1.157909;;,
      2;3;17.399498,24.614193, 1.157910;;,
      3;3;17.399498,24.614204, 1.157892;;,
      4;3;17.399498,24.614193, 1.157907;;,
      5;3;17.399498,24.614197, 1.157898;;,
      6;3;17.399498,24.614201, 1.157899;;,
      7;3;17.399500,24.614187, 1.157896;;,
      8;3;17.399506,24.614185, 1.157906;;,
      9;3;17.399498,24.614199, 1.157896;;,
      10;3;17.399498,24.614191, 1.157902;;,
      11;3;17.399502,24.614183, 1.157911;;,
      12;3;17.399500,24.614197, 1.157905;;,
      13;3;17.399498,24.614191, 1.157905;;,
      14;3;17.399502,24.614193, 1.157900;;,
      15;3;17.399500,24.614193, 1.157896;;,
      16;3;17.399498,24.614187, 1.157901;;,
      17;3;17.399502,24.614208, 1.157884;;,
      18;3;17.399500,24.614185, 1.157901;;,
      19;3;17.399498,24.614208, 1.157891;;,
      20;3;17.399502,24.614202, 1.157911;;,
      21;3;17.399500,24.614193, 1.157899;;,
      22;3;17.399500,24.614195, 1.157897;;,
      23;3;17.399500,24.614189, 1.157905;;,
      24;3;17.399498,24.614204, 1.157895;;,
      25;3;17.399496,24.614197, 1.157910;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.848044, 0.203102,-0.433325,-0.227599;;,
      1;4;-0.851151, 0.201876,-0.430366,-0.222651;;,
      2;4;-0.858457, 0.193116,-0.427924,-0.206492;;,
      3;4;-0.866475, 0.180566,-0.426747,-0.185751;;,
      4;4;-0.872837, 0.170208,-0.425497,-0.167740;;,
      5;4;-0.875697, 0.165021,-0.424898,-0.159325;;,
      6;4;-0.879007, 0.162584,-0.420949,-0.153997;;,
      7;4;-0.886716, 0.164489,-0.405929,-0.147984;;,
      8;4;-0.894793, 0.172185,-0.385806,-0.144401;;,
      9;4;-0.904501, 0.186673,-0.353760,-0.147934;;,
      10;4;-0.914029, 0.210021,-0.313343,-0.149193;;,
      11;4;-0.921210, 0.246741,-0.258315,-0.154158;;,
      12;4;-0.920963, 0.290689,-0.199887,-0.165449;;,
      13;4;-0.912634, 0.335095,-0.147889,-0.181493;;,
      14;4;-0.904249, 0.370205,-0.107288,-0.183768;;,
      15;4;-0.897210, 0.395395,-0.082695,-0.178435;;,
      16;4;-0.890606, 0.415969,-0.065686,-0.171685;;,
      17;4;-0.882062, 0.443269,-0.043645,-0.153539;;,
      18;4;-0.871681, 0.469798,-0.028786,-0.136503;;,
      19;4;-0.860831, 0.495968,-0.019375,-0.112296;;,
      20;4;-0.848736, 0.523713,-0.012942,-0.072140;;,
      21;4;-0.833521, 0.552019,-0.008010,-0.021289;;,
      22;4;-0.816474, 0.576540,-0.005788, 0.030619;;,
      23;4;-0.801336, 0.593768,-0.007873, 0.072377;;,
      24;4;-0.794825, 0.598123,-0.016256, 0.101180;;,
      25;4;-0.790892, 0.601315,-0.036325, 0.107660;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000004,19.910397, 0.000022;;,
      1;3;-0.000010,19.910400, 0.000010;;,
      2;3; 0.000006,19.910400, 0.000014;;,
      3;3; 0.000003,19.910404,-0.000003;;,
      4;3; 0.000009,19.910400,-0.000003;;,
      5;3; 0.000005,19.910393,-0.000005;;,
      6;3; 0.000002,19.910400,-0.000011;;,
      7;3; 0.000009,19.910393,-0.000007;;,
      8;3; 0.000004,19.910404, 0.000005;;,
      9;3; 0.000008,19.910400, 0.000001;;,
      10;3; 0.000000,19.910400,-0.000001;;,
      11;3; 0.000008,19.910400,-0.000011;;,
      12;3; 0.000006,19.910397,-0.000004;;,
      13;3; 0.000007,19.910404,-0.000014;;,
      14;3;-0.000004,19.910402,-0.000004;;,
      15;3; 0.000001,19.910402,-0.000004;;,
      16;3; 0.000001,19.910404,-0.000012;;,
      17;3;-0.000003,19.910398,-0.000007;;,
      18;3; 0.000003,19.910400, 0.000008;;,
      19;3; 0.000000,19.910400, 0.000002;;,
      20;3; 0.000001,19.910402, 0.000007;;,
      21;3; 0.000009,19.910397,-0.000008;;,
      22;3;-0.000009,19.910400, 0.000008;;,
      23;3;-0.000002,19.910406,-0.000010;;,
      24;3; 0.000007,19.910404,-0.000012;;,
      25;3; 0.000010,19.910400, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.870800, 0.154364,-0.347395, 0.311763;;,
      1;4;-0.875652, 0.152189,-0.352083, 0.293443;;,
      2;4;-0.886040, 0.141421,-0.359002, 0.257005;;,
      3;4;-0.898485, 0.123027,-0.368620, 0.204226;;,
      4;4;-0.906614, 0.106910,-0.377014, 0.156464;;,
      5;4;-0.909645, 0.099168,-0.383374, 0.125439;;,
      6;4;-0.911206, 0.093795,-0.388763, 0.098838;;,
      7;4;-0.912200, 0.092049,-0.393393, 0.068273;;,
      8;4;-0.913643, 0.091306,-0.394746, 0.033114;;,
      9;4;-0.913148, 0.090720,-0.397357, 0.006158;;,
      10;4;-0.914778, 0.091993,-0.393338, 0.002133;;,
      11;4;-0.921354, 0.094637,-0.375811, 0.030266;;,
      12;4;-0.927307, 0.092120,-0.348336, 0.101375;;,
      13;4;-0.925013, 0.082421,-0.318426, 0.190163;;,
      14;4;-0.922485, 0.070560,-0.282090, 0.253907;;,
      15;4;-0.924073, 0.063059,-0.245495, 0.286085;;,
      16;4;-0.926474, 0.057876,-0.210643, 0.306474;;,
      17;4;-0.930126, 0.053773,-0.176690, 0.317419;;,
      18;4;-0.926945, 0.046715,-0.148074, 0.341562;;,
      19;4;-0.919010, 0.036820,-0.129833, 0.370416;;,
      20;4;-0.905188, 0.022886,-0.127278, 0.404860;;,
      21;4;-0.886130, 0.006691,-0.133604, 0.443709;;,
      22;4;-0.867298,-0.006314,-0.143906, 0.476492;;,
      23;4;-0.856026,-0.013274,-0.149728, 0.494596;;,
      24;4;-0.865246,-0.007072,-0.146106, 0.479533;;,
      25;4;-0.881973,-0.009754,-0.121994, 0.455133;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000004,49.301292,-0.000010;;,
      1;3;-0.000001,49.301296,-0.000014;;,
      2;3; 0.000007,49.301300,-0.000020;;,
      3;3; 0.000004,49.301296,-0.000008;;,
      4;3; 0.000008,49.301296, 0.000016;;,
      5;3; 0.000004,49.301300, 0.000010;;,
      6;3;-0.000000,49.301300, 0.000013;;,
      7;3; 0.000002,49.301296, 0.000008;;,
      8;3; 0.000003,49.301296,-0.000006;;,
      9;3;-0.000008,49.301292,-0.000012;;,
      10;3; 0.000000,49.301296, 0.000002;;,
      11;3; 0.000000,49.301296, 0.000006;;,
      12;3;-0.000004,49.301292, 0.000025;;,
      13;3;-0.000001,49.301300, 0.000013;;,
      14;3;-0.000001,49.301304, 0.000000;;,
      15;3;-0.000003,49.301300, 0.000003;;,
      16;3;-0.000001,49.301300,-0.000007;;,
      17;3;-0.000001,49.301308,-0.000006;;,
      18;3;-0.000001,49.301292, 0.000005;;,
      19;3; 0.000000,49.301285,-0.000007;;,
      20;3; 0.000005,49.301300, 0.000004;;,
      21;3; 0.000006,49.301300, 0.000002;;,
      22;3;-0.000013,49.301300, 0.000002;;,
      23;3;-0.000004,49.301292, 0.000000;;,
      24;3; 0.000004,49.301292,-0.000001;;,
      25;3; 0.000001,49.301292,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.913083, 0.039716, 0.018504, 0.405412;;,
      1;4;-0.912675, 0.038352, 0.015308, 0.406595;;,
      2;4;-0.911833, 0.040147, 0.012235, 0.408410;;,
      3;4;-0.911118, 0.043755, 0.009248, 0.409712;;,
      4;4;-0.910912, 0.048968, 0.006423, 0.409635;;,
      5;4;-0.911761, 0.056136, 0.004009, 0.406847;;,
      6;4;-0.913264, 0.065079, 0.002087, 0.402131;;,
      7;4;-0.915627, 0.075415, 0.000528, 0.394892;;,
      8;4;-0.915814, 0.081401,-0.000676, 0.393267;;,
      9;4;-0.920870, 0.073428,-0.000714, 0.382891;;,
      10;4;-0.919656, 0.073113, 0.000254, 0.385858;;,
      11;4;-0.937068, 0.065233, 0.002135, 0.342994;;,
      12;4;-0.953061, 0.055505, 0.000163, 0.297648;;,
      13;4;-0.953126, 0.061175, 0.000207, 0.296325;;,
      14;4;-0.961739, 0.073754,-0.000654, 0.263852;;,
      15;4;-0.966031, 0.093976,-0.001171, 0.240732;;,
      16;4;-0.964105, 0.096684,-0.000811, 0.247292;;,
      17;4;-0.966412, 0.078942,-0.000739, 0.244572;;,
      18;4;-0.961618, 0.092543, 0.000451, 0.258316;;,
      19;4;-0.956337, 0.107046, 0.000916, 0.271955;;,
      20;4;-0.956747, 0.102233, 0.001241, 0.272365;;,
      21;4;-0.959898, 0.087575, 0.001621, 0.266315;;,
      22;4;-0.963792, 0.068430, 0.001978, 0.257717;;,
      23;4;-0.967043, 0.053165, 0.002271, 0.248991;;,
      24;4;-0.969571, 0.045342, 0.002394, 0.240562;;,
      25;4;-0.972246, 0.053883, 0.002442, 0.227657;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000011,31.604710, 0.000004;;,
      1;3; 0.000002,31.604698, 0.000011;;,
      2;3;-0.000006,31.604702, 0.000015;;,
      3;3;-0.000013,31.604702,-0.000004;;,
      4;3;-0.000010,31.604710,-0.000004;;,
      5;3;-0.000004,31.604698, 0.000000;;,
      6;3; 0.000018,31.604713,-0.000011;;,
      7;3; 0.000005,31.604713,-0.000011;;,
      8;3; 0.000006,31.604706,-0.000008;;,
      9;3;-0.000005,31.604706,-0.000004;;,
      10;3; 0.000010,31.604710, 0.000004;;,
      11;3; 0.000002,31.604706,-0.000006;;,
      12;3; 0.000001,31.604708, 0.000002;;,
      13;3;-0.000006,31.604710,-0.000008;;,
      14;3;-0.000008,31.604710, 0.000004;;,
      15;3; 0.000004,31.604708,-0.000006;;,
      16;3; 0.000003,31.604717,-0.000005;;,
      17;3; 0.000002,31.604713,-0.000006;;,
      18;3; 0.000000,31.604713,-0.000006;;,
      19;3;-0.000001,31.604702, 0.000003;;,
      20;3; 0.000000,31.604710, 0.000002;;,
      21;3; 0.000000,31.604710, 0.000004;;,
      22;3; 0.000000,31.604706, 0.000005;;,
      23;3; 0.000002,31.604713, 0.000001;;,
      24;3; 0.000000,31.604704, 0.000002;;,
      25;3; 0.000003,31.604710, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      1;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      2;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      3;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      4;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      5;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      6;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      7;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      8;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      9;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      10;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      11;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      12;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      13;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      14;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      15;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      16;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      17;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      18;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      19;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      20;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      21;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      22;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      23;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      24;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      25;4;-0.959565, 0.110569, 0.077482, 0.246993;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-7.059600, 6.094497, 4.397198;;,
      1;3;-7.059599, 6.094464, 4.397209;;,
      2;3;-7.059595, 6.094471, 4.397196;;,
      3;3;-7.059600, 6.094487, 4.397209;;,
      4;3;-7.059599, 6.094482, 4.397209;;,
      5;3;-7.059598, 6.094477, 4.397205;;,
      6;3;-7.059598, 6.094490, 4.397221;;,
      7;3;-7.059598, 6.094477, 4.397209;;,
      8;3;-7.059605, 6.094473, 4.397202;;,
      9;3;-7.059601, 6.094492, 4.397202;;,
      10;3;-7.059593, 6.094481, 4.397205;;,
      11;3;-7.059605, 6.094492, 4.397209;;,
      12;3;-7.059605, 6.094490, 4.397200;;,
      13;3;-7.059593, 6.094490, 4.397199;;,
      14;3;-7.059608, 6.094484, 4.397212;;,
      15;3;-7.059593, 6.094491, 4.397207;;,
      16;3;-7.059603, 6.094485, 4.397213;;,
      17;3;-7.059601, 6.094486, 4.397202;;,
      18;3;-7.059604, 6.094486, 4.397203;;,
      19;3;-7.059595, 6.094497, 4.397206;;,
      20;3;-7.059598, 6.094485, 4.397203;;,
      21;3;-7.059593, 6.094487, 4.397209;;,
      22;3;-7.059598, 6.094496, 4.397209;;,
      23;3;-7.059594, 6.094488, 4.397210;;,
      24;3;-7.059598, 6.094487, 4.397217;;,
      25;3;-7.059599, 6.094488, 4.397204;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      1;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      2;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      3;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      4;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      5;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      6;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      7;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      8;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      9;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      10;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      11;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      12;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      13;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      14;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      15;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      16;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      17;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      18;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      19;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      20;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      21;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      22;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      23;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      24;4;-0.983499, 0.101251, 0.042035,-0.143913;;,
      25;4;-0.983499, 0.101251, 0.042035,-0.143913;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000, 7.536495, 0.000006;;,
      1;3; 0.000008, 7.536486,-0.000003;;,
      2;3; 0.000000, 7.536486, 0.000002;;,
      3;3; 0.000000, 7.536503, 0.000007;;,
      4;3; 0.000004, 7.536489,-0.000006;;,
      5;3;-0.000008, 7.536480, 0.000011;;,
      6;3; 0.000011, 7.536482,-0.000008;;,
      7;3;-0.000004, 7.536501, 0.000015;;,
      8;3; 0.000006, 7.536493, 0.000000;;,
      9;3; 0.000000, 7.536494,-0.000002;;,
      10;3;-0.000003, 7.536511,-0.000003;;,
      11;3; 0.000001, 7.536498,-0.000004;;,
      12;3;-0.000012, 7.536489,-0.000010;;,
      13;3;-0.000009, 7.536493, 0.000012;;,
      14;3;-0.000006, 7.536491, 0.000004;;,
      15;3;-0.000005, 7.536493, 0.000013;;,
      16;3; 0.000004, 7.536491, 0.000000;;,
      17;3; 0.000001, 7.536497,-0.000006;;,
      18;3; 0.000008, 7.536491,-0.000010;;,
      19;3; 0.000001, 7.536493, 0.000001;;,
      20;3;-0.000004, 7.536495, 0.000000;;,
      21;3; 0.000000, 7.536493,-0.000001;;,
      22;3;-0.000009, 7.536493,-0.000008;;,
      23;3;-0.000002, 7.536492, 0.000011;;,
      24;3; 0.000003, 7.536495,-0.000001;;,
      25;3; 0.000001, 7.536490,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      1;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      2;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      3;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      4;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      5;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      6;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      7;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      8;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      9;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      10;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      11;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      12;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      13;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      14;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      15;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      16;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      17;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      18;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      19;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      20;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      21;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      22;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      23;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      24;4;-0.890005, 0.130273, 0.436926,-0.004015;;,
      25;4;-0.890005, 0.130273, 0.436926,-0.004015;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000004, 7.512292,-0.000003;;,
      1;3;-0.000008, 7.512292,-0.000008;;,
      2;3; 0.000000, 7.512289,-0.000011;;,
      3;3; 0.000004, 7.512304,-0.000007;;,
      4;3; 0.000010, 7.512298, 0.000001;;,
      5;3;-0.000004, 7.512304, 0.000005;;,
      6;3;-0.000003, 7.512299, 0.000004;;,
      7;3; 0.000002, 7.512296, 0.000001;;,
      8;3;-0.000003, 7.512309, 0.000015;;,
      9;3; 0.000012, 7.512290,-0.000003;;,
      10;3; 0.000002, 7.512283, 0.000011;;,
      11;3; 0.000011, 7.512288,-0.000011;;,
      12;3;-0.000002, 7.512294, 0.000025;;,
      13;3; 0.000001, 7.512288, 0.000008;;,
      14;3; 0.000002, 7.512302, 0.000000;;,
      15;3; 0.000000, 7.512299, 0.000008;;,
      16;3; 0.000004, 7.512300, 0.000000;;,
      17;3;-0.000004, 7.512306,-0.000002;;,
      18;3; 0.000002, 7.512297, 0.000003;;,
      19;3;-0.000002, 7.512295,-0.000005;;,
      20;3; 0.000002, 7.512297,-0.000001;;,
      21;3; 0.000004, 7.512297, 0.000000;;,
      22;3; 0.000004, 7.512299, 0.000004;;,
      23;3;-0.000008, 7.512300, 0.000004;;,
      24;3;-0.000002, 7.512291, 0.000003;;,
      25;3; 0.000002, 7.512291, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb4}
    AnimationKey { // Rotation
      0;
      26;
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
      25;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,10.212405, 0.000003;;,
      1;3; 0.000006,10.212408,-0.000008;;,
      2;3; 0.000008,10.212389,-0.000003;;,
      3;3; 0.000002,10.212408, 0.000000;;,
      4;3; 0.000008,10.212406,-0.000002;;,
      5;3; 0.000011,10.212398, 0.000010;;,
      6;3;-0.000008,10.212394, 0.000000;;,
      7;3;-0.000002,10.212402, 0.000006;;,
      8;3; 0.000001,10.212399, 0.000003;;,
      9;3;-0.000000,10.212399, 0.000004;;,
      10;3; 0.000005,10.212400,-0.000013;;,
      11;3; 0.000004,10.212404, 0.000001;;,
      12;3;-0.000007,10.212408,-0.000004;;,
      13;3; 0.000005,10.212395,-0.000006;;,
      14;3;-0.000002,10.212405,-0.000005;;,
      15;3; 0.000008,10.212400, 0.000001;;,
      16;3; 0.000005,10.212400,-0.000000;;,
      17;3; 0.000000,10.212399, 0.000004;;,
      18;3;-0.000006,10.212401, 0.000002;;,
      19;3;-0.000003,10.212404, 0.000009;;,
      20;3; 0.000000,10.212402, 0.000002;;,
      21;3; 0.000000,10.212397, 0.000009;;,
      22;3; 0.000000,10.212397, 0.000008;;,
      23;3;-0.000003,10.212404, 0.000000;;,
      24;3; 0.000001,10.212399,-0.000001;;,
      25;3; 0.000002,10.212397, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      1;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      2;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      3;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      4;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      5;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      6;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      7;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      8;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      9;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      10;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      11;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      12;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      13;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      14;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      15;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      16;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      17;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      18;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      19;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      20;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      21;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      22;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      23;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      24;4;-0.941498, 0.330522,-0.017322, 0.063537;;,
      25;4;-0.941498, 0.330522,-0.017322, 0.063537;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-6.192906,21.271091, 0.498695;;,
      1;3;-6.192900,21.271061, 0.498709;;,
      2;3;-6.192903,21.271061, 0.498695;;,
      3;3;-6.192891,21.271091, 0.498707;;,
      4;3;-6.192901,21.271080, 0.498707;;,
      5;3;-6.192900,21.271080, 0.498707;;,
      6;3;-6.192898,21.271097, 0.498722;;,
      7;3;-6.192897,21.271069, 0.498703;;,
      8;3;-6.192902,21.271072, 0.498707;;,
      9;3;-6.192904,21.271091, 0.498707;;,
      10;3;-6.192898,21.271070, 0.498707;;,
      11;3;-6.192902,21.271088, 0.498707;;,
      12;3;-6.192905,21.271086, 0.498699;;,
      13;3;-6.192890,21.271088, 0.498694;;,
      14;3;-6.192909,21.271082, 0.498705;;,
      15;3;-6.192898,21.271090, 0.498711;;,
      16;3;-6.192898,21.271091, 0.498711;;,
      17;3;-6.192900,21.271086, 0.498698;;,
      18;3;-6.192902,21.271086, 0.498704;;,
      19;3;-6.192895,21.271097, 0.498705;;,
      20;3;-6.192898,21.271084, 0.498707;;,
      21;3;-6.192895,21.271084, 0.498711;;,
      22;3;-6.192902,21.271095, 0.498709;;,
      23;3;-6.192891,21.271091, 0.498710;;,
      24;3;-6.192898,21.271088, 0.498719;;,
      25;3;-6.192895,21.271091, 0.498706;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      1;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      2;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      3;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      4;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      5;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      6;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      7;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      8;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      9;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      10;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      11;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      12;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      13;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      14;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      15;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      16;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      17;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      18;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      19;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      20;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      21;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      22;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      23;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      24;4;-0.932392, 0.359376, 0.013826, 0.036090;;,
      25;4;-0.932392, 0.359376, 0.013826, 0.036090;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000005, 7.536500, 0.000000;;,
      1;3;-0.000006, 7.536495, 0.000000;;,
      2;3; 0.000011, 7.536497,-0.000004;;,
      3;3;-0.000003, 7.536500, 0.000000;;,
      4;3;-0.000004, 7.536497,-0.000023;;,
      5;3; 0.000002, 7.536486,-0.000008;;,
      6;3; 0.000002, 7.536500,-0.000019;;,
      7;3;-0.000003, 7.536495, 0.000000;;,
      8;3; 0.000004, 7.536501, 0.000015;;,
      9;3;-0.000002, 7.536510, 0.000002;;,
      10;3;-0.000004, 7.536493, 0.000019;;,
      11;3; 0.000000, 7.536488, 0.000010;;,
      12;3; 0.000004, 7.536493,-0.000002;;,
      13;3; 0.000008, 7.536503, 0.000006;;,
      14;3; 0.000000, 7.536503, 0.000007;;,
      15;3; 0.000000, 7.536505,-0.000000;;,
      16;3; 0.000006, 7.536499, 0.000001;;,
      17;3;-0.000002, 7.536489,-0.000001;;,
      18;3; 0.000004, 7.536497,-0.000007;;,
      19;3;-0.000001, 7.536501, 0.000000;;,
      20;3;-0.000004, 7.536497, 0.000000;;,
      21;3; 0.000000, 7.536499, 0.000000;;,
      22;3; 0.000008, 7.536497, 0.000001;;,
      23;3;-0.000002, 7.536493,-0.000005;;,
      24;3;-0.000008, 7.536499,-0.000002;;,
      25;3; 0.000003, 7.536495,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      1;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      2;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      3;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      4;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      5;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      6;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      7;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      8;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      9;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      10;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      11;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      12;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      13;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      14;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      15;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      16;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      17;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      18;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      19;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      20;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      21;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      22;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      23;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      24;4;-0.998346, 0.054944, 0.001060,-0.016911;;,
      25;4;-0.998346, 0.054944, 0.001060,-0.016911;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000009, 7.512295, 0.000000;;,
      1;3; 0.000003, 7.512291, 0.000007;;,
      2;3; 0.000003, 7.512295, 0.000006;;,
      3;3; 0.000008, 7.512306,-0.000015;;,
      4;3; 0.000006, 7.512287,-0.000002;;,
      5;3; 0.000007, 7.512295, 0.000000;;,
      6;3;-0.000004, 7.512295, 0.000002;;,
      7;3;-0.000003, 7.512287,-0.000002;;,
      8;3; 0.000006, 7.512295,-0.000015;;,
      9;3;-0.000002, 7.512283, 0.000004;;,
      10;3; 0.000006, 7.512291,-0.000004;;,
      11;3;-0.000004, 7.512302,-0.000013;;,
      12;3; 0.000011, 7.512295, 0.000000;;,
      13;3; 0.000000, 7.512280,-0.000006;;,
      14;3; 0.000006, 7.512291, 0.000004;;,
      15;3; 0.000000, 7.512291, 0.000002;;,
      16;3; 0.000002, 7.512304, 0.000004;;,
      17;3; 0.000006, 7.512295, 0.000002;;,
      18;3; 0.000007, 7.512308,-0.000005;;,
      19;3; 0.000003, 7.512295,-0.000000;;,
      20;3; 0.000004, 7.512290, 0.000002;;,
      21;3; 0.000001, 7.512288, 0.000005;;,
      22;3; 0.000003, 7.512296,-0.000003;;,
      23;3; 0.000001, 7.512299, 0.000002;;,
      24;3;-0.000000, 7.512297,-0.000003;;,
      25;3;-0.000001, 7.512297, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000003,10.212397,-0.000009;;,
      1;3;-0.000005,10.212399,-0.000011;;,
      2;3;-0.000000,10.212391, 0.000006;;,
      3;3; 0.000010,10.212395, 0.000002;;,
      4;3;-0.000008,10.212395,-0.000018;;,
      5;3;-0.000007,10.212395, 0.000002;;,
      6;3;-0.000002,10.212399,-0.000011;;,
      7;3; 0.000007,10.212399,-0.000017;;,
      8;3;-0.000003,10.212399, 0.000002;;,
      9;3; 0.000001,10.212406,-0.000005;;,
      10;3;-0.000008,10.212399,-0.000010;;,
      11;3; 0.000000,10.212399, 0.000001;;,
      12;3; 0.000015,10.212399, 0.000009;;,
      13;3; 0.000000,10.212406,-0.000006;;,
      14;3; 0.000000,10.212394,-0.000011;;,
      15;3; 0.000006,10.212399, 0.000000;;,
      16;3;-0.000002,10.212402,-0.000003;;,
      17;3; 0.000006,10.212402, 0.000000;;,
      18;3; 0.000004,10.212399,-0.000002;;,
      19;3; 0.000001,10.212400, 0.000002;;,
      20;3; 0.000005,10.212404, 0.000002;;,
      21;3;-0.000000,10.212400, 0.000005;;,
      22;3;-0.000009,10.212398, 0.000003;;,
      23;3;-0.000012,10.212399,-0.000004;;,
      24;3; 0.000000,10.212400,-0.000006;;,
      25;3; 0.000009,10.212402, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      1;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      2;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      3;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      4;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      5;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      6;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      7;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      8;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      9;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      10;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      11;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      12;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      13;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      14;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      15;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      16;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      17;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      18;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      19;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      20;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      21;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      22;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      23;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      24;4;-0.942603, 0.333362, 0.000666, 0.019199;;,
      25;4;-0.942603, 0.333362, 0.000666, 0.019199;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.016500,23.334381, 0.008589;;,
      1;3; 0.016500,23.334360, 0.008608;;,
      2;3; 0.016500,23.334362, 0.008591;;,
      3;3; 0.016503,23.334377, 0.008606;;,
      4;3; 0.016500,23.334375, 0.008602;;,
      5;3; 0.016498,23.334379, 0.008602;;,
      6;3; 0.016506,23.334391, 0.008617;;,
      7;3; 0.016503,23.334370, 0.008606;;,
      8;3; 0.016491,23.334370, 0.008606;;,
      9;3; 0.016500,23.334383, 0.008606;;,
      10;3; 0.016506,23.334372, 0.008606;;,
      11;3; 0.016499,23.334387, 0.008604;;,
      12;3; 0.016499,23.334377, 0.008604;;,
      13;3; 0.016502,23.334389, 0.008595;;,
      14;3; 0.016495,23.334383, 0.008610;;,
      15;3; 0.016508,23.334385, 0.008608;;,
      16;3; 0.016500,23.334377, 0.008607;;,
      17;3; 0.016499,23.334377, 0.008592;;,
      18;3; 0.016499,23.334373, 0.008600;;,
      19;3; 0.016502,23.334389, 0.008599;;,
      20;3; 0.016500,23.334379, 0.008607;;,
      21;3; 0.016506,23.334381, 0.008609;;,
      22;3; 0.016500,23.334383, 0.008611;;,
      23;3; 0.016500,23.334377, 0.008610;;,
      24;3; 0.016500,23.334375, 0.008613;;,
      25;3; 0.016504,23.334381, 0.008605;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      1;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      2;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      3;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      4;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      5;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      6;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      7;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      8;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      9;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      10;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      11;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      12;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      13;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      14;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      15;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      16;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      17;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      18;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      19;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      20;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      21;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      22;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      23;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      24;4;-0.902545, 0.428452, 0.017924, 0.038993;;,
      25;4;-0.902545, 0.428452, 0.017924, 0.038993;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000005, 6.996596, 0.000000;;,
      1;3;-0.000002, 6.996596,-0.000019;;,
      2;3;-0.000006, 6.996581,-0.000011;;,
      3;3;-0.000009, 6.996594,-0.000008;;,
      4;3;-0.000003, 6.996607,-0.000008;;,
      5;3; 0.000010, 6.996596, 0.000008;;,
      6;3; 0.000010, 6.996587, 0.000000;;,
      7;3; 0.000003, 6.996597, 0.000019;;,
      8;3;-0.000004, 6.996595, 0.000011;;,
      9;3;-0.000010, 6.996595, 0.000000;;,
      10;3;-0.000004, 6.996590, 0.000002;;,
      11;3; 0.000000, 6.996593, 0.000008;;,
      12;3; 0.000000, 6.996596, 0.000008;;,
      13;3;-0.000004, 6.996586, 0.000004;;,
      14;3; 0.000004, 6.996590, 0.000002;;,
      15;3;-0.000002, 6.996595, 0.000018;;,
      16;3; 0.000000, 6.996593,-0.000002;;,
      17;3;-0.000002, 6.996597, 0.000003;;,
      18;3; 0.000001, 6.996594,-0.000004;;,
      19;3;-0.000001, 6.996591, 0.000007;;,
      20;3;-0.000002, 6.996594, 0.000008;;,
      21;3;-0.000001, 6.996597, 0.000002;;,
      22;3;-0.000001, 6.996592, 0.000000;;,
      23;3;-0.000001, 6.996601, 0.000002;;,
      24;3; 0.000000, 6.996592, 0.000000;;,
      25;3; 0.000006, 6.996595,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      1;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      2;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      3;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      4;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      5;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      6;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      7;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      8;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      9;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      10;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      11;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      12;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      13;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      14;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      15;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      16;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      17;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      18;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      19;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      20;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      21;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      22;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      23;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      24;4;-0.986882, 0.160826, 0.002706,-0.013873;;,
      25;4;-0.986882, 0.160826, 0.002706,-0.013873;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000007, 7.016006, 0.000000;;,
      1;3;-0.000000, 7.016008,-0.000000;;,
      2;3;-0.000004, 7.016010,-0.000004;;,
      3;3; 0.000009, 7.016003,-0.000003;;,
      4;3; 0.000001, 7.016006, 0.000015;;,
      5;3; 0.000004, 7.016006, 0.000000;;,
      6;3; 0.000006, 7.015995, 0.000008;;,
      7;3;-0.000008, 7.016006, 0.000004;;,
      8;3; 0.000008, 7.016010, 0.000005;;,
      9;3; 0.000006, 7.016006,-0.000008;;,
      10;3;-0.000011, 7.016018, 0.000003;;,
      11;3; 0.000004, 7.016003, 0.000008;;,
      12;3; 0.000004, 7.015999, 0.000006;;,
      13;3; 0.000004, 7.016003, 0.000000;;,
      14;3; 0.000004, 7.016005, 0.000006;;,
      15;3; 0.000004, 7.016015,-0.000004;;,
      16;3; 0.000000, 7.016003,-0.000004;;,
      17;3;-0.000002, 7.016007, 0.000001;;,
      18;3; 0.000002, 7.016007, 0.000004;;,
      19;3; 0.000003, 7.016010,-0.000002;;,
      20;3; 0.000002, 7.016006, 0.000006;;,
      21;3;-0.000003, 7.016006, 0.000004;;,
      22;3;-0.000004, 7.015998,-0.000008;;,
      23;3; 0.000001, 7.016003,-0.000001;;,
      24;3; 0.000003, 7.016003, 0.000002;;,
      25;3;-0.000000, 7.016004,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000002, 7.721608,-0.000001;;,
      1;3;-0.000006, 7.721608, 0.000000;;,
      2;3;-0.000007, 7.721607,-0.000002;;,
      3;3;-0.000000, 7.721590, 0.000016;;,
      4;3;-0.000003, 7.721589,-0.000006;;,
      5;3;-0.000004, 7.721601, 0.000018;;,
      6;3;-0.000003, 7.721615,-0.000005;;,
      7;3;-0.000002, 7.721608, 0.000020;;,
      8;3; 0.000000, 7.721603, 0.000026;;,
      9;3; 0.000000, 7.721597, 0.000002;;,
      10;3; 0.000008, 7.721594,-0.000003;;,
      11;3; 0.000000, 7.721609,-0.000001;;,
      12;3; 0.000011, 7.721590,-0.000013;;,
      13;3; 0.000004, 7.721605, 0.000002;;,
      14;3;-0.000015, 7.721598, 0.000000;;,
      15;3;-0.000002, 7.721605, 0.000005;;,
      16;3;-0.000006, 7.721595,-0.000002;;,
      17;3;-0.000003, 7.721606, 0.000002;;,
      18;3;-0.000002, 7.721606, 0.000005;;,
      19;3;-0.000005, 7.721603,-0.000001;;,
      20;3;-0.000001, 7.721597, 0.000000;;,
      21;3; 0.000001, 7.721605,-0.000004;;,
      22;3;-0.000003, 7.721596,-0.000003;;,
      23;3;-0.000002, 7.721609,-0.000001;;,
      24;3; 0.000000, 7.721603, 0.000000;;,
      25;3; 0.000000, 7.721597, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      1;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      2;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      3;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      4;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      5;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      6;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      7;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      8;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      9;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      10;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      11;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      12;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      13;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      14;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      15;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      16;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      17;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      18;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      19;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      20;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      21;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      22;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      23;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      24;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      25;4;-0.854279, 0.519784,-0.005607, 0.001046;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 6.516908,22.686596, 0.103590;;,
      1;3; 6.516905,22.686573, 0.103601;;,
      2;3; 6.516904,22.686581, 0.103588;;,
      3;3; 6.516897,22.686598, 0.103600;;,
      4;3; 6.516899,22.686602, 0.103600;;,
      5;3; 6.516895,22.686590, 0.103607;;,
      6;3; 6.516905,22.686592, 0.103615;;,
      7;3; 6.516903,22.686581, 0.103596;;,
      8;3; 6.516901,22.686577, 0.103603;;,
      9;3; 6.516897,22.686590, 0.103600;;,
      10;3; 6.516907,22.686584, 0.103603;;,
      11;3; 6.516899,22.686590, 0.103603;;,
      12;3; 6.516895,22.686594, 0.103598;;,
      13;3; 6.516907,22.686602, 0.103588;;,
      14;3; 6.516891,22.686586, 0.103601;;,
      15;3; 6.516903,22.686594, 0.103605;;,
      16;3; 6.516903,22.686588, 0.103601;;,
      17;3; 6.516901,22.686588, 0.103591;;,
      18;3; 6.516899,22.686590, 0.103601;;,
      19;3; 6.516902,22.686598, 0.103598;;,
      20;3; 6.516901,22.686590, 0.103602;;,
      21;3; 6.516903,22.686590, 0.103607;;,
      22;3; 6.516900,22.686596, 0.103603;;,
      23;3; 6.516904,22.686596, 0.103605;;,
      24;3; 6.516900,22.686588, 0.103613;;,
      25;3; 6.516904,22.686596, 0.103598;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      1;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      2;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      3;4;-0.925419, 0.378771,-0.003734, 0.010889;;,
      4;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      5;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      6;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      7;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      8;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      9;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      10;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      11;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      12;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      13;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      14;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      15;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      16;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      17;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      18;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      19;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      20;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      21;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      22;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      23;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      24;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      25;4;-0.925419, 0.378771,-0.003734, 0.010888;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000002, 6.408597,-0.000008;;,
      1;3;-0.000000, 6.408600,-0.000015;;,
      2;3; 0.000006, 6.408597,-0.000027;;,
      3;3; 0.000009, 6.408589, 0.000008;;,
      4;3;-0.000001, 6.408601, 0.000008;;,
      5;3;-0.000002, 6.408598, 0.000004;;,
      6;3;-0.000004, 6.408602,-0.000002;;,
      7;3; 0.000008, 6.408603,-0.000002;;,
      8;3;-0.000002, 6.408594, 0.000006;;,
      9;3; 0.000004, 6.408593, 0.000021;;,
      10;3; 0.000000, 6.408599, 0.000000;;,
      11;3; 0.000000, 6.408592, 0.000005;;,
      12;3; 0.000008, 6.408592,-0.000001;;,
      13;3; 0.000000, 6.408596,-0.000007;;,
      14;3; 0.000004, 6.408592,-0.000015;;,
      15;3; 0.000002, 6.408596, 0.000004;;,
      16;3;-0.000006, 6.408596,-0.000002;;,
      17;3; 0.000000, 6.408598, 0.000006;;,
      18;3; 0.000003, 6.408601,-0.000002;;,
      19;3;-0.000003, 6.408598, 0.000000;;,
      20;3; 0.000002, 6.408594,-0.000003;;,
      21;3; 0.000003, 6.408605,-0.000004;;,
      22;3;-0.000001, 6.408596, 0.000004;;,
      23;3;-0.000005, 6.408597, 0.000000;;,
      24;3;-0.000002, 6.408598,-0.000002;;,
      25;3;-0.000004, 6.408606, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      1;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      2;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      3;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      4;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      5;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      6;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      7;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      8;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      9;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      10;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      11;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      12;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      13;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      14;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      15;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      16;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      17;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      18;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      19;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      20;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      21;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      22;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      23;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      24;4;-0.990596, 0.136412,-0.001915,-0.010397;;,
      25;4;-0.990596, 0.136412,-0.001915,-0.010397;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000009, 6.150299, 0.000004;;,
      1;3; 0.000004, 6.150295,-0.000002;;,
      2;3; 0.000012, 6.150310,-0.000002;;,
      3;3; 0.000018, 6.150295,-0.000019;;,
      4;3; 0.000000, 6.150297, 0.000013;;,
      5;3; 0.000008, 6.150298, 0.000002;;,
      6;3;-0.000010, 6.150290,-0.000007;;,
      7;3; 0.000010, 6.150300,-0.000010;;,
      8;3;-0.000004, 6.150305, 0.000016;;,
      9;3;-0.000004, 6.150298, 0.000002;;,
      10;3;-0.000004, 6.150298,-0.000008;;,
      11;3; 0.000004, 6.150290, 0.000002;;,
      12;3;-0.000011, 6.150303,-0.000002;;,
      13;3;-0.000004, 6.150290,-0.000004;;,
      14;3; 0.000008, 6.150300, 0.000003;;,
      15;3;-0.000010, 6.150302, 0.000001;;,
      16;3;-0.000004, 6.150305, 0.000005;;,
      17;3; 0.000005, 6.150298, 0.000000;;,
      18;3;-0.000005, 6.150299,-0.000005;;,
      19;3;-0.000005, 6.150297, 0.000001;;,
      20;3; 0.000004, 6.150296, 0.000002;;,
      21;3;-0.000005, 6.150296,-0.000003;;,
      22;3; 0.000002, 6.150300,-0.000001;;,
      23;3; 0.000000, 6.150295, 0.000000;;,
      24;3; 0.000001, 6.150298,-0.000001;;,
      25;3; 0.000002, 6.150295, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000003, 6.145405,-0.000010;;,
      1;3;-0.000004, 6.145409, 0.000014;;,
      2;3; 0.000018, 6.145390,-0.000009;;,
      3;3; 0.000009, 6.145412,-0.000004;;,
      4;3; 0.000005, 6.145393,-0.000003;;,
      5;3;-0.000001, 6.145395,-0.000003;;,
      6;3; 0.000003, 6.145382,-0.000010;;,
      7;3; 0.000001, 6.145399, 0.000000;;,
      8;3; 0.000008, 6.145399,-0.000002;;,
      9;3;-0.000019, 6.145409, 0.000001;;,
      10;3; 0.000008, 6.145390,-0.000000;;,
      11;3; 0.000004, 6.145412, 0.000001;;,
      12;3;-0.000004, 6.145393,-0.000004;;,
      13;3; 0.000008, 6.145399,-0.000002;;,
      14;3;-0.000004, 6.145392,-0.000008;;,
      15;3; 0.000004, 6.145402, 0.000004;;,
      16;3; 0.000002, 6.145399, 0.000006;;,
      17;3; 0.000002, 6.145406,-0.000001;;,
      18;3; 0.000005, 6.145399, 0.000005;;,
      19;3;-0.000005, 6.145396, 0.000004;;,
      20;3;-0.000002, 6.145399, 0.000002;;,
      21;3;-0.000000, 6.145408,-0.000007;;,
      22;3; 0.000003, 6.145397, 0.000002;;,
      23;3;-0.000003, 6.145399, 0.000008;;,
      24;3; 0.000004, 6.145392, 0.000006;;,
      25;3;-0.000006, 6.145399, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      1;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      2;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      3;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      4;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      5;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      6;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      7;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      8;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      9;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      10;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      11;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      12;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      13;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      14;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      15;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      16;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      17;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      18;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      19;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      20;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      21;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      22;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      23;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      24;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      25;4;-0.893105, 0.444450,-0.025376, 0.064685;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;11.443206,18.881199, 0.461798;;,
      1;3;11.443201,18.881168, 0.461809;;,
      2;3;11.443198,18.881165, 0.461800;;,
      3;3;11.443199,18.881199, 0.461803;;,
      4;3;11.443209,18.881186, 0.461807;;,
      5;3;11.443202,18.881184, 0.461815;;,
      6;3;11.443206,18.881191, 0.461826;;,
      7;3;11.443203,18.881176, 0.461807;;,
      8;3;11.443195,18.881172, 0.461803;;,
      9;3;11.443201,18.881195, 0.461811;;,
      10;3;11.443203,18.881184, 0.461807;;,
      11;3;11.443203,18.881191, 0.461803;;,
      12;3;11.443203,18.881189, 0.461806;;,
      13;3;11.443207,18.881197, 0.461801;;,
      14;3;11.443195,18.881189, 0.461815;;,
      15;3;11.443209,18.881193, 0.461807;;,
      16;3;11.443203,18.881187, 0.461817;;,
      17;3;11.443203,18.881187, 0.461797;;,
      18;3;11.443199,18.881186, 0.461809;;,
      19;3;11.443204,18.881195, 0.461806;;,
      20;3;11.443206,18.881186, 0.461807;;,
      21;3;11.443205,18.881187, 0.461813;;,
      22;3;11.443201,18.881191, 0.461812;;,
      23;3;11.443206,18.881191, 0.461812;;,
      24;3;11.443202,18.881187, 0.461820;;,
      25;3;11.443206,18.881193, 0.461811;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      1;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      2;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      3;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      4;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      5;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      6;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      7;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      8;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      9;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      10;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      11;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      12;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      13;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      14;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      15;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      16;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      17;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      18;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      19;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      20;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      21;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      22;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      23;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      24;4;-0.802054, 0.597251, 0.000030, 0.001175;;,
      25;4;-0.802054, 0.597251, 0.000030, 0.001175;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000008, 4.919606,-0.000011;;,
      1;3; 0.000005, 4.919597,-0.000008;;,
      2;3; 0.000004, 4.919607, 0.000004;;,
      3;3;-0.000002, 4.919600, 0.000000;;,
      4;3;-0.000000, 4.919598,-0.000019;;,
      5;3;-0.000008, 4.919597, 0.000004;;,
      6;3; 0.000009, 4.919587, 0.000000;;,
      7;3;-0.000005, 4.919603,-0.000013;;,
      8;3; 0.000008, 4.919598, 0.000002;;,
      9;3; 0.000001, 4.919603,-0.000015;;,
      10;3; 0.000011, 4.919603, 0.000004;;,
      11;3;-0.000008, 4.919606,-0.000010;;,
      12;3;-0.000008, 4.919598, 0.000001;;,
      13;3; 0.000008, 4.919594, 0.000007;;,
      14;3;-0.000004, 4.919605,-0.000001;;,
      15;3; 0.000002, 4.919600,-0.000001;;,
      16;3; 0.000002, 4.919601, 0.000013;;,
      17;3; 0.000004, 4.919610, 0.000002;;,
      18;3; 0.000001, 4.919606, 0.000003;;,
      19;3;-0.000000, 4.919599,-0.000002;;,
      20;3;-0.000002, 4.919598,-0.000002;;,
      21;3;-0.000002, 4.919598, 0.000000;;,
      22;3; 0.000004, 4.919595, 0.000000;;,
      23;3; 0.000004, 4.919600,-0.000006;;,
      24;3; 0.000001, 4.919600, 0.000000;;,
      25;3; 0.000008, 4.919600,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      1;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      2;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      3;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      4;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      5;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      6;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      7;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      8;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      9;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      10;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      11;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      12;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      13;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      14;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      15;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      16;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      17;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      18;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      19;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      20;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      21;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      22;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      23;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      24;4;-0.967136, 0.254259, 0.000000, 0.000494;;,
      25;4;-0.967136, 0.254259, 0.000000, 0.000494;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000010, 5.232979,-0.000009;;,
      1;3;-0.000012, 5.233017,-0.000001;;,
      2;3; 0.000005, 5.232990,-0.000003;;,
      3;3;-0.000017, 5.233009,-0.000019;;,
      4;3;-0.000002, 5.232998,-0.000002;;,
      5;3;-0.000002, 5.232986, 0.000001;;,
      6;3;-0.000001, 5.233002,-0.000007;;,
      7;3; 0.000002, 5.232994, 0.000016;;,
      8;3; 0.000007, 5.233007, 0.000008;;,
      9;3; 0.000003, 5.233002, 0.000007;;,
      10;3; 0.000002, 5.233013, 0.000013;;,
      11;3; 0.000011, 5.233013, 0.000003;;,
      12;3; 0.000008, 5.233000,-0.000004;;,
      13;3; 0.000004, 5.233006, 0.000003;;,
      14;3; 0.000004, 5.233007,-0.000002;;,
      15;3;-0.000004, 5.233001,-0.000004;;,
      16;3;-0.000006, 5.232985, 0.000000;;,
      17;3;-0.000003, 5.232993, 0.000004;;,
      18;3; 0.000004, 5.233004, 0.000006;;,
      19;3; 0.000001, 5.233003,-0.000005;;,
      20;3;-0.000003, 5.232995, 0.000002;;,
      21;3; 0.000004, 5.232994,-0.000002;;,
      22;3; 0.000013, 5.232998,-0.000007;;,
      23;3; 0.000003, 5.232996,-0.000008;;,
      24;3;-0.000005, 5.233004,-0.000002;;,
      25;3; 0.000005, 5.232998, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000003, 5.571711,-0.000011;;,
      1;3;-0.000006, 5.571705, 0.000000;;,
      2;3; 0.000003, 5.571690, 0.000011;;,
      3;3;-0.000002, 5.571693, 0.000011;;,
      4;3;-0.000002, 5.571690,-0.000002;;,
      5;3; 0.000002, 5.571692, 0.000008;;,
      6;3; 0.000008, 5.571682, 0.000008;;,
      7;3; 0.000003, 5.571693, 0.000005;;,
      8;3;-0.000004, 5.571709, 0.000001;;,
      9;3; 0.000000, 5.571699,-0.000001;;,
      10;3;-0.000006, 5.571698, 0.000007;;,
      11;3;-0.000004, 5.571686, 0.000002;;,
      12;3; 0.000004, 5.571710, 0.000011;;,
      13;3;-0.000002, 5.571686, 0.000000;;,
      14;3;-0.000006, 5.571712,-0.000004;;,
      15;3; 0.000004, 5.571703,-0.000005;;,
      16;3;-0.000006, 5.571705, 0.000001;;,
      17;3; 0.000001, 5.571699, 0.000005;;,
      18;3; 0.000005, 5.571696,-0.000010;;,
      19;3; 0.000001, 5.571700, 0.000000;;,
      20;3; 0.000002, 5.571697,-0.000003;;,
      21;3; 0.000005, 5.571698, 0.000004;;,
      22;3; 0.000009, 5.571696,-0.000000;;,
      23;3; 0.000001, 5.571695,-0.000005;;,
      24;3;-0.000005, 5.571701,-0.000003;;,
      25;3; 0.000001, 5.571699, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.704999, 0.412134,-0.532210, 0.223325;;,
      1;4;-0.702742, 0.413623,-0.532563, 0.226817;;,
      2;4;-0.701753, 0.418066,-0.529443, 0.229029;;,
      3;4;-0.701010, 0.421832,-0.526649, 0.230833;;,
      4;4;-0.699724, 0.420732,-0.528415, 0.232698;;,
      5;4;-0.697160, 0.419181,-0.531486, 0.236174;;,
      6;4;-0.694409, 0.417250,-0.534973, 0.239795;;,
      7;4;-0.692482, 0.413154,-0.539801, 0.241633;;,
      8;4;-0.690640, 0.409055,-0.544517, 0.243293;;,
      9;4;-0.688954, 0.404793,-0.549210, 0.244650;;,
      10;4;-0.686468, 0.401391,-0.553555, 0.247434;;,
      11;4;-0.682183, 0.399902,-0.557240, 0.253353;;,
      12;4;-0.675192, 0.401647,-0.559690, 0.263709;;,
      13;4;-0.664660, 0.406107,-0.561510, 0.279302;;,
      14;4;-0.647901, 0.413555,-0.563298, 0.303137;;,
      15;4;-0.637486, 0.420573,-0.561210, 0.319019;;,
      16;4;-0.628332, 0.427591,-0.557937, 0.333273;;,
      17;4;-0.620737, 0.434426,-0.553651, 0.345587;;,
      18;4;-0.615005, 0.440910,-0.548522, 0.355656;;,
      19;4;-0.611435, 0.446889,-0.542718, 0.363173;;,
      20;4;-0.610309, 0.452227,-0.536405, 0.367809;;,
      21;4;-0.611881, 0.456798,-0.529745, 0.369199;;,
      22;4;-0.618603, 0.460118,-0.522164, 0.364645;;,
      23;4;-0.630463, 0.462261,-0.513382, 0.353935;;,
      24;4;-0.644041, 0.463944,-0.504022, 0.340483;;,
      25;4;-0.656223, 0.465836,-0.494767, 0.327985;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-17.399504,24.614298, 1.157900;;,
      1;3;-17.399502,24.614298, 1.157904;;,
      2;3;-17.399498,24.614307, 1.157905;;,
      3;3;-17.399504,24.614313, 1.157900;;,
      4;3;-17.399504,24.614302, 1.157909;;,
      5;3;-17.399502,24.614307, 1.157898;;,
      6;3;-17.399502,24.614313, 1.157897;;,
      7;3;-17.399504,24.614286, 1.157903;;,
      8;3;-17.399498,24.614304, 1.157897;;,
      9;3;-17.399498,24.614300, 1.157898;;,
      10;3;-17.399504,24.614305, 1.157903;;,
      11;3;-17.399504,24.614300, 1.157904;;,
      12;3;-17.399502,24.614307, 1.157910;;,
      13;3;-17.399502,24.614305, 1.157897;;,
      14;3;-17.399500,24.614294, 1.157902;;,
      15;3;-17.399502,24.614298, 1.157895;;,
      16;3;-17.399504,24.614294, 1.157901;;,
      17;3;-17.399502,24.614313, 1.157890;;,
      18;3;-17.399502,24.614298, 1.157894;;,
      19;3;-17.399502,24.614307, 1.157894;;,
      20;3;-17.399502,24.614313, 1.157899;;,
      21;3;-17.399504,24.614300, 1.157898;;,
      22;3;-17.399500,24.614300, 1.157900;;,
      23;3;-17.399500,24.614298, 1.157898;;,
      24;3;-17.399502,24.614313, 1.157892;;,
      25;3;-17.399500,24.614300, 1.157915;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.949490, 0.224544, 0.216660, 0.033265;;,
      1;4;-0.951381, 0.229424, 0.201798, 0.038950;;,
      2;4;-0.953378, 0.232545, 0.187498, 0.042879;;,
      3;4;-0.954865, 0.235892, 0.174210, 0.047317;;,
      4;4;-0.954920, 0.241602, 0.163490, 0.055026;;,
      5;4;-0.954555, 0.247944, 0.152672, 0.063565;;,
      6;4;-0.954468, 0.255138, 0.136644, 0.072275;;,
      7;4;-0.954409, 0.262721, 0.115942, 0.081479;;,
      8;4;-0.953818, 0.270622, 0.090768, 0.093575;;,
      9;4;-0.952091, 0.279391, 0.064264, 0.106463;;,
      10;4;-0.949371, 0.287921, 0.035194, 0.120654;;,
      11;4;-0.945948, 0.300140, 0.007876, 0.122622;;,
      12;4;-0.940950, 0.320085,-0.018035, 0.108778;;,
      13;4;-0.932500, 0.348469,-0.044055, 0.084093;;,
      14;4;-0.919745, 0.382519,-0.072090, 0.050505;;,
      15;4;-0.906734, 0.418135,-0.054708, 0.001788;;,
      16;4;-0.892412, 0.448813,-0.029310,-0.036183;;,
      17;4;-0.877008, 0.476296, 0.001956,-0.063198;;,
      18;4;-0.859687, 0.502196, 0.038080,-0.085363;;,
      19;4;-0.843044, 0.522484, 0.076168,-0.102396;;,
      20;4;-0.830171, 0.533850, 0.113773,-0.113473;;,
      21;4;-0.823273, 0.535731, 0.147818,-0.115599;;,
      22;4;-0.815778, 0.534271, 0.186615,-0.119314;;,
      23;4;-0.800582, 0.541039, 0.227303,-0.121156;;,
      24;4;-0.784274, 0.556641, 0.252542,-0.106239;;,
      25;4;-0.775929, 0.569120, 0.262405,-0.071971;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000003,19.910408, 0.000000;;,
      1;3; 0.000008,19.910408,-0.000006;;,
      2;3;-0.000001,19.910406,-0.000002;;,
      3;3;-0.000010,19.910404, 0.000006;;,
      4;3;-0.000007,19.910410,-0.000002;;,
      5;3;-0.000002,19.910404, 0.000011;;,
      6;3;-0.000008,19.910395, 0.000021;;,
      7;3; 0.000005,19.910398, 0.000002;;,
      8;3;-0.000002,19.910406, 0.000004;;,
      9;3;-0.000004,19.910412, 0.000011;;,
      10;3; 0.000009,19.910397, 0.000004;;,
      11;3; 0.000004,19.910400, 0.000004;;,
      12;3; 0.000002,19.910410,-0.000004;;,
      13;3; 0.000002,19.910404,-0.000004;;,
      14;3; 0.000010,19.910402, 0.000008;;,
      15;3;-0.000018,19.910416, 0.000000;;,
      16;3; 0.000015,19.910406, 0.000006;;,
      17;3;-0.000008,19.910404, 0.000005;;,
      18;3; 0.000005,19.910402,-0.000007;;,
      19;3;-0.000001,19.910404, 0.000013;;,
      20;3;-0.000012,19.910404, 0.000001;;,
      21;3; 0.000009,19.910404,-0.000012;;,
      22;3;-0.000003,19.910400, 0.000006;;,
      23;3;-0.000001,19.910404,-0.000006;;,
      24;3; 0.000001,19.910404,-0.000010;;,
      25;3;-0.000008,19.910402,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.936559, 0.094864, 0.176508,-0.287582;;,
      1;4;-0.933185, 0.099085, 0.179054,-0.295444;;,
      2;4;-0.930436, 0.102867, 0.180722,-0.301741;;,
      3;4;-0.927303, 0.106909, 0.182011,-0.309114;;,
      4;4;-0.922337, 0.112185, 0.183026,-0.321262;;,
      5;4;-0.918170, 0.115677, 0.181658,-0.332541;;,
      6;4;-0.914918, 0.117933, 0.177913,-0.342585;;,
      7;4;-0.907370, 0.123548, 0.176800,-0.360773;;,
      8;4;-0.895190, 0.130988, 0.177412,-0.387302;;,
      9;4;-0.880486, 0.139533, 0.178370,-0.416485;;,
      10;4;-0.861984, 0.148422, 0.180267,-0.449953;;,
      11;4;-0.840242, 0.156399, 0.184133,-0.485414;;,
      12;4;-0.811611, 0.165610, 0.193240,-0.525850;;,
      13;4;-0.779184, 0.172910, 0.202135,-0.567552;;,
      14;4;-0.749298, 0.168116, 0.205073,-0.606823;;,
      15;4;-0.739429, 0.155047, 0.200154,-0.623814;;,
      16;4;-0.733355, 0.138167, 0.192512,-0.637212;;,
      17;4;-0.732198, 0.118845, 0.182940,-0.645209;;,
      18;4;-0.735989, 0.098270, 0.172451,-0.647244;;,
      19;4;-0.740706, 0.078174, 0.161611,-0.647399;;,
      20;4;-0.742456, 0.060644, 0.150646,-0.649913;;,
      21;4;-0.739049, 0.047930, 0.139653,-0.657272;;,
      22;4;-0.738854, 0.042072, 0.127577,-0.660339;;,
      23;4;-0.744055, 0.041832, 0.114177,-0.656959;;,
      24;4;-0.746831, 0.043340, 0.101043,-0.655862;;,
      25;4;-0.744792, 0.044973, 0.089478,-0.659739;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000008,49.301300, 0.000028;;,
      1;3; 0.000006,49.301300, 0.000039;;,
      2;3;-0.000011,49.301304, 0.000022;;,
      3;3; 0.000000,49.301296, 0.000027;;,
      4;3; 0.000002,49.301311, 0.000002;;,
      5;3;-0.000001,49.301296, 0.000015;;,
      6;3; 0.000007,49.301311, 0.000001;;,
      7;3;-0.000002,49.301308, 0.000018;;,
      8;3;-0.000003,49.301311, 0.000014;;,
      9;3; 0.000002,49.301308, 0.000015;;,
      10;3;-0.000006,49.301304, 0.000018;;,
      11;3;-0.000006,49.301300, 0.000016;;,
      12;3;-0.000008,49.301304, 0.000030;;,
      13;3;-0.000010,49.301308, 0.000008;;,
      14;3; 0.000007,49.301300, 0.000008;;,
      15;3; 0.000005,49.301308, 0.000014;;,
      16;3;-0.000001,49.301300, 0.000024;;,
      17;3;-0.000006,49.301296, 0.000021;;,
      18;3;-0.000003,49.301308, 0.000010;;,
      19;3; 0.000002,49.301311, 0.000030;;,
      20;3; 0.000003,49.301300, 0.000015;;,
      21;3; 0.000003,49.301300, 0.000023;;,
      22;3;-0.000005,49.301296, 0.000023;;,
      23;3; 0.000003,49.301315, 0.000017;;,
      24;3; 0.000002,49.301296, 0.000025;;,
      25;3;-0.000003,49.301315, 0.000021;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.987254, 0.019683,-0.013525,-0.157351;;,
      1;4;-0.987940, 0.018209,-0.011239,-0.153350;;,
      2;4;-0.988472, 0.018558,-0.009608,-0.149957;;,
      3;4;-0.988940, 0.019246,-0.008162,-0.146834;;,
      4;4;-0.989382, 0.019125,-0.006590,-0.143921;;,
      5;4;-0.989830, 0.018400,-0.004547,-0.140989;;,
      6;4;-0.990223, 0.016556,-0.002835,-0.138479;;,
      7;4;-0.990703, 0.012090,-0.001801,-0.135490;;,
      8;4;-0.991259, 0.007852,-0.000089,-0.131694;;,
      9;4;-0.991798, 0.003566, 0.001905,-0.127753;;,
      10;4;-0.992468, 0.000105, 0.004310,-0.122428;;,
      11;4;-0.993399,-0.001671, 0.007255,-0.114468;;,
      12;4;-0.994660,-0.000294, 0.011200,-0.102599;;,
      13;4;-0.996168, 0.002545, 0.015459,-0.086043;;,
      14;4;-0.997872, 0.005014, 0.019148,-0.062133;;,
      15;4;-0.998567, 0.008894, 0.019633,-0.048989;;,
      16;4;-0.999012, 0.012919, 0.019067,-0.038018;;,
      17;4;-0.999252, 0.017342, 0.017643,-0.029725;;,
      18;4;-0.999325, 0.022390, 0.015560,-0.024608;;,
      19;4;-0.999247, 0.028273, 0.013032,-0.023168;;,
      20;4;-0.998992, 0.035179, 0.010299,-0.025904;;,
      21;4;-0.998478, 0.043277, 0.007639,-0.033312;;,
      22;4;-0.997344, 0.053342, 0.004977,-0.049352;;,
      23;4;-0.995117, 0.065086, 0.002471,-0.074165;;,
      24;4;-0.991737, 0.077160, 0.000595,-0.102485;;,
      25;4;-0.987688, 0.088431,-0.000550,-0.129044;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000008,31.604988,-0.000004;;,
      1;3; 0.000010,31.604996, 0.000013;;,
      2;3;-0.000003,31.604998,-0.000008;;,
      3;3;-0.000001,31.605000, 0.000004;;,
      4;3;-0.000011,31.605000,-0.000023;;,
      5;3;-0.000007,31.604996, 0.000008;;,
      6;3;-0.000000,31.604988, 0.000017;;,
      7;3; 0.000000,31.604984,-0.000004;;,
      8;3; 0.000000,31.604992, 0.000000;;,
      9;3;-0.000005,31.604992,-0.000008;;,
      10;3;-0.000003,31.604982,-0.000005;;,
      11;3;-0.000004,31.604998, 0.000008;;,
      12;3;-0.000003,31.604986, 0.000005;;,
      13;3; 0.000002,31.604982,-0.000007;;,
      14;3;-0.000007,31.604996, 0.000008;;,
      15;3;-0.000008,31.604996,-0.000009;;,
      16;3; 0.000000,31.604994,-0.000014;;,
      17;3;-0.000006,31.604992,-0.000002;;,
      18;3; 0.000000,31.604994, 0.000007;;,
      19;3; 0.000000,31.604996,-0.000002;;,
      20;3;-0.000004,31.605005, 0.000012;;,
      21;3; 0.000013,31.604988, 0.000014;;,
      22;3; 0.000006,31.604986, 0.000004;;,
      23;3;-0.000002,31.604990,-0.000001;;,
      24;3;-0.000005,31.604988, 0.000006;;,
      25;3; 0.000005,31.604988,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      1;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      2;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      3;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      4;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      5;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      6;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      7;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      8;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      9;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      10;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      11;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      12;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      13;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      14;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      15;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      16;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      17;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      18;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      19;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      20;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      21;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      22;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      23;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      24;4;-0.880697, 0.461236,-0.107833,-0.002330;;,
      25;4;-0.880697, 0.461236,-0.107833,-0.002330;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 7.059700, 6.094006, 4.396984;;,
      1;3; 7.059689, 6.093994, 4.396990;;,
      2;3; 7.059704, 6.094002, 4.397009;;,
      3;3; 7.059700, 6.093994, 4.397003;;,
      4;3; 7.059711, 6.094002, 4.396988;;,
      5;3; 7.059703, 6.093998, 4.396975;;,
      6;3; 7.059703, 6.093998, 4.396990;;,
      7;3; 7.059704, 6.094002, 4.396992;;,
      8;3; 7.059708, 6.094002, 4.396992;;,
      9;3; 7.059709, 6.094006, 4.396984;;,
      10;3; 7.059699, 6.094004, 4.396990;;,
      11;3; 7.059710, 6.093990, 4.396969;;,
      12;3; 7.059715, 6.093980, 4.396992;;,
      13;3; 7.059701, 6.093992, 4.397002;;,
      14;3; 7.059697, 6.094004, 4.396989;;,
      15;3; 7.059702, 6.093996, 4.397002;;,
      16;3; 7.059704, 6.094001, 4.396989;;,
      17;3; 7.059700, 6.093998, 4.396986;;,
      18;3; 7.059698, 6.094002, 4.396986;;,
      19;3; 7.059702, 6.093991, 4.396982;;,
      20;3; 7.059711, 6.094002, 4.396993;;,
      21;3; 7.059706, 6.094000, 4.396994;;,
      22;3; 7.059704, 6.093993, 4.397005;;,
      23;3; 7.059710, 6.093994, 4.396996;;,
      24;3; 7.059705, 6.093996, 4.396996;;,
      25;3; 7.059702, 6.093997, 4.396992;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      1;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      2;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      3;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      4;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      5;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      6;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      7;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      8;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      9;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      10;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      11;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      12;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      13;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      14;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      15;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      16;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      17;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      18;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      19;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      20;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      21;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      22;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      23;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      24;4;-0.982943,-0.096950,-0.155727,-0.013149;;,
      25;4;-0.982943,-0.096950,-0.155727,-0.013149;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000006, 7.536305, 0.000003;;,
      1;3; 0.000001, 7.536306,-0.000010;;,
      2;3; 0.000007, 7.536313, 0.000007;;,
      3;3; 0.000005, 7.536295, 0.000002;;,
      4;3;-0.000013, 7.536295,-0.000019;;,
      5;3;-0.000002, 7.536307, 0.000009;;,
      6;3; 0.000004, 7.536308, 0.000009;;,
      7;3;-0.000005, 7.536307,-0.000000;;,
      8;3; 0.000004, 7.536294,-0.000005;;,
      9;3; 0.000009, 7.536303,-0.000006;;,
      10;3; 0.000002, 7.536302, 0.000005;;,
      11;3; 0.000004, 7.536304,-0.000004;;,
      12;3; 0.000000, 7.536310, 0.000004;;,
      13;3;-0.000015, 7.536309,-0.000009;;,
      14;3;-0.000000, 7.536288, 0.000002;;,
      15;3;-0.000007, 7.536309, 0.000004;;,
      16;3; 0.000011, 7.536308,-0.000004;;,
      17;3;-0.000002, 7.536307,-0.000005;;,
      18;3;-0.000004, 7.536301, 0.000007;;,
      19;3;-0.000013, 7.536302, 0.000009;;,
      20;3; 0.000002, 7.536308, 0.000012;;,
      21;3;-0.000002, 7.536304, 0.000020;;,
      22;3; 0.000007, 7.536310,-0.000000;;,
      23;3; 0.000005, 7.536300,-0.000003;;,
      24;3; 0.000003, 7.536309, 0.000001;;,
      25;3; 0.000000, 7.536304, 0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      1;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      2;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      3;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      4;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      5;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      6;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      7;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      8;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      9;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      10;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      11;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      12;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      13;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      14;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      15;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      16;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      17;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      18;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      19;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      20;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      21;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      22;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      23;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      24;4;-0.973173,-0.128278, 0.135646, 0.134461;;,
      25;4;-0.973173,-0.128278, 0.135646, 0.134461;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000, 7.512693,-0.000010;;,
      1;3;-0.000000, 7.512692,-0.000008;;,
      2;3; 0.000000, 7.512699, 0.000006;;,
      3;3; 0.000005, 7.512692, 0.000006;;,
      4;3; 0.000002, 7.512711, 0.000000;;,
      5;3;-0.000004, 7.512691,-0.000002;;,
      6;3; 0.000000, 7.512687, 0.000002;;,
      7;3;-0.000006, 7.512699, 0.000004;;,
      8;3;-0.000005, 7.512688, 0.000000;;,
      9;3; 0.000003, 7.512702, 0.000004;;,
      10;3; 0.000004, 7.512695, 0.000008;;,
      11;3; 0.000000, 7.512699,-0.000008;;,
      12;3; 0.000002, 7.512696, 0.000000;;,
      13;3;-0.000007, 7.512701, 0.000006;;,
      14;3;-0.000004, 7.512697,-0.000008;;,
      15;3; 0.000005, 7.512699, 0.000000;;,
      16;3; 0.000002, 7.512703,-0.000006;;,
      17;3; 0.000010, 7.512703, 0.000002;;,
      18;3; 0.000002, 7.512703, 0.000000;;,
      19;3; 0.000009, 7.512691,-0.000006;;,
      20;3; 0.000001, 7.512690,-0.000004;;,
      21;3;-0.000008, 7.512699, 0.000004;;,
      22;3; 0.000002, 7.512695,-0.000004;;,
      23;3;-0.000004, 7.512690,-0.000001;;,
      24;3;-0.000001, 7.512693, 0.000003;;,
      25;3;-0.000001, 7.512697, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb4}
    AnimationKey { // Rotation
      0;
      26;
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
      25;4;-1.000000, 0.000001,-0.000001,-0.000001;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000001,10.212722, 0.000008;;,
      1;3; 0.000006,10.212719, 0.000000;;,
      2;3;-0.000016,10.212726, 0.000000;;,
      3;3; 0.000004,10.212720, 0.000000;;,
      4;3;-0.000004,10.212729, 0.000015;;,
      5;3;-0.000002,10.212729, 0.000000;;,
      6;3; 0.000000,10.212727,-0.000004;;,
      7;3;-0.000010,10.212729,-0.000011;;,
      8;3;-0.000012,10.212718, 0.000011;;,
      9;3; 0.000000,10.212721, 0.000015;;,
      10;3;-0.000005,10.212719, 0.000008;;,
      11;3; 0.000000,10.212734, 0.000019;;,
      12;3;-0.000010,10.212723, 0.000000;;,
      13;3; 0.000006,10.212729, 0.000008;;,
      14;3;-0.000002,10.212730, 0.000000;;,
      15;3; 0.000005,10.212723, 0.000010;;,
      16;3;-0.000004,10.212724,-0.000006;;,
      17;3; 0.000002,10.212718, 0.000004;;,
      18;3; 0.000008,10.212719, 0.000004;;,
      19;3; 0.000006,10.212730,-0.000004;;,
      20;3;-0.000002,10.212729,-0.000002;;,
      21;3; 0.000006,10.212721,-0.000002;;,
      22;3;-0.000006,10.212726,-0.000008;;,
      23;3; 0.000005,10.212721, 0.000000;;,
      24;3;-0.000001,10.212726,-0.000014;;,
      25;3; 0.000001,10.212725,-0.000012;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      1;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      2;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      3;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      4;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      5;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      6;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      7;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      8;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      9;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      10;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      11;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      12;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      13;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      14;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      15;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      16;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      17;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      18;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      19;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      20;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      21;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      22;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      23;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      24;4;-0.859332, 0.510740, 0.014099, 0.022250;;,
      25;4;-0.859332, 0.510740, 0.014099, 0.022250;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 6.192900,21.271000, 0.499001;;,
      1;3; 6.192891,21.270988, 0.499001;;,
      2;3; 6.192902,21.271004, 0.499020;;,
      3;3; 6.192902,21.270992, 0.499016;;,
      4;3; 6.192907,21.271004, 0.498995;;,
      5;3; 6.192904,21.270992, 0.498993;;,
      6;3; 6.192902,21.271000, 0.498991;;,
      7;3; 6.192899,21.271000, 0.499004;;,
      8;3; 6.192904,21.271008, 0.498997;;,
      9;3; 6.192907,21.271008, 0.498997;;,
      10;3; 6.192898,21.270994, 0.499001;;,
      11;3; 6.192913,21.270985, 0.498978;;,
      12;3; 6.192911,21.270975, 0.498997;;,
      13;3; 6.192894,21.270994, 0.499018;;,
      14;3; 6.192899,21.270996, 0.499001;;,
      15;3; 6.192902,21.271000, 0.499008;;,
      16;3; 6.192894,21.271000, 0.498995;;,
      17;3; 6.192898,21.270996, 0.499001;;,
      18;3; 6.192909,21.270994, 0.499002;;,
      19;3; 6.192896,21.270990, 0.498992;;,
      20;3; 6.192911,21.271006, 0.499001;;,
      21;3; 6.192904,21.270996, 0.499001;;,
      22;3; 6.192904,21.270992, 0.499016;;,
      23;3; 6.192907,21.270990, 0.499005;;,
      24;3; 6.192899,21.271000, 0.499004;;,
      25;3; 6.192900,21.271000, 0.499002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      1;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      2;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      3;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      4;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      5;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      6;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      7;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      8;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      9;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      10;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      11;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      12;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      13;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      14;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      15;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      16;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      17;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      18;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      19;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      20;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      21;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      22;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      23;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      24;4;-0.835148, 0.548662,-0.021102,-0.032456;;,
      25;4;-0.835148, 0.548662,-0.021102,-0.032456;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000002, 7.536004,-0.000006;;,
      1;3;-0.000010, 7.535972,-0.000001;;,
      2;3;-0.000002, 7.535998,-0.000008;;,
      3;3; 0.000002, 7.535998,-0.000009;;,
      4;3;-0.000003, 7.535995,-0.000005;;,
      5;3; 0.000002, 7.536001, 0.000001;;,
      6;3; 0.000010, 7.535996, 0.000004;;,
      7;3; 0.000007, 7.536005,-0.000004;;,
      8;3;-0.000007, 7.535987, 0.000007;;,
      9;3; 0.000006, 7.535998, 0.000017;;,
      10;3; 0.000000, 7.535992, 0.000000;;,
      11;3; 0.000008, 7.536002,-0.000005;;,
      12;3;-0.000009, 7.535991,-0.000011;;,
      13;3;-0.000005, 7.535997, 0.000008;;,
      14;3; 0.000006, 7.536014,-0.000011;;,
      15;3;-0.000004, 7.536004,-0.000004;;,
      16;3;-0.000004, 7.535990, 0.000000;;,
      17;3;-0.000004, 7.536003,-0.000002;;,
      18;3;-0.000006, 7.536005, 0.000004;;,
      19;3; 0.000000, 7.535991,-0.000010;;,
      20;3;-0.000011, 7.535995, 0.000002;;,
      21;3;-0.000013, 7.535997,-0.000002;;,
      22;3;-0.000011, 7.536004, 0.000000;;,
      23;3; 0.000010, 7.535995,-0.000005;;,
      24;3;-0.000005, 7.535997, 0.000007;;,
      25;3;-0.000001, 7.535996,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      1;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      2;4;-0.868289, 0.495770,-0.012686, 0.011160;;,
      3;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      4;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      5;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      6;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      7;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      8;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      9;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      10;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      11;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      12;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      13;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      14;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      15;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      16;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      17;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      18;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      19;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      20;4;-0.868289, 0.495770,-0.012686, 0.011160;;,
      21;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      22;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      23;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      24;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      25;4;-0.868290, 0.495770,-0.012686, 0.011160;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000006, 7.512980,-0.000004;;,
      1;3;-0.000005, 7.512985, 0.000008;;,
      2;3;-0.000006, 7.513010, 0.000004;;,
      3;3;-0.000003, 7.513012,-0.000007;;,
      4;3; 0.000004, 7.513008, 0.000000;;,
      5;3; 0.000006, 7.512983,-0.000004;;,
      6;3; 0.000000, 7.513010, 0.000010;;,
      7;3;-0.000008, 7.513021, 0.000004;;,
      8;3;-0.000002, 7.513000, 0.000011;;,
      9;3; 0.000000, 7.513016, 0.000010;;,
      10;3; 0.000006, 7.513012, 0.000000;;,
      11;3;-0.000008, 7.512999, 0.000010;;,
      12;3;-0.000006, 7.513000, 0.000002;;,
      13;3;-0.000001, 7.512992,-0.000002;;,
      14;3; 0.000006, 7.513000, 0.000002;;,
      15;3;-0.000008, 7.513002,-0.000004;;,
      16;3; 0.000010, 7.513004,-0.000010;;,
      17;3;-0.000010, 7.512991,-0.000010;;,
      18;3; 0.000000, 7.512997, 0.000000;;,
      19;3; 0.000011, 7.513003, 0.000004;;,
      20;3; 0.000002, 7.513009, 0.000004;;,
      21;3; 0.000003, 7.513009,-0.000006;;,
      22;3;-0.000001, 7.512996,-0.000002;;,
      23;3; 0.000008, 7.513005,-0.000002;;,
      24;3; 0.000005, 7.513004, 0.000006;;,
      25;3; 0.000004, 7.513004, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000004,10.212006, 0.000004;;,
      1;3;-0.000001,10.212013,-0.000008;;,
      2;3;-0.000002,10.212006, 0.000000;;,
      3;3; 0.000004,10.212009, 0.000008;;,
      4;3;-0.000003,10.212006, 0.000008;;,
      5;3;-0.000001,10.212009, 0.000004;;,
      6;3; 0.000000,10.212009, 0.000011;;,
      7;3;-0.000003,10.211998,-0.000002;;,
      8;3; 0.000000,10.212006,-0.000006;;,
      9;3;-0.000002,10.212000, 0.000002;;,
      10;3;-0.000003,10.212009,-0.000023;;,
      11;3; 0.000000,10.212013,-0.000006;;,
      12;3; 0.000008,10.212004,-0.000008;;,
      13;3; 0.000002,10.212008,-0.000002;;,
      14;3; 0.000002,10.212005, 0.000002;;,
      15;3;-0.000002,10.212016,-0.000009;;,
      16;3;-0.000004,10.212007,-0.000002;;,
      17;3;-0.000004,10.211997, 0.000000;;,
      18;3; 0.000000,10.212011,-0.000008;;,
      19;3; 0.000010,10.212014,-0.000006;;,
      20;3; 0.000011,10.212005,-0.000002;;,
      21;3; 0.000006,10.212004,-0.000002;;,
      22;3;-0.000005,10.212008, 0.000000;;,
      23;3; 0.000003,10.212008,-0.000003;;,
      24;3; 0.000000,10.212010,-0.000002;;,
      25;3;-0.000005,10.212012,-0.000009;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      1;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      2;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      3;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      4;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      5;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      6;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      7;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      8;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      9;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      10;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      11;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      12;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      13;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      14;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      15;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      16;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      17;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      18;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      19;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      20;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      21;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      22;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      23;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      24;4;-0.827539, 0.561301, 0.009658,-0.005203;;,
      25;4;-0.827539, 0.561301, 0.009658,-0.005203;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.016504,23.333996, 0.008995;;,
      1;3;-0.016512,23.333988, 0.008991;;,
      2;3;-0.016506,23.333996, 0.009010;;,
      3;3;-0.016495,23.333984, 0.009008;;,
      4;3;-0.016498,23.334000, 0.008986;;,
      5;3;-0.016504,23.333988, 0.008976;;,
      6;3;-0.016503,23.333988, 0.008980;;,
      7;3;-0.016497,23.334000, 0.008999;;,
      8;3;-0.016502,23.334003, 0.008997;;,
      9;3;-0.016493,23.334000, 0.008984;;,
      10;3;-0.016502,23.333994, 0.008993;;,
      11;3;-0.016493,23.333988, 0.008974;;,
      12;3;-0.016491,23.333979, 0.008986;;,
      13;3;-0.016499,23.333986, 0.009009;;,
      14;3;-0.016494,23.333996, 0.008999;;,
      15;3;-0.016499,23.333996, 0.009007;;,
      16;3;-0.016502,23.333992, 0.008986;;,
      17;3;-0.016502,23.333996, 0.008999;;,
      18;3;-0.016495,23.333990, 0.008992;;,
      19;3;-0.016502,23.333984, 0.008984;;,
      20;3;-0.016493,23.333992, 0.008995;;,
      21;3;-0.016495,23.334000, 0.008999;;,
      22;3;-0.016500,23.333977, 0.009009;;,
      23;3;-0.016498,23.333982, 0.009001;;,
      24;3;-0.016496,23.333988, 0.008996;;,
      25;3;-0.016498,23.333988, 0.008997;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      1;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      2;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      3;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      4;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      5;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      6;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      7;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      8;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      9;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      10;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      11;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      12;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      13;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      14;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      15;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      16;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      17;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      18;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      19;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      20;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      21;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      22;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      23;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      24;4;-0.739551, 0.671716,-0.028230,-0.032636;;,
      25;4;-0.739551, 0.671716,-0.028230,-0.032636;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000004, 6.996988, 0.000010;;,
      1;3;-0.000013, 6.996999, 0.000005;;,
      2;3; 0.000002, 6.996987, 0.000010;;,
      3;3;-0.000005, 6.996978, 0.000002;;,
      4;3; 0.000000, 6.996998, 0.000006;;,
      5;3;-0.000001, 6.997007, 0.000011;;,
      6;3; 0.000005, 6.996986, 0.000019;;,
      7;3;-0.000003, 6.996995, 0.000008;;,
      8;3; 0.000003, 6.996996,-0.000004;;,
      9;3; 0.000009, 6.997011,-0.000013;;,
      10;3; 0.000002, 6.996992, 0.000004;;,
      11;3; 0.000008, 6.996998, 0.000008;;,
      12;3; 0.000000, 6.997002, 0.000002;;,
      13;3; 0.000002, 6.996984, 0.000000;;,
      14;3;-0.000006, 6.996981, 0.000004;;,
      15;3; 0.000000, 6.996981, 0.000000;;,
      16;3; 0.000000, 6.996992,-0.000004;;,
      17;3; 0.000008, 6.997005, 0.000000;;,
      18;3; 0.000004, 6.996998, 0.000002;;,
      19;3; 0.000004, 6.997002, 0.000002;;,
      20;3;-0.000004, 6.996982, 0.000000;;,
      21;3;-0.000006, 6.996990, 0.000006;;,
      22;3;-0.000006, 6.996992, 0.000003;;,
      23;3;-0.000006, 6.996997, 0.000011;;,
      24;3;-0.000001, 6.996995, 0.000004;;,
      25;3; 0.000000, 6.996987, 0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      1;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      2;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      3;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      4;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      5;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      6;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      7;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      8;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      9;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      10;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      11;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      12;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      13;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      14;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      15;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      16;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      17;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      18;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      19;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      20;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      21;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      22;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      23;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      24;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      25;4;-0.959454, 0.281525,-0.004263, 0.013211;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000013, 7.016021, 0.000013;;,
      1;3;-0.000006, 7.016004,-0.000003;;,
      2;3; 0.000000, 7.015998, 0.000003;;,
      3;3;-0.000008, 7.016012,-0.000003;;,
      4;3; 0.000005, 7.016019,-0.000003;;,
      5;3; 0.000001, 7.016024, 0.000001;;,
      6;3;-0.000007, 7.016000,-0.000008;;,
      7;3;-0.000010, 7.016008, 0.000003;;,
      8;3; 0.000006, 7.016011,-0.000005;;,
      9;3; 0.000000, 7.016019,-0.000003;;,
      10;3;-0.000023, 7.016002, 0.000010;;,
      11;3; 0.000002, 7.015999, 0.000000;;,
      12;3; 0.000004, 7.016001, 0.000000;;,
      13;3;-0.000004, 7.016008,-0.000008;;,
      14;3; 0.000004, 7.016008, 0.000002;;,
      15;3; 0.000006, 7.016016,-0.000010;;,
      16;3;-0.000004, 7.016006, 0.000000;;,
      17;3; 0.000002, 7.016005, 0.000006;;,
      18;3; 0.000004, 7.016005, 0.000003;;,
      19;3; 0.000004, 7.016008,-0.000006;;,
      20;3;-0.000006, 7.016018, 0.000000;;,
      21;3; 0.000008, 7.016001,-0.000001;;,
      22;3; 0.000001, 7.016005, 0.000000;;,
      23;3; 0.000007, 7.015994, 0.000000;;,
      24;3; 0.000004, 7.016016,-0.000002;;,
      25;3;-0.000008, 7.016008,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000005, 7.720997, 0.000008;;,
      1;3; 0.000001, 7.721004, 0.000010;;,
      2;3;-0.000004, 7.720985, 0.000013;;,
      3;3; 0.000004, 7.720997, 0.000006;;,
      4;3;-0.000010, 7.720985, 0.000006;;,
      5;3; 0.000008, 7.720989, 0.000013;;,
      6;3; 0.000004, 7.720997,-0.000019;;,
      7;3;-0.000005, 7.720989,-0.000006;;,
      8;3; 0.000006, 7.720997,-0.000010;;,
      9;3; 0.000000, 7.720985,-0.000008;;,
      10;3;-0.000006, 7.720995,-0.000012;;,
      11;3;-0.000010, 7.720995, 0.000001;;,
      12;3; 0.000001, 7.720985,-0.000006;;,
      13;3;-0.000004, 7.720990, 0.000007;;,
      14;3;-0.000006, 7.720993, 0.000005;;,
      15;3;-0.000004, 7.720994,-0.000010;;,
      16;3; 0.000002, 7.720985,-0.000002;;,
      17;3; 0.000006, 7.720990, 0.000003;;,
      18;3; 0.000002, 7.720998,-0.000003;;,
      19;3;-0.000002, 7.720996, 0.000003;;,
      20;3; 0.000004, 7.720986, 0.000002;;,
      21;3; 0.000010, 7.720997,-0.000001;;,
      22;3; 0.000003, 7.720993,-0.000004;;,
      23;3;-0.000001, 7.720999, 0.000002;;,
      24;3; 0.000003, 7.721000, 0.000005;;,
      25;3; 0.000007, 7.720987, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      1;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      2;4;-0.769967, 0.636768, 0.019998, 0.035747;;,
      3;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      4;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      5;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      6;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      7;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      8;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      9;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      10;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      11;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      12;4;-0.769967, 0.636768, 0.019998, 0.035747;;,
      13;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      14;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      15;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      16;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      17;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      18;4;-0.769967, 0.636768, 0.019998, 0.035747;;,
      19;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      20;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      21;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      22;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      23;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      24;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      25;4;-0.769967, 0.636768, 0.019998, 0.035746;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-6.516903,22.685997, 0.103985;;,
      1;3;-6.516913,22.685989, 0.103991;;,
      2;3;-6.516903,22.686012, 0.104000;;,
      3;3;-6.516904,22.685993, 0.104008;;,
      4;3;-6.516898,22.686005, 0.103983;;,
      5;3;-6.516893,22.686001, 0.103985;;,
      6;3;-6.516903,22.686008, 0.103973;;,
      7;3;-6.516903,22.686005, 0.103989;;,
      8;3;-6.516901,22.686016, 0.103989;;,
      9;3;-6.516903,22.686016, 0.103992;;,
      10;3;-6.516894,22.686010, 0.103998;;,
      11;3;-6.516891,22.685993, 0.103979;;,
      12;3;-6.516897,22.685991, 0.103990;;,
      13;3;-6.516903,22.686007, 0.104004;;,
      14;3;-6.516904,22.686005, 0.103992;;,
      15;3;-6.516903,22.686007, 0.103998;;,
      16;3;-6.516911,22.686005, 0.103987;;,
      17;3;-6.516907,22.686007, 0.103995;;,
      18;3;-6.516895,22.685999, 0.103998;;,
      19;3;-6.516907,22.686001, 0.103980;;,
      20;3;-6.516891,22.686008, 0.103991;;,
      21;3;-6.516893,22.686008, 0.103991;;,
      22;3;-6.516905,22.685991, 0.104007;;,
      23;3;-6.516898,22.685999, 0.103997;;,
      24;3;-6.516902,22.686005, 0.103992;;,
      25;3;-6.516898,22.686008, 0.103995;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      1;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      2;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      3;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      4;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      5;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      6;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      7;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      8;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      9;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      10;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      11;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      12;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      13;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      14;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      15;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      16;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      17;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      18;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      19;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      20;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      21;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      22;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      23;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      24;4;-0.802516, 0.596504,-0.000887,-0.012225;;,
      25;4;-0.802516, 0.596504,-0.000887,-0.012225;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000014, 6.409010,-0.000008;;,
      1;3;-0.000010, 6.408989,-0.000015;;,
      2;3; 0.000000, 6.409010,-0.000011;;,
      3;3;-0.000000, 6.409006, 0.000008;;,
      4;3; 0.000005, 6.409002, 0.000008;;,
      5;3; 0.000000, 6.409004, 0.000000;;,
      6;3; 0.000003, 6.409008,-0.000004;;,
      7;3; 0.000004, 6.409012, 0.000004;;,
      8;3;-0.000011, 6.408975,-0.000008;;,
      9;3;-0.000009, 6.409007,-0.000019;;,
      10;3;-0.000004, 6.409002, 0.000000;;,
      11;3; 0.000001, 6.409013,-0.000015;;,
      12;3; 0.000013, 6.408998, 0.000010;;,
      13;3;-0.000008, 6.409012,-0.000002;;,
      14;3; 0.000005, 6.409009, 0.000004;;,
      15;3; 0.000000, 6.408986, 0.000001;;,
      16;3; 0.000008, 6.409002,-0.000001;;,
      17;3; 0.000006, 6.408987,-0.000008;;,
      18;3;-0.000004, 6.408992, 0.000000;;,
      19;3;-0.000006, 6.408995, 0.000002;;,
      20;3; 0.000004, 6.408990, 0.000003;;,
      21;3; 0.000000, 6.408996, 0.000007;;,
      22;3;-0.000004, 6.408998,-0.000009;;,
      23;3;-0.000004, 6.408995, 0.000000;;,
      24;3; 0.000004, 6.408998,-0.000009;;,
      25;3;-0.000001, 6.409003, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      1;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      2;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      3;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      4;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      5;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      6;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      7;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      8;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      9;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      10;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      11;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      12;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      13;4;-0.942166, 0.334989, 0.004041, 0.009396;;,
      14;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      15;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      16;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      17;4;-0.942166, 0.334989, 0.004041, 0.009396;;,
      18;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      19;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      20;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      21;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      22;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      23;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      24;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      25;4;-0.942166, 0.334989, 0.004042, 0.009396;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000002, 6.150006, 0.000005;;,
      1;3;-0.000010, 6.150004, 0.000004;;,
      2;3;-0.000001, 6.150018, 0.000004;;,
      3;3;-0.000008, 6.149993, 0.000002;;,
      4;3;-0.000006, 6.150000,-0.000000;;,
      5;3; 0.000001, 6.150004,-0.000006;;,
      6;3;-0.000009, 6.149998,-0.000005;;,
      7;3;-0.000006, 6.149995,-0.000005;;,
      8;3;-0.000005, 6.150000,-0.000002;;,
      9;3; 0.000001, 6.150013,-0.000007;;,
      10;3; 0.000010, 6.149995, 0.000000;;,
      11;3; 0.000002, 6.150002, 0.000000;;,
      12;3;-0.000006, 6.149998, 0.000007;;,
      13;3;-0.000002, 6.149994, 0.000003;;,
      14;3; 0.000001, 6.149998, 0.000004;;,
      15;3;-0.000002, 6.149990, 0.000001;;,
      16;3; 0.000006, 6.149986, 0.000002;;,
      17;3;-0.000002, 6.149994,-0.000001;;,
      18;3; 0.000002, 6.150005,-0.000005;;,
      19;3; 0.000004, 6.149996,-0.000009;;,
      20;3; 0.000010, 6.149998, 0.000006;;,
      21;3; 0.000000, 6.150000,-0.000009;;,
      22;3; 0.000002, 6.149991, 0.000000;;,
      23;3; 0.000003, 6.150002, 0.000003;;,
      24;3;-0.000001, 6.149996,-0.000000;;,
      25;3; 0.000003, 6.149992, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      25;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000003, 6.145992, 0.000011;;,
      1;3;-0.000002, 6.146000,-0.000027;;,
      2;3; 0.000004, 6.145996,-0.000008;;,
      3;3; 0.000004, 6.145996, 0.000008;;,
      4;3; 0.000007, 6.145996, 0.000019;;,
      5;3;-0.000001, 6.146000,-0.000015;;,
      6;3; 0.000013, 6.146000,-0.000015;;,
      7;3;-0.000005, 6.146002, 0.000000;;,
      8;3;-0.000000, 6.146000, 0.000013;;,
      9;3; 0.000000, 6.145992, 0.000013;;,
      10;3;-0.000011, 6.145990, 0.000004;;,
      11;3;-0.000001, 6.145989,-0.000010;;,
      12;3; 0.000002, 6.146003, 0.000013;;,
      13;3; 0.000001, 6.145985,-0.000012;;,
      14;3; 0.000002, 6.145988,-0.000025;;,
      15;3;-0.000006, 6.146009,-0.000003;;,
      16;3; 0.000000, 6.145994, 0.000001;;,
      17;3;-0.000004, 6.145989,-0.000003;;,
      18;3; 0.000000, 6.145999, 0.000004;;,
      19;3; 0.000000, 6.146005, 0.000000;;,
      20;3;-0.000004, 6.146002, 0.000003;;,
      21;3; 0.000011, 6.145991,-0.000006;;,
      22;3;-0.000004, 6.146004,-0.000009;;,
      23;3; 0.000000, 6.146000,-0.000009;;,
      24;3;-0.000004, 6.145996, 0.000005;;,
      25;3; 0.000005, 6.145995, 0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      1;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      2;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      3;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      4;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      5;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      6;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      7;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      8;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      9;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      10;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      11;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      12;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      13;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      14;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      15;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      16;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      17;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      18;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      19;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      20;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      21;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      22;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      23;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      24;4;-0.726236, 0.686556, 0.024775,-0.024667;;,
      25;4;-0.726236, 0.686556, 0.024775,-0.024667;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-11.443207,18.881004, 0.461998;;,
      1;3;-11.443228,18.881001, 0.462000;;,
      2;3;-11.443204,18.881004, 0.462015;;,
      3;3;-11.443196,18.880993, 0.462015;;,
      4;3;-11.443192,18.881004, 0.462000;;,
      5;3;-11.443201,18.881004, 0.461985;;,
      6;3;-11.443201,18.881001, 0.461994;;,
      7;3;-11.443205,18.881008, 0.462006;;,
      8;3;-11.443203,18.881008, 0.461998;;,
      9;3;-11.443195,18.881008, 0.461998;;,
      10;3;-11.443201,18.881002, 0.462006;;,
      11;3;-11.443186,18.880993, 0.461992;;,
      12;3;-11.443193,18.880991, 0.461993;;,
      13;3;-11.443205,18.881004, 0.462015;;,
      14;3;-11.443204,18.881004, 0.462004;;,
      15;3;-11.443207,18.881004, 0.462008;;,
      16;3;-11.443207,18.881008, 0.461998;;,
      17;3;-11.443207,18.881001, 0.461999;;,
      18;3;-11.443203,18.881002, 0.462009;;,
      19;3;-11.443209,18.880995, 0.461994;;,
      20;3;-11.443199,18.881008, 0.462002;;,
      21;3;-11.443195,18.881004, 0.462004;;,
      22;3;-11.443205,18.880997, 0.462013;;,
      23;3;-11.443197,18.881001, 0.462004;;,
      24;3;-11.443203,18.881001, 0.462003;;,
      25;3;-11.443199,18.881002, 0.462005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      1;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      2;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      3;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      4;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      5;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      6;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      7;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      8;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      9;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      10;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      11;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      12;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      13;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      14;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      15;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      16;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      17;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      18;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      19;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      20;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      21;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      22;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      23;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      24;4;-0.889352, 0.457222, 0.000001,-0.000885;;,
      25;4;-0.889352, 0.457222, 0.000001,-0.000885;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000011, 4.920010, 0.000004;;,
      1;3;-0.000013, 4.919985, 0.000004;;,
      2;3;-0.000006, 4.920000, 0.000008;;,
      3;3; 0.000010, 4.920019, 0.000011;;,
      4;3; 0.000011, 4.920012, 0.000008;;,
      5;3; 0.000011, 4.919991,-0.000015;;,
      6;3; 0.000007, 4.920015,-0.000004;;,
      7;3; 0.000001, 4.919979,-0.000004;;,
      8;3;-0.000007, 4.919997, 0.000000;;,
      9;3; 0.000011, 4.920010, 0.000000;;,
      10;3;-0.000002, 4.920001,-0.000004;;,
      11;3;-0.000015, 4.920009, 0.000000;;,
      12;3; 0.000002, 4.920011, 0.000004;;,
      13;3;-0.000006, 4.920003, 0.000001;;,
      14;3; 0.000007, 4.920011, 0.000003;;,
      15;3; 0.000006, 4.920001,-0.000002;;,
      16;3; 0.000004, 4.920010,-0.000004;;,
      17;3;-0.000008, 4.919997,-0.000008;;,
      18;3; 0.000004, 4.920004,-0.000002;;,
      19;3; 0.000004, 4.920002, 0.000003;;,
      20;3;-0.000004, 4.919998, 0.000005;;,
      21;3; 0.000004, 4.919995, 0.000008;;,
      22;3;-0.000011, 4.920002,-0.000008;;,
      23;3;-0.000008, 4.919994, 0.000003;;,
      24;3;-0.000001, 4.919993, 0.000001;;,
      25;3;-0.000002, 4.920004,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      1;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      2;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      3;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      4;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      5;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      6;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      7;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      8;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      9;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      10;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      11;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      12;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      13;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      14;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      15;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      16;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      17;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      18;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      19;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      20;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      21;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      22;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      23;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      24;4;-0.974703, 0.223503,-0.000000,-0.000433;;,
      25;4;-0.974703, 0.223503,-0.000000,-0.000433;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000010, 5.233001,-0.000008;;,
      1;3;-0.000008, 5.232997, 0.000005;;,
      2;3; 0.000002, 5.233001, 0.000001;;,
      3;3;-0.000006, 5.233001,-0.000003;;,
      4;3;-0.000010, 5.232994,-0.000002;;,
      5;3;-0.000004, 5.233016,-0.000010;;,
      6;3;-0.000007, 5.232994,-0.000006;;,
      7;3;-0.000001, 5.233010,-0.000004;;,
      8;3;-0.000001, 5.233005,-0.000017;;,
      9;3; 0.000002, 5.232997, 0.000004;;,
      10;3; 0.000006, 5.232997, 0.000002;;,
      11;3; 0.000011, 5.233001,-0.000009;;,
      12;3;-0.000002, 5.232993,-0.000004;;,
      13;3; 0.000002, 5.232996,-0.000001;;,
      14;3; 0.000003, 5.233000, 0.000012;;,
      15;3;-0.000004, 5.232996,-0.000003;;,
      16;3; 0.000004, 5.233006,-0.000004;;,
      17;3; 0.000006, 5.233004,-0.000002;;,
      18;3; 0.000004, 5.233011, 0.000008;;,
      19;3;-0.000002, 5.232986,-0.000002;;,
      20;3;-0.000004, 5.232997, 0.000006;;,
      21;3; 0.000002, 5.233004, 0.000000;;,
      22;3;-0.000005, 5.233019,-0.000004;;,
      23;3; 0.000002, 5.233006, 0.000004;;,
      24;3;-0.000003, 5.233013, 0.000002;;,
      25;3;-0.000003, 5.233001,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000002, 5.571009, 0.000003;;,
      1;3; 0.000000, 5.570980, 0.000007;;,
      2;3;-0.000010, 5.571009,-0.000006;;,
      3;3; 0.000000, 5.571009, 0.000002;;,
      4;3;-0.000002, 5.571007,-0.000002;;,
      5;3;-0.000002, 5.570999,-0.000006;;,
      6;3; 0.000002, 5.570999, 0.000010;;,
      7;3;-0.000007, 5.570999,-0.000001;;,
      8;3;-0.000004, 5.570999, 0.000004;;,
      9;3; 0.000000, 5.570995, 0.000011;;,
      10;3;-0.000011, 5.570986,-0.000018;;,
      11;3;-0.000002, 5.570997,-0.000008;;,
      12;3; 0.000002, 5.570992,-0.000003;;,
      13;3; 0.000011, 5.571009,-0.000004;;,
      14;3; 0.000005, 5.570998, 0.000009;;,
      15;3;-0.000006, 5.571000, 0.000016;;,
      16;3; 0.000000, 5.570996,-0.000006;;,
      17;3;-0.000006, 5.571001, 0.000004;;,
      18;3; 0.000010, 5.570999, 0.000000;;,
      19;3;-0.000002, 5.570999, 0.000001;;,
      20;3; 0.000000, 5.571000, 0.000004;;,
      21;3; 0.000002, 5.570998,-0.000004;;,
      22;3; 0.000000, 5.571002,-0.000000;;,
      23;3; 0.000003, 5.571010,-0.000010;;,
      24;3;-0.000002, 5.571005, 0.000005;;,
      25;3;-0.000005, 5.570996,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour1}
    AnimationKey { // Rotation
      0;
      26;
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
      22;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      23;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      24;4;-0.500000,-0.500000, 0.500000,-0.500000;;,
      25;4;-0.500000,-0.500000, 0.500000,-0.500000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-1.467296, 5.012923,-18.471134;;,
      1;3;-1.467307, 5.012923,-18.471121;;,
      2;3;-1.467306, 5.012927,-18.471130;;,
      3;3;-1.467301, 5.012929,-18.471121;;,
      4;3;-1.467299, 5.012929,-18.471157;;,
      5;3;-1.467306, 5.012922,-18.471138;;,
      6;3;-1.467301, 5.012928,-18.471151;;,
      7;3;-1.467299, 5.012921,-18.471138;;,
      8;3;-1.467310, 5.012928,-18.471142;;,
      9;3;-1.467299, 5.012923,-18.471134;;,
      10;3;-1.467303, 5.012923,-18.471130;;,
      11;3;-1.467301, 5.012926,-18.471140;;,
      12;3;-1.467308, 5.012926,-18.471130;;,
      13;3;-1.467306, 5.012928,-18.471142;;,
      14;3;-1.467290, 5.012925,-18.471144;;,
      15;3;-1.467293, 5.012921,-18.471138;;,
      16;3;-1.467306, 5.012923,-18.471132;;,
      17;3;-1.467304, 5.012924,-18.471125;;,
      18;3;-1.467303, 5.012927,-18.471146;;,
      19;3;-1.467301, 5.012927,-18.471125;;,
      20;3;-1.467293, 5.012923,-18.471136;;,
      21;3;-1.467295, 5.012929,-18.471136;;,
      22;3;-1.467305, 5.012922,-18.471127;;,
      23;3;-1.467293, 5.012935,-18.471140;;,
      24;3;-1.467304, 5.012915,-18.471134;;,
      25;3;-1.467301, 5.012937,-18.471136;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      1;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      2;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      3;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      4;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      5;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      6;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      7;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      8;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      9;4;-0.106406,-0.175293,-0.069271, 0.976295;;,
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
      22;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      23;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      24;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      25;4;-0.106406,-0.175293,-0.069270, 0.976295;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      22;3; 1.000001, 1.000000, 1.000001;;,
      23;3; 1.000001, 1.000000, 1.000001;;,
      24;3; 1.000001, 1.000000, 1.000001;;,
      25;3; 1.000001, 1.000000, 1.000001;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 3.884903,-9.462718,-18.584892;;,
      1;3; 3.884900,-9.462700,-18.584892;;,
      2;3; 3.884909,-9.462705,-18.584904;;,
      3;3; 3.884901,-9.462709,-18.584896;;,
      4;3; 3.884907,-9.462711,-18.584898;;,
      5;3; 3.884904,-9.462717,-18.584890;;,
      6;3; 3.884908,-9.462695,-18.584908;;,
      7;3; 3.884897,-9.462704,-18.584888;;,
      8;3; 3.884903,-9.462691,-18.584904;;,
      9;3; 3.884906,-9.462717,-18.584894;;,
      10;3; 3.884902,-9.462683,-18.584900;;,
      11;3; 3.884900,-9.462721,-18.584900;;,
      12;3; 3.884905,-9.462706,-18.584892;;,
      13;3; 3.884895,-9.462703,-18.584888;;,
      14;3; 3.884902,-9.462736,-18.584900;;,
      15;3; 3.884904,-9.462707,-18.584915;;,
      16;3; 3.884903,-9.462710,-18.584911;;,
      17;3; 3.884902,-9.462713,-18.584894;;,
      18;3; 3.884904,-9.462714,-18.584909;;,
      19;3; 3.884887,-9.462716,-18.584896;;,
      20;3; 3.884894,-9.462714,-18.584892;;,
      21;3; 3.884901,-9.462704,-18.584904;;,
      22;3; 3.884896,-9.462712,-18.584902;;,
      23;3; 3.884891,-9.462713,-18.584898;;,
      24;3; 3.884907,-9.462717,-18.584898;;,
      25;3; 3.884910,-9.462701,-18.584906;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour3}
    AnimationKey { // Rotation
      0;
      26;
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
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000003,11.039516,-0.000009;;,
      1;3; 0.000016,11.039488,-0.000002;;,
      2;3;-0.000006,11.039495,-0.000008;;,
      3;3; 0.000002,11.039501, 0.000003;;,
      4;3; 0.000006,11.039492,-0.000006;;,
      5;3; 0.000004,11.039499, 0.000003;;,
      6;3;-0.000003,11.039507,-0.000006;;,
      7;3; 0.000008,11.039506,-0.000010;;,
      8;3; 0.000000,11.039500, 0.000002;;,
      9;3; 0.000002,11.039505,-0.000013;;,
      10;3;-0.000005,11.039490, 0.000000;;,
      11;3;-0.000007,11.039520, 0.000006;;,
      12;3; 0.000011,11.039511,-0.000002;;,
      13;3; 0.000006,11.039515,-0.000013;;,
      14;3;-0.000014,11.039493, 0.000001;;,
      15;3;-0.000001,11.039502, 0.000003;;,
      16;3;-0.000002,11.039499, 0.000001;;,
      17;3; 0.000004,11.039511, 0.000001;;,
      18;3;-0.000006,11.039506, 0.000007;;,
      19;3;-0.000001,11.039490,-0.000008;;,
      20;3; 0.000000,11.039486,-0.000017;;,
      21;3; 0.000004,11.039489, 0.000007;;,
      22;3;-0.000004,11.039494,-0.000010;;,
      23;3;-0.000005,11.039495, 0.000004;;,
      24;3;-0.000007,11.039486,-0.000002;;,
      25;3;-0.000002,11.039499, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      1;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      2;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      3;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      4;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      5;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      6;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      7;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      8;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      9;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      10;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      11;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      12;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      13;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      14;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      15;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      16;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      17;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      18;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      19;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      20;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      21;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      22;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      23;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      24;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      25;4;-0.135080, 0.914205,-0.186988, 0.333195;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-2.648904,-11.494619,22.195309;;,
      1;3;-2.648904,-11.494584,22.195305;;,
      2;3;-2.648901,-11.494595,22.195295;;,
      3;3;-2.648908,-11.494594,22.195311;;,
      4;3;-2.648901,-11.494591,22.195290;;,
      5;3;-2.648903,-11.494602,22.195297;;,
      6;3;-2.648902,-11.494587,22.195301;;,
      7;3;-2.648904,-11.494591,22.195299;;,
      8;3;-2.648904,-11.494581,22.195305;;,
      9;3;-2.648899,-11.494610,22.195301;;,
      10;3;-2.648909,-11.494587,22.195299;;,
      11;3;-2.648906,-11.494625,22.195305;;,
      12;3;-2.648904,-11.494592,22.195301;;,
      13;3;-2.648909,-11.494588,22.195305;;,
      14;3;-2.648905,-11.494623,22.195301;;,
      15;3;-2.648902,-11.494598,22.195292;;,
      16;3;-2.648905,-11.494600,22.195301;;,
      17;3;-2.648903,-11.494600,22.195299;;,
      18;3;-2.648912,-11.494602,22.195297;;,
      19;3;-2.648920,-11.494606,22.195307;;,
      20;3;-2.648915,-11.494604,22.195305;;,
      21;3;-2.648907,-11.494598,22.195293;;,
      22;3;-2.648914,-11.494604,22.195305;;,
      23;3;-2.648922,-11.494608,22.195299;;,
      24;3;-2.648907,-11.494606,22.195309;;,
      25;3;-2.648907,-11.494587,22.195292;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour5}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000002,11.039497,-0.000002;;,
      1;3; 0.000006,11.039495,-0.000013;;,
      2;3; 0.000008,11.039503, 0.000002;;,
      3;3; 0.000000,11.039503, 0.000004;;,
      4;3;-0.000002,11.039505, 0.000004;;,
      5;3;-0.000011,11.039499, 0.000006;;,
      6;3;-0.000004,11.039492,-0.000002;;,
      7;3; 0.000010,11.039497, 0.000002;;,
      8;3; 0.000002,11.039490, 0.000000;;,
      9;3; 0.000008,11.039509,-0.000002;;,
      10;3; 0.000004,11.039503, 0.000010;;,
      11;3; 0.000000,11.039503, 0.000000;;,
      12;3; 0.000006,11.039505, 0.000002;;,
      13;3;-0.000004,11.039505,-0.000002;;,
      14;3;-0.000006,11.039492,-0.000002;;,
      15;3;-0.000002,11.039503, 0.000006;;,
      16;3;-0.000010,11.039515,-0.000002;;,
      17;3;-0.000006,11.039498,-0.000003;;,
      18;3;-0.000003,11.039515,-0.000007;;,
      19;3;-0.000001,11.039497, 0.000001;;,
      20;3; 0.000001,11.039507, 0.000002;;,
      21;3;-0.000004,11.039497, 0.000009;;,
      22;3; 0.000002,11.039499, 0.000001;;,
      23;3; 0.000000,11.039486,-0.000004;;,
      24;3; 0.000002,11.039509, 0.000004;;,
      25;3; 0.000000,11.039501, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.142964, 0.236044, 0.663673, 0.695257;;,
      1;4;-0.150947, 0.227954, 0.665292, 0.694722;;,
      2;4;-0.139997, 0.207770, 0.687360, 0.681740;;,
      3;4;-0.112278, 0.184318, 0.716452, 0.663414;;,
      4;4;-0.085933, 0.169449, 0.738695, 0.646708;;,
      5;4;-0.072253, 0.155937, 0.758894, 0.628126;;,
      6;4;-0.054606, 0.145248, 0.774062, 0.613800;;,
      7;4;-0.041735, 0.139506, 0.777246, 0.612115;;,
      8;4;-0.048997, 0.141654, 0.758666, 0.634003;;,
      9;4;-0.066914, 0.134636, 0.737467, 0.658436;;,
      10;4;-0.098185, 0.146168, 0.706757, 0.685193;;,
      11;4;-0.123128, 0.165326, 0.669101, 0.714010;;,
      12;4;-0.148526, 0.194857, 0.624974, 0.741200;;,
      13;4;-0.167501, 0.217357, 0.579851, 0.767119;;,
      14;4;-0.185538, 0.245339, 0.528548, 0.791215;;,
      15;4;-0.205186, 0.267621, 0.484377, 0.807252;;,
      16;4;-0.218627, 0.282803, 0.453629, 0.816361;;,
      17;4;-0.218059, 0.291369, 0.440202, 0.820839;;,
      18;4;-0.228707, 0.297325, 0.450024, 0.810413;;,
      19;4;-0.236443, 0.294794, 0.466430, 0.799771;;,
      20;4;-0.219208, 0.272060, 0.501720, 0.791333;;,
      21;4;-0.185971, 0.226724, 0.556431, 0.777429;;,
      22;4;-0.137879, 0.179941, 0.604742, 0.763477;;,
      23;4;-0.099374, 0.153196, 0.625497, 0.758558;;,
      24;4;-0.066328, 0.133923, 0.634654, 0.758208;;,
      25;4;-0.030203, 0.114864, 0.639696, 0.759396;;;
    }
    AnimationKey { // Scale
      1;
      26;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000001, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000001, 1.000000;;,
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;19.899096,-7.885089,-3.429499;;,
      1;3;19.899094,-7.885097,-3.429501;;,
      2;3;19.899096,-7.885097,-3.429499;;,
      3;3;19.899094,-7.885097,-3.429501;;,
      4;3;19.899096,-7.885097,-3.429499;;,
      5;3;19.899094,-7.885104,-3.429502;;,
      6;3;19.899097,-7.885099,-3.429500;;,
      7;3;19.899094,-7.885099,-3.429502;;,
      8;3;19.899094,-7.885091,-3.429499;;,
      9;3;19.899096,-7.885099,-3.429500;;,
      10;3;19.899094,-7.885103,-3.429500;;,
      11;3;19.899094,-7.885096,-3.429499;;,
      12;3;19.899096,-7.885096,-3.429501;;,
      13;3;19.899092,-7.885084,-3.429502;;,
      14;3;19.899097,-7.885109,-3.429501;;,
      15;3;19.899097,-7.885098,-3.429501;;,
      16;3;19.899099,-7.885087,-3.429502;;,
      17;3;19.899096,-7.885088,-3.429500;;,
      18;3;19.899096,-7.885105,-3.429500;;,
      19;3;19.899096,-7.885117,-3.429501;;,
      20;3;19.899097,-7.885097,-3.429501;;,
      21;3;19.899096,-7.885092,-3.429500;;,
      22;3;19.899096,-7.885097,-3.429499;;,
      23;3;19.899097,-7.885102,-3.429498;;,
      24;3;19.899097,-7.885095,-3.429500;;,
      25;3;19.899094,-7.885099,-3.429501;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.110627,-0.986946, 0.072148, 0.092161;;,
      1;4;-0.104454,-0.987259, 0.071779, 0.096213;;,
      2;4;-0.106057,-0.988654, 0.067317, 0.082360;;,
      3;4;-0.112256,-0.990191, 0.058729, 0.058916;;,
      4;4;-0.123958,-0.989994, 0.054968, 0.039044;;,
      5;4;-0.138544,-0.988514, 0.056311, 0.021811;;,
      6;4;-0.157124,-0.986115, 0.053231, 0.007446;;,
      7;4;-0.178549,-0.982634, 0.050487, 0.001600;;,
      8;4;-0.189871,-0.980436, 0.050266, 0.012935;;,
      9;4;-0.210249,-0.975718, 0.056476, 0.024082;;,
      10;4;-0.226310,-0.970475, 0.069537, 0.046107;;,
      11;4;-0.243922,-0.963886, 0.085316, 0.064402;;,
      12;4;-0.267315,-0.953991, 0.113673, 0.074316;;,
      13;4;-0.289294,-0.943662, 0.136749, 0.084324;;,
      14;4;-0.308454,-0.933074, 0.159746, 0.093327;;,
      15;4;-0.329129,-0.920403, 0.183263, 0.104631;;,
      16;4;-0.346210,-0.908327, 0.203122, 0.117569;;,
      17;4;-0.358357,-0.898805, 0.212959, 0.135566;;,
      18;4;-0.347572,-0.899783, 0.209161, 0.160734;;,
      19;4;-0.331728,-0.906272, 0.193007, 0.177130;;,
      20;4;-0.317382,-0.917714, 0.153554, 0.183006;;,
      21;4;-0.307120,-0.928699, 0.105236, 0.179224;;,
      22;4;-0.313787,-0.934355, 0.064966, 0.155879;;,
      23;4;-0.311471,-0.941325, 0.039161, 0.123936;;,
      24;4;-0.297425,-0.950445, 0.021734, 0.087861;;,
      25;4;-0.287653,-0.956504, 0.006329, 0.048128;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000003,38.282917,-0.000001;;,
      1;3;-0.000002,38.282917, 0.000008;;,
      2;3; 0.000001,38.282913,-0.000007;;,
      3;3;-0.000001,38.282917,-0.000012;;,
      4;3;-0.000000,38.282909, 0.000003;;,
      5;3; 0.000003,38.282913, 0.000007;;,
      6;3; 0.000005,38.282921, 0.000003;;,
      7;3; 0.000002,38.282906, 0.000004;;,
      8;3;-0.000001,38.282913, 0.000000;;,
      9;3;-0.000001,38.282913,-0.000009;;,
      10;3;-0.000002,38.282906, 0.000006;;,
      11;3; 0.000002,38.282913, 0.000004;;,
      12;3; 0.000002,38.282917,-0.000005;;,
      13;3;-0.000000,38.282909, 0.000001;;,
      14;3;-0.000000,38.282906, 0.000001;;,
      15;3; 0.000000,38.282913, 0.000000;;,
      16;3; 0.000001,38.282909, 0.000002;;,
      17;3;-0.000001,38.282913,-0.000004;;,
      18;3;-0.000002,38.282913,-0.000001;;,
      19;3; 0.000001,38.282913,-0.000003;;,
      20;3; 0.000002,38.282913, 0.000006;;,
      21;3;-0.000000,38.282921, 0.000000;;,
      22;3;-0.000001,38.282917, 0.000005;;,
      23;3; 0.000002,38.282906,-0.000005;;,
      24;3;-0.000002,38.282909,-0.000004;;,
      25;3; 0.000000,38.282913, 0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.967918, 0.249337,-0.012160,-0.028582;;,
      1;4;-0.961521, 0.271725,-0.021140,-0.034575;;,
      2;4;-0.960542, 0.275669,-0.025962,-0.026310;;,
      3;4;-0.960465, 0.276907,-0.027532,-0.008467;;,
      4;4;-0.964768, 0.261677,-0.027289, 0.001959;;,
      5;4;-0.969893, 0.241784,-0.029080,-0.001330;;,
      6;4;-0.975042, 0.220281,-0.026572, 0.007924;;,
      7;4;-0.979059, 0.201475,-0.021748, 0.019440;;,
      8;4;-0.977405, 0.208845,-0.018121, 0.027106;;,
      9;4;-0.977898, 0.207657,-0.014248, 0.019793;;,
      10;4;-0.975905, 0.217337,-0.011602, 0.015493;;,
      11;4;-0.973036, 0.230486,-0.007471, 0.004683;;,
      12;4;-0.967388, 0.253082,-0.004888,-0.009308;;,
      13;4;-0.964888, 0.262267, 0.000561,-0.014415;;,
      14;4;-0.960925, 0.276508, 0.004919,-0.011909;;,
      15;4;-0.960007, 0.279873, 0.007219,-0.002139;;,
      16;4;-0.960419, 0.278098, 0.007637, 0.014106;;,
      17;4;-0.959913, 0.277626, 0.008461, 0.037664;;,
      18;4;-0.952685, 0.294486, 0.007539, 0.074912;;,
      19;4;-0.934654, 0.334436, 0.004660, 0.120632;;,
      20;4;-0.910810, 0.381112, 0.009820, 0.158374;;,
      21;4;-0.886905, 0.428199, 0.015288, 0.172657;;,
      22;4;-0.868079, 0.462845, 0.021009, 0.178250;;,
      23;4;-0.845403, 0.502774, 0.022660, 0.178883;;,
      24;4;-0.825159, 0.537776, 0.021449, 0.171606;;,
      25;4;-0.809329, 0.563427, 0.021789, 0.164508;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000001,32.683975, 0.000002;;,
      1;3;-0.000004,32.683975,-0.000002;;,
      2;3;-0.000002,32.683994,-0.000002;;,
      3;3; 0.000000,32.683987, 0.000002;;,
      4;3;-0.000002,32.683987, 0.000008;;,
      5;3; 0.000002,32.683983,-0.000001;;,
      6;3; 0.000000,32.683990, 0.000000;;,
      7;3;-0.000001,32.683987,-0.000005;;,
      8;3; 0.000001,32.683990,-0.000000;;,
      9;3; 0.000001,32.683987, 0.000005;;,
      10;3;-0.000000,32.683983, 0.000000;;,
      11;3; 0.000002,32.683983,-0.000001;;,
      12;3;-0.000001,32.683987,-0.000006;;,
      13;3;-0.000004,32.683998, 0.000001;;,
      14;3; 0.000000,32.683983,-0.000001;;,
      15;3; 0.000003,32.683987,-0.000008;;,
      16;3; 0.000002,32.683983, 0.000003;;,
      17;3; 0.000002,32.683990, 0.000000;;,
      18;3;-0.000000,32.683990,-0.000001;;,
      19;3; 0.000002,32.683987, 0.000000;;,
      20;3; 0.000001,32.683987, 0.000003;;,
      21;3;-0.000001,32.683983, 0.000004;;,
      22;3; 0.000000,32.683983,-0.000003;;,
      23;3;-0.000002,32.683987, 0.000004;;,
      24;3; 0.000001,32.683990, 0.000002;;,
      25;3; 0.000002,32.683990,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.915174, 0.364672, 0.170924,-0.015978;;,
      1;4;-0.918166, 0.359063, 0.166836,-0.014492;;,
      2;4;-0.919628, 0.359034, 0.158774,-0.013009;;,
      3;4;-0.927645, 0.354372, 0.117776,-0.004946;;,
      4;4;-0.932603, 0.349728, 0.089111, 0.000804;;,
      5;4;-0.938694, 0.340334, 0.054402, 0.008177;;,
      6;4;-0.941953, 0.334023, 0.031362, 0.013024;;,
      7;4;-0.943034, 0.331960, 0.015046, 0.016195;;,
      8;4;-0.940421, 0.339524, 0.007171, 0.016721;;,
      9;4;-0.936997, 0.348938, 0.002430, 0.016514;;,
      10;4;-0.934541, 0.355478,-0.000301, 0.016380;;,
      11;4;-0.934040, 0.356577,-0.009716, 0.018085;;,
      12;4;-0.937161, 0.344086,-0.051254, 0.026597;;,
      13;4;-0.937193, 0.344113,-0.050423, 0.026691;;,
      14;4;-0.939279, 0.336659,-0.059636, 0.029301;;,
      15;4;-0.939295, 0.334881,-0.067945, 0.031035;;,
      16;4;-0.936678, 0.341436,-0.071481, 0.030755;;,
      17;4;-0.926920, 0.369952,-0.057763, 0.024881;;,
      18;4;-0.917974, 0.392749,-0.051146, 0.021359;;,
      19;4;-0.923308, 0.373102,-0.086476, 0.028635;;,
      20;4;-0.915166, 0.390276,-0.096995, 0.027351;;,
      21;4;-0.914360, 0.393537,-0.091517, 0.026450;;,
      22;4;-0.913101, 0.398432,-0.082927, 0.024930;;,
      23;4;-0.904885, 0.417546,-0.079802, 0.021694;;,
      24;4;-0.893015, 0.442826,-0.078218, 0.017646;;,
      25;4;-0.880430, 0.467770,-0.076470, 0.013705;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,27.100000,-0.000000;;,
      1;3;-0.000001,27.100002, 0.000003;;,
      2;3;-0.000001,27.100002, 0.000001;;,
      3;3; 0.000000,27.100000, 0.000001;;,
      4;3; 0.000001,27.100002,-0.000000;;,
      5;3;-0.000001,27.100004, 0.000002;;,
      6;3;-0.000001,27.100010,-0.000000;;,
      7;3; 0.000001,27.099998, 0.000004;;,
      8;3; 0.000002,27.099998, 0.000001;;,
      9;3; 0.000002,27.100006,-0.000004;;,
      10;3; 0.000001,27.100006, 0.000002;;,
      11;3; 0.000001,27.100004, 0.000002;;,
      12;3; 0.000000,27.100008, 0.000002;;,
      13;3;-0.000001,27.100002, 0.000001;;,
      14;3;-0.000000,27.100008, 0.000003;;,
      15;3;-0.000001,27.100004, 0.000005;;,
      16;3;-0.000001,27.100000, 0.000000;;,
      17;3;-0.000001,27.100002, 0.000001;;,
      18;3; 0.000003,27.100004,-0.000002;;,
      19;3;-0.000000,27.100006,-0.000002;;,
      20;3; 0.000002,27.100004, 0.000002;;,
      21;3; 0.000001,27.100006, 0.000002;;,
      22;3;-0.000002,27.100002, 0.000000;;,
      23;3; 0.000000,27.100004, 0.000001;;,
      24;3;-0.000001,27.100000, 0.000002;;,
      25;3; 0.000002,27.100006, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000000,16.631994,-0.000000;;,
      1;3; 0.000000,16.632000, 0.000000;;,
      2;3;-0.000000,16.631989, 0.000000;;,
      3;3;-0.000000,16.632000, 0.000000;;,
      4;3; 0.000000,16.631994, 0.000000;;,
      5;3; 0.000002,16.631998, 0.000001;;,
      6;3; 0.000001,16.631996,-0.000001;;,
      7;3; 0.000001,16.631996,-0.000000;;,
      8;3; 0.000004,16.631996,-0.000000;;,
      9;3;-0.000002,16.631994, 0.000000;;,
      10;3;-0.000001,16.632000, 0.000000;;,
      11;3; 0.000001,16.632002, 0.000000;;,
      12;3; 0.000000,16.631996, 0.000001;;,
      13;3; 0.000000,16.631998,-0.000001;;,
      14;3; 0.000001,16.631996, 0.000003;;,
      15;3;-0.000000,16.631994, 0.000001;;,
      16;3; 0.000000,16.631994, 0.000002;;,
      17;3;-0.000000,16.631996,-0.000000;;,
      18;3;-0.000001,16.631998, 0.000001;;,
      19;3; 0.000003,16.631998,-0.000002;;,
      20;3; 0.000000,16.631996, 0.000000;;,
      21;3;-0.000001,16.631994, 0.000001;;,
      22;3; 0.000000,16.631996, 0.000000;;,
      23;3;-0.000001,16.631994, 0.000000;;,
      24;3;-0.000003,16.631998,-0.000000;;,
      25;3;-0.000000,16.631998, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.042835,-0.200455, 0.962046, 0.180139;;,
      1;4;-0.062198,-0.217968, 0.949550, 0.216738;;,
      2;4;-0.093899,-0.234312, 0.932237, 0.259260;;,
      3;4;-0.120553,-0.249871, 0.907913, 0.314206;;,
      4;4;-0.137740,-0.255383, 0.879188, 0.377935;;,
      5;4;-0.152023,-0.253412, 0.849244, 0.437557;;,
      6;4;-0.161331,-0.248383, 0.820409, 0.489088;;,
      7;4;-0.163009,-0.240710, 0.794091, 0.533767;;,
      8;4;-0.153163,-0.234632, 0.774668, 0.566902;;,
      9;4;-0.137940,-0.228111, 0.755591, 0.598348;;,
      10;4;-0.117451,-0.216298, 0.734239, 0.632703;;,
      11;4;-0.095585,-0.205181, 0.709236, 0.667644;;,
      12;4;-0.072008,-0.190578, 0.677853, 0.706407;;,
      13;4;-0.054600,-0.174256, 0.647721, 0.739670;;,
      14;4;-0.040186,-0.158511, 0.614238, 0.771991;;,
      15;4;-0.026110,-0.142263, 0.576737, 0.804023;;,
      16;4;-0.009025,-0.123906, 0.535842, 0.835128;;,
      17;4; 0.009488,-0.101844, 0.496239, 0.862140;;,
      18;4; 0.007952,-0.060961, 0.468631, 0.881252;;,
      19;4;-0.009559,-0.010701, 0.430972, 0.902251;;,
      20;4;-0.024143, 0.014940, 0.423054, 0.905660;;,
      21;4;-0.041731, 0.017924, 0.413888, 0.909194;;,
      22;4;-0.053744, 0.016769, 0.377359, 0.924354;;,
      23;4;-0.060432, 0.014354, 0.343629, 0.937049;;,
      24;4;-0.063200, 0.011426, 0.314897, 0.946951;;,
      25;4;-0.064281, 0.008141, 0.286205, 0.955975;;;
    }
    AnimationKey { // Scale
      1;
      26;
      0;3; 1.000000, 0.999999, 0.999999;;,
      1;3; 1.000000, 0.999999, 0.999999;;,
      2;3; 1.000000, 0.999999, 0.999999;;,
      3;3; 0.999999, 0.999999, 1.000000;;,
      4;3; 0.999999, 0.999998, 1.000000;;,
      5;3; 0.999999, 0.999998, 1.000000;;,
      6;3; 0.999999, 0.999999, 1.000000;;,
      7;3; 0.999999, 0.999998, 1.000000;;,
      8;3; 0.999999, 0.999998, 1.000000;;,
      9;3; 0.999999, 0.999998, 1.000000;;,
      10;3; 0.999999, 0.999998, 1.000000;;,
      11;3; 0.999999, 0.999998, 0.999999;;,
      12;3; 1.000000, 0.999998, 0.999999;;,
      13;3; 0.999999, 0.999998, 0.999999;;,
      14;3; 1.000000, 0.999998, 0.999999;;,
      15;3; 1.000000, 0.999999, 0.999999;;,
      16;3; 1.000000, 0.999999, 0.999998;;,
      17;3; 1.000000, 0.999999, 0.999998;;,
      18;3; 1.000000, 0.999999, 0.999998;;,
      19;3; 1.000000, 0.999999, 0.999998;;,
      20;3; 1.000000, 0.999999, 0.999998;;,
      21;3; 1.000000, 0.999999, 0.999997;;,
      22;3; 1.000000, 0.999999, 0.999997;;,
      23;3; 1.000000, 1.000000, 0.999997;;,
      24;3; 1.000000, 1.000000, 0.999997;;,
      25;3; 1.000000, 1.000000, 0.999997;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-19.899099,-7.884988,-3.429500;;,
      1;3;-19.899096,-7.884994,-3.429502;;,
      2;3;-19.899099,-7.884998,-3.429501;;,
      3;3;-19.899097,-7.884999,-3.429501;;,
      4;3;-19.899099,-7.885002,-3.429499;;,
      5;3;-19.899097,-7.885005,-3.429502;;,
      6;3;-19.899099,-7.884996,-3.429501;;,
      7;3;-19.899096,-7.884999,-3.429502;;,
      8;3;-19.899096,-7.884999,-3.429500;;,
      9;3;-19.899099,-7.884997,-3.429499;;,
      10;3;-19.899099,-7.885012,-3.429500;;,
      11;3;-19.899101,-7.884998,-3.429500;;,
      12;3;-19.899097,-7.884997,-3.429501;;,
      13;3;-19.899097,-7.884981,-3.429501;;,
      14;3;-19.899099,-7.885005,-3.429501;;,
      15;3;-19.899097,-7.885002,-3.429502;;,
      16;3;-19.899097,-7.884991,-3.429501;;,
      17;3;-19.899097,-7.884993,-3.429502;;,
      18;3;-19.899097,-7.885000,-3.429501;;,
      19;3;-19.899096,-7.885014,-3.429502;;,
      20;3;-19.899097,-7.884999,-3.429502;;,
      21;3;-19.899096,-7.884998,-3.429501;;,
      22;3;-19.899094,-7.884995,-3.429502;;,
      23;3;-19.899099,-7.885001,-3.429500;;,
      24;3;-19.899097,-7.884996,-3.429502;;,
      25;3;-19.899096,-7.884991,-3.429503;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.242265,-0.939445,-0.199390, 0.137818;;,
      1;4;-0.249286,-0.935789,-0.195551, 0.154647;;,
      2;4;-0.264141,-0.929685,-0.186139, 0.176827;;,
      3;4;-0.285729,-0.921128,-0.176311, 0.196969;;,
      4;4;-0.315080,-0.908676,-0.170429, 0.214443;;,
      5;4;-0.353137,-0.891688,-0.166697, 0.228909;;,
      6;4;-0.397401,-0.872052,-0.160957, 0.235987;;,
      7;4;-0.441297,-0.851528,-0.154038, 0.237549;;,
      8;4;-0.483125,-0.828897,-0.153939, 0.236268;;,
      9;4;-0.525467,-0.802349,-0.159623, 0.233754;;,
      10;4;-0.570592,-0.768390,-0.176936, 0.229555;;,
      11;4;-0.616388,-0.729928,-0.195514, 0.221462;;,
      12;4;-0.664896,-0.690107,-0.209734, 0.194104;;,
      13;4;-0.707623,-0.654591,-0.211458, 0.161452;;,
      14;4;-0.750317,-0.612814,-0.212423, 0.127904;;,
      15;4;-0.787993,-0.569509,-0.214239, 0.093958;;,
      16;4;-0.817519,-0.530178,-0.217005, 0.059008;;,
      17;4;-0.834536,-0.506828,-0.213868, 0.030587;;,
      18;4;-0.830808,-0.528234,-0.174759, 0.013662;;,
      19;4;-0.815252,-0.566703,-0.119120, 0.004769;;,
      20;4;-0.743752,-0.663205,-0.083569,-0.002985;;,
      21;4;-0.671708,-0.736682,-0.078086,-0.003355;;,
      22;4;-0.661507,-0.746052,-0.076030,-0.005937;;,
      23;4;-0.679179,-0.730010,-0.075692,-0.008552;;,
      24;4;-0.697748,-0.712055,-0.077602,-0.010159;;,
      25;4;-0.720035,-0.689207,-0.080042,-0.011700;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,38.282913, 0.000001;;,
      1;3;-0.000002,38.282913,-0.000002;;,
      2;3; 0.000001,38.282913, 0.000008;;,
      3;3;-0.000006,38.282917, 0.000003;;,
      4;3; 0.000000,38.282917, 0.000004;;,
      5;3;-0.000003,38.282913,-0.000004;;,
      6;3;-0.000001,38.282913,-0.000001;;,
      7;3; 0.000005,38.282906, 0.000002;;,
      8;3;-0.000001,38.282913, 0.000001;;,
      9;3; 0.000003,38.282909,-0.000000;;,
      10;3; 0.000003,38.282913, 0.000004;;,
      11;3; 0.000002,38.282909, 0.000002;;,
      12;3; 0.000002,38.282913,-0.000001;;,
      13;3;-0.000003,38.282909,-0.000001;;,
      14;3;-0.000001,38.282906, 0.000002;;,
      15;3;-0.000001,38.282913, 0.000001;;,
      16;3;-0.000001,38.282909, 0.000002;;,
      17;3;-0.000005,38.282909, 0.000004;;,
      18;3; 0.000000,38.282913,-0.000001;;,
      19;3;-0.000001,38.282909,-0.000003;;,
      20;3; 0.000001,38.282909, 0.000001;;,
      21;3;-0.000000,38.282913,-0.000006;;,
      22;3; 0.000001,38.282906,-0.000000;;,
      23;3; 0.000002,38.282909, 0.000001;;,
      24;3;-0.000002,38.282909,-0.000001;;,
      25;3; 0.000001,38.282909, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.927792, 0.216096, 0.109552, 0.283731;;,
      1;4;-0.932836, 0.227196, 0.099964, 0.261161;;,
      2;4;-0.944129, 0.230714, 0.084535, 0.219650;;,
      3;4;-0.955933, 0.232485, 0.065576, 0.166861;;,
      4;4;-0.962670, 0.233700, 0.050391, 0.126932;;,
      5;4;-0.967835, 0.227075, 0.038817, 0.101121;;,
      6;4;-0.972571, 0.217031, 0.028300, 0.078757;;,
      7;4;-0.974883, 0.216435, 0.017118, 0.049650;;,
      8;4;-0.976437, 0.214981, 0.006308, 0.017705;;,
      9;4;-0.977314, 0.211654,-0.003236,-0.007015;;,
      10;4;-0.978961, 0.203880,-0.005474,-0.006188;;,
      11;4;-0.983504, 0.180871,-0.000278,-0.002460;;,
      12;4;-0.985685, 0.168402, 0.008032, 0.001290;;,
      13;4;-0.988567, 0.150009, 0.010827, 0.010734;;,
      14;4;-0.992434, 0.120264, 0.012040, 0.021587;;,
      15;4;-0.994767, 0.096802, 0.011603, 0.030564;;,
      16;4;-0.994841, 0.094076, 0.009118, 0.036847;;,
      17;4;-0.991485, 0.125511, 0.003337, 0.034539;;,
      18;4;-0.970146, 0.241470,-0.005964, 0.021776;;,
      19;4;-0.913624, 0.406256,-0.007715, 0.013681;;,
      20;4;-0.819101, 0.573583,-0.008654, 0.001114;;,
      21;4;-0.730476, 0.682889,-0.005515, 0.006145;;,
      22;4;-0.667904, 0.744117,-0.003214, 0.013570;;,
      23;4;-0.641943, 0.766504,-0.001632, 0.019438;;,
      24;4;-0.634520, 0.772582,-0.000933, 0.022388;;,
      25;4;-0.635159, 0.771981,-0.000675, 0.024867;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000001,32.684059, 0.000004;;,
      1;3;-0.000000,32.684059,-0.000001;;,
      2;3; 0.000000,32.684059,-0.000005;;,
      3;3; 0.000004,32.684071, 0.000003;;,
      4;3;-0.000002,32.684067, 0.000000;;,
      5;3; 0.000000,32.684063, 0.000002;;,
      6;3;-0.000002,32.684067, 0.000002;;,
      7;3; 0.000004,32.684071, 0.000002;;,
      8;3; 0.000001,32.684059, 0.000000;;,
      9;3;-0.000002,32.684071,-0.000004;;,
      10;3; 0.000005,32.684052, 0.000000;;,
      11;3; 0.000001,32.684067, 0.000000;;,
      12;3; 0.000000,32.684071, 0.000000;;,
      13;3; 0.000005,32.684063,-0.000001;;,
      14;3;-0.000002,32.684063,-0.000002;;,
      15;3; 0.000003,32.684059, 0.000002;;,
      16;3;-0.000001,32.684059, 0.000001;;,
      17;3;-0.000002,32.684071, 0.000003;;,
      18;3; 0.000000,32.684071,-0.000001;;,
      19;3; 0.000002,32.684071,-0.000000;;,
      20;3; 0.000001,32.684067,-0.000001;;,
      21;3; 0.000001,32.684063,-0.000002;;,
      22;3; 0.000002,32.684067,-0.000001;;,
      23;3; 0.000000,32.684063, 0.000002;;,
      24;3;-0.000001,32.684067,-0.000003;;,
      25;3;-0.000001,32.684067,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.903907, 0.426706, 0.029563, 0.000788;;,
      1;4;-0.903948, 0.425147, 0.046036,-0.002971;;,
      2;4;-0.900431, 0.433596, 0.034855,-0.001685;;,
      3;4;-0.896892, 0.441787, 0.020218, 0.000470;;,
      4;4;-0.893322, 0.448714, 0.025052,-0.001904;;,
      5;4;-0.894135, 0.447442, 0.017826, 0.000073;;,
      6;4;-0.893680, 0.448327, 0.018423,-0.000225;;,
      7;4;-0.892549, 0.450927, 0.003150, 0.003441;;,
      8;4;-0.891511, 0.452949, 0.005454, 0.003929;;,
      9;4;-0.890094, 0.455608, 0.011915, 0.003347;;,
      10;4;-0.887417, 0.460769, 0.013255, 0.002615;;,
      11;4;-0.884780, 0.465980,-0.002198, 0.004773;;,
      12;4;-0.872412, 0.488385,-0.018626, 0.005524;;,
      13;4;-0.860442, 0.508889,-0.025767,-0.002644;;,
      14;4;-0.847654, 0.529527,-0.029277,-0.015070;;,
      15;4;-0.835671, 0.547711,-0.029161,-0.028573;;,
      16;4;-0.826318, 0.561185,-0.025852,-0.040015;;,
      17;4;-0.821532, 0.567915,-0.020086,-0.046412;;,
      18;4;-0.826217, 0.561563,-0.007147,-0.044288;;,
      19;4;-0.836384, 0.546749, 0.010019,-0.037782;;,
      20;4;-0.841801, 0.538377, 0.018683,-0.034234;;,
      21;4;-0.845869, 0.532077, 0.018360,-0.032598;;,
      22;4;-0.850236, 0.525190, 0.018038,-0.030818;;,
      23;4;-0.848999, 0.527153, 0.018126,-0.031325;;,
      24;4;-0.845419, 0.532779, 0.018394,-0.032780;;,
      25;4;-0.841801, 0.538377, 0.018683,-0.034234;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000003,27.100004, 0.000006;;,
      1;3; 0.000002,27.100018,-0.000001;;,
      2;3; 0.000001,27.100010, 0.000003;;,
      3;3; 0.000002,27.100014, 0.000000;;,
      4;3; 0.000000,27.100014, 0.000001;;,
      5;3;-0.000001,27.100016, 0.000002;;,
      6;3; 0.000004,27.100016,-0.000001;;,
      7;3;-0.000003,27.100014,-0.000000;;,
      8;3; 0.000001,27.100012,-0.000001;;,
      9;3; 0.000004,27.100008,-0.000001;;,
      10;3; 0.000001,27.100012, 0.000004;;,
      11;3; 0.000001,27.100008,-0.000002;;,
      12;3; 0.000004,27.100006,-0.000004;;,
      13;3; 0.000001,27.100010, 0.000001;;,
      14;3; 0.000001,27.100010, 0.000002;;,
      15;3;-0.000000,27.100008, 0.000001;;,
      16;3;-0.000000,27.100010,-0.000001;;,
      17;3; 0.000002,27.100010,-0.000001;;,
      18;3; 0.000001,27.100012, 0.000001;;,
      19;3;-0.000001,27.100010,-0.000001;;,
      20;3; 0.000000,27.100010, 0.000000;;,
      21;3;-0.000001,27.100008,-0.000000;;,
      22;3;-0.000001,27.100006,-0.000001;;,
      23;3; 0.000003,27.100010, 0.000000;;,
      24;3; 0.000002,27.100010, 0.000001;;,
      25;3; 0.000002,27.100010,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToe_End}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000001,16.631948,-0.000003;;,
      1;3; 0.000000,16.631941,-0.000002;;,
      2;3;-0.000001,16.631952, 0.000000;;,
      3;3; 0.000000,16.631937,-0.000001;;,
      4;3;-0.000001,16.631947,-0.000002;;,
      5;3;-0.000001,16.631943, 0.000005;;,
      6;3; 0.000000,16.631947, 0.000002;;,
      7;3; 0.000003,16.631943, 0.000001;;,
      8;3;-0.000004,16.631945,-0.000004;;,
      9;3;-0.000001,16.631947,-0.000002;;,
      10;3; 0.000001,16.631939,-0.000002;;,
      11;3;-0.000001,16.631950, 0.000001;;,
      12;3;-0.000000,16.631945, 0.000000;;,
      13;3; 0.000000,16.631943,-0.000001;;,
      14;3; 0.000001,16.631943, 0.000000;;,
      15;3; 0.000001,16.631941,-0.000001;;,
      16;3; 0.000001,16.631941,-0.000001;;,
      17;3; 0.000001,16.631943, 0.000002;;,
      18;3;-0.000002,16.631943, 0.000001;;,
      19;3;-0.000002,16.631945,-0.000002;;,
      20;3; 0.000004,16.631943,-0.000000;;,
      21;3;-0.000002,16.631945, 0.000000;;,
      22;3; 0.000000,16.631947,-0.000000;;,
      23;3; 0.000002,16.631947, 0.000000;;,
      24;3; 0.000004,16.631943, 0.000000;;,
      25;3;-0.000000,16.631945,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      1;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      2;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      3;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      4;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      5;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      6;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      7;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      8;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      9;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      10;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      11;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      12;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      13;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      14;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      15;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      16;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      17;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      18;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      19;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      20;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      21;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      22;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      23;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      24;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      25;4;-0.000000, 1.000000,-0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,-19.940695,22.170200;;,
      1;3; 0.000000,-19.940701,22.170198;;,
      2;3; 0.000000,-19.940702,22.170200;;,
      3;3; 0.000000,-19.940701,22.170200;;,
      4;3;-0.000000,-19.940702,22.170200;;,
      5;3; 0.000000,-19.940706,22.170197;;,
      6;3; 0.000000,-19.940702,22.170204;;,
      7;3; 0.000000,-19.940708,22.170200;;,
      8;3;-0.000001,-19.940697,22.170197;;,
      9;3; 0.000000,-19.940704,22.170200;;,
      10;3;-0.000000,-19.940712,22.170198;;,
      11;3;-0.000000,-19.940706,22.170202;;,
      12;3; 0.000000,-19.940702,22.170200;;,
      13;3; 0.000000,-19.940687,22.170197;;,
      14;3;-0.000000,-19.940714,22.170202;;,
      15;3;-0.000001,-19.940710,22.170198;;,
      16;3; 0.000001,-19.940697,22.170202;;,
      17;3; 0.000001,-19.940699,22.170200;;,
      18;3;-0.000000,-19.940708,22.170202;;,
      19;3;-0.000000,-19.940716,22.170198;;,
      20;3; 0.000000,-19.940704,22.170202;;,
      21;3; 0.000000,-19.940702,22.170198;;,
      22;3; 0.000001,-19.940701,22.170200;;,
      23;3;-0.000000,-19.940710,22.170202;;,
      24;3; 0.000000,-19.940699,22.170198;;,
      25;3; 0.000001,-19.940701,22.170198;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth2}
    AnimationKey { // Rotation
      0;
      26;
      0;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      1;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      2;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      3;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      4;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      5;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      6;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      7;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      8;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      9;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      10;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      11;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      12;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      13;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      14;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      15;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      16;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      17;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      18;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      19;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      20;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      21;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      22;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      23;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      24;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      25;4; 0.000000, 0.000000, 1.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000000,10.763302, 0.000003;;,
      1;3;-0.000000,10.763288, 0.000001;;,
      2;3;-0.000001,10.763298,-0.000001;;,
      3;3;-0.000000,10.763300, 0.000004;;,
      4;3; 0.000000,10.763296, 0.000005;;,
      5;3;-0.000000,10.763299, 0.000005;;,
      6;3; 0.000000,10.763295,-0.000003;;,
      7;3;-0.000001,10.763295, 0.000002;;,
      8;3;-0.000000,10.763300, 0.000002;;,
      9;3; 0.000000,10.763296, 0.000000;;,
      10;3;-0.000000,10.763297,-0.000003;;,
      11;3;-0.000000,10.763293, 0.000002;;,
      12;3; 0.000000,10.763296, 0.000003;;,
      13;3;-0.000000,10.763299,-0.000000;;,
      14;3; 0.000000,10.763302,-0.000001;;,
      15;3;-0.000000,10.763296,-0.000002;;,
      16;3; 0.000001,10.763296,-0.000001;;,
      17;3; 0.000000,10.763295,-0.000000;;,
      18;3;-0.000000,10.763297,-0.000001;;,
      19;3; 0.000001,10.763301,-0.000001;;,
      20;3;-0.000000,10.763305,-0.000001;;,
      21;3; 0.000000,10.763299, 0.000002;;,
      22;3;-0.000000,10.763294, 0.000001;;,
      23;3;-0.000000,10.763295,-0.000001;;,
      24;3;-0.000000,10.763297, 0.000000;;,
      25;3; 0.000000,10.763296,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      1;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      2;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      3;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      4;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      5;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      6;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      7;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      8;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      9;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      10;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      11;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      12;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      13;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      14;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      15;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      16;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      17;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      18;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      19;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      20;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      21;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      22;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      23;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      24;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      25;4;-0.000000,-0.000000, 1.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;-0.000000,13.749507,-0.000004;;,
      1;3; 0.000000,13.749502, 0.000002;;,
      2;3;-0.000001,13.749504,-0.000008;;,
      3;3; 0.000001,13.749514,-0.000002;;,
      4;3; 0.000000,13.749511, 0.000000;;,
      5;3; 0.000000,13.749507,-0.000003;;,
      6;3; 0.000000,13.749515, 0.000005;;,
      7;3; 0.000000,13.749510, 0.000002;;,
      8;3; 0.000001,13.749514, 0.000001;;,
      9;3; 0.000000,13.749508, 0.000001;;,
      10;3;-0.000001,13.749507, 0.000002;;,
      11;3; 0.000000,13.749512, 0.000001;;,
      12;3;-0.000001,13.749504,-0.000000;;,
      13;3; 0.000000,13.749505,-0.000002;;,
      14;3; 0.000000,13.749514, 0.000000;;,
      15;3; 0.000000,13.749508, 0.000001;;,
      16;3;-0.000000,13.749509, 0.000001;;,
      17;3; 0.000001,13.749511,-0.000001;;,
      18;3; 0.000000,13.749505, 0.000001;;,
      19;3;-0.000000,13.749501, 0.000000;;,
      20;3; 0.000000,13.749511, 0.000000;;,
      21;3;-0.000000,13.749508,-0.000001;;,
      22;3; 0.000000,13.749515, 0.000000;;,
      23;3; 0.000001,13.749507, 0.000002;;,
      24;3;-0.000000,13.749509,-0.000001;;,
      25;3;-0.000000,13.749511,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,14.182600, 0.000003;;,
      1;3;-0.000000,14.182595,-0.000001;;,
      2;3;-0.000001,14.182597, 0.000006;;,
      3;3; 0.000001,14.182597, 0.000005;;,
      4;3;-0.000000,14.182597, 0.000006;;,
      5;3; 0.000000,14.182597,-0.000000;;,
      6;3; 0.000000,14.182600, 0.000001;;,
      7;3;-0.000001,14.182598, 0.000003;;,
      8;3;-0.000000,14.182600,-0.000001;;,
      9;3;-0.000000,14.182598,-0.000002;;,
      10;3; 0.000000,14.182600,-0.000004;;,
      11;3;-0.000000,14.182599, 0.000002;;,
      12;3; 0.000000,14.182598,-0.000001;;,
      13;3; 0.000000,14.182596,-0.000000;;,
      14;3; 0.000000,14.182600,-0.000002;;,
      15;3; 0.000000,14.182598, 0.000001;;,
      16;3; 0.000000,14.182595,-0.000001;;,
      17;3;-0.000000,14.182598, 0.000001;;,
      18;3;-0.000000,14.182599,-0.000000;;,
      19;3; 0.000000,14.182600,-0.000001;;,
      20;3; 0.000001,14.182594, 0.000001;;,
      21;3; 0.000000,14.182598, 0.000000;;,
      22;3;-0.000000,14.182597,-0.000000;;,
      23;3; 0.000000,14.182599,-0.000000;;,
      24;3;-0.000000,14.182602, 0.000000;;,
      25;3; 0.000000,14.182592,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      1;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      2;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      3;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      4;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      5;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      6;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      7;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      8;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      9;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      10;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      11;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      12;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      13;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      14;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      15;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      16;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      17;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      18;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      19;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      20;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      21;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      22;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      23;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      24;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      25;4;-0.707106, 0.000000,-0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3; 0.000000,-5.419195,-29.327000;;,
      1;3; 0.000000,-5.419193,-29.326998;;,
      2;3; 0.000001,-5.419192,-29.327000;;,
      3;3;-0.000000,-5.419185,-29.327000;;,
      4;3; 0.000000,-5.419200,-29.326998;;,
      5;3;-0.000000,-5.419203,-29.327000;;,
      6;3;-0.000000,-5.419198,-29.327002;;,
      7;3; 0.000000,-5.419202,-29.327000;;,
      8;3; 0.000000,-5.419193,-29.326994;;,
      9;3; 0.000001,-5.419197,-29.326998;;,
      10;3;-0.000000,-5.419206,-29.326998;;,
      11;3;-0.000000,-5.419200,-29.327002;;,
      12;3; 0.000000,-5.419196,-29.327000;;,
      13;3; 0.000000,-5.419186,-29.326998;;,
      14;3;-0.000000,-5.419208,-29.327002;;,
      15;3; 0.000001,-5.419199,-29.327000;;,
      16;3;-0.000000,-5.419193,-29.327002;;,
      17;3; 0.000000,-5.419192,-29.326998;;,
      18;3;-0.000001,-5.419199,-29.327000;;,
      19;3;-0.000001,-5.419212,-29.327002;;,
      20;3; 0.000000,-5.419198,-29.327002;;,
      21;3; 0.000001,-5.419191,-29.326996;;,
      22;3;-0.000000,-5.419194,-29.326998;;,
      23;3; 0.000001,-5.419199,-29.326996;;,
      24;3; 0.000001,-5.419193,-29.327002;;,
      25;3;-0.000000,-5.419197,-29.327000;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth2}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;15.308602, 0.000001,-0.000001;;,
      1;3;15.308598, 0.000001,-0.000001;;,
      2;3;15.308601, 0.000001,-0.000000;;,
      3;3;15.308606, 0.000001,-0.000001;;,
      4;3;15.308605, 0.000001, 0.000000;;,
      5;3;15.308601, 0.000001, 0.000001;;,
      6;3;15.308606, 0.000000, 0.000001;;,
      7;3;15.308602, 0.000001, 0.000003;;,
      8;3;15.308609, 0.000000, 0.000001;;,
      9;3;15.308594, 0.000002, 0.000000;;,
      10;3;15.308594, 0.000001, 0.000001;;,
      11;3;15.308612, 0.000002,-0.000000;;,
      12;3;15.308599, 0.000001,-0.000004;;,
      13;3;15.308592, 0.000001, 0.000003;;,
      14;3;15.308593, 0.000001,-0.000000;;,
      15;3;15.308595, 0.000001, 0.000000;;,
      16;3;15.308607, 0.000002, 0.000001;;,
      17;3;15.308603,-0.000000,-0.000001;;,
      18;3;15.308603, 0.000001,-0.000003;;,
      19;3;15.308599, 0.000001, 0.000000;;,
      20;3;15.308612, 0.000000,-0.000001;;,
      21;3;15.308602, 0.000001, 0.000003;;,
      22;3;15.308611, 0.000001, 0.000008;;,
      23;3;15.308603, 0.000001,-0.000000;;,
      24;3;15.308595, 0.000001, 0.000002;;,
      25;3;15.308594, 0.000002, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth3}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;17.777102, 0.000002, 0.000002;;,
      1;3;17.777096, 0.000002,-0.000001;;,
      2;3;17.777103, 0.000002,-0.000000;;,
      3;3;17.777103, 0.000002,-0.000001;;,
      4;3;17.777098, 0.000002, 0.000000;;,
      5;3;17.777096, 0.000002, 0.000001;;,
      6;3;17.777098, 0.000002, 0.000000;;,
      7;3;17.777100, 0.000002, 0.000001;;,
      8;3;17.777098, 0.000002, 0.000003;;,
      9;3;17.777100, 0.000002,-0.000000;;,
      10;3;17.777096, 0.000002,-0.000000;;,
      11;3;17.777094, 0.000002, 0.000001;;,
      12;3;17.777096, 0.000003,-0.000000;;,
      13;3;17.777094, 0.000002, 0.000002;;,
      14;3;17.777100, 0.000002,-0.000001;;,
      15;3;17.777098, 0.000002,-0.000002;;,
      16;3;17.777100, 0.000003, 0.000002;;,
      17;3;17.777100, 0.000001,-0.000001;;,
      18;3;17.777103, 0.000001, 0.000000;;,
      19;3;17.777098, 0.000002,-0.000000;;,
      20;3;17.777105, 0.000000,-0.000005;;,
      21;3;17.777094, 0.000003, 0.000001;;,
      22;3;17.777096, 0.000003, 0.000001;;,
      23;3;17.777100, 0.000003,-0.000000;;,
      24;3;17.777100, 0.000002, 0.000000;;,
      25;3;17.777100, 0.000003,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth4}
    AnimationKey { // Rotation
      0;
      26;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      25;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      26;
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
      25;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      26;
      0;3;15.545400, 0.000002, 0.000000;;,
      1;3;15.545396, 0.000002, 0.000001;;,
      2;3;15.545397, 0.000002,-0.000001;;,
      3;3;15.545397, 0.000002,-0.000000;;,
      4;3;15.545398, 0.000002, 0.000002;;,
      5;3;15.545403, 0.000002, 0.000002;;,
      6;3;15.545401, 0.000002, 0.000000;;,
      7;3;15.545402, 0.000001, 0.000002;;,
      8;3;15.545403, 0.000002, 0.000000;;,
      9;3;15.545395, 0.000002, 0.000002;;,
      10;3;15.545399, 0.000002,-0.000000;;,
      11;3;15.545394, 0.000003, 0.000001;;,
      12;3;15.545398, 0.000002,-0.000003;;,
      13;3;15.545395, 0.000002, 0.000004;;,
      14;3;15.545401, 0.000002,-0.000005;;,
      15;3;15.545403, 0.000001, 0.000002;;,
      16;3;15.545399, 0.000003, 0.000003;;,
      17;3;15.545398, 0.000001,-0.000001;;,
      18;3;15.545403, 0.000000, 0.000000;;,
      19;3;15.545394, 0.000002,-0.000002;;,
      20;3;15.545404, 0.000003, 0.000003;;,
      21;3;15.545397, 0.000001, 0.000003;;,
      22;3;15.545396, 0.000002,-0.000000;;,
      23;3;15.545402, 0.000002,-0.000000;;,
      24;3;15.545395, 0.000002, 0.000003;;,
      25;3;15.545393, 0.000001, 0.000000;;;
    }
  }
} // End of AnimationSet Global
