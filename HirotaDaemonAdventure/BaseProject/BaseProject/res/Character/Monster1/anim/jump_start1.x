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
         0.979352, 0.020084, 0.201162, 0.000000,
        -0.086843, 0.940361, 0.328906, 0.000000,
        -0.182559,-0.339584, 0.922689, 0.000000,
         0.075685,76.556389,-0.189475, 1.000000;;
      }
      Frame Armature_mixamorig_BackCloth1 {
        FrameTransformMatrix {
          -0.000002,-1.000000, 0.000000, 0.000000,
           1.000000,-0.000002, 0.000000, 0.000000,
          -0.000000,-0.000000, 1.000000, 0.000000,
           0.000000,-5.419202,-29.327000, 1.000000;;
        }
        Frame Armature_mixamorig_BackCloth2 {
          FrameTransformMatrix {
             1.000000,-0.000000,-0.000000, 0.000000,
             0.000000, 1.000000, 0.000000, 0.000000,
             0.000000, 0.000000, 1.000000, 0.000000,
            15.308598, 0.000001, 0.000000, 1.000000;;
          }
          Frame Armature_mixamorig_BackCloth3 {
            FrameTransformMatrix {
               1.000000,-0.000000,-0.000000, 0.000000,
               0.000000, 1.000000, 0.000000, 0.000000,
               0.000000, 0.000000, 1.000000, 0.000000,
              17.777096, 0.000002,-0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_BackCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000, 0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                15.545394, 0.000002,-0.000003, 1.000000;;
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
           0.000000,-19.940708,22.170202, 1.000000;;
        }
        Frame Armature_mixamorig_FrontCloth2 {
          FrameTransformMatrix {
            -1.000000,-0.000000, 0.000000, 0.000000,
             0.000000, 1.000000, 0.000000, 0.000000,
            -0.000000, 0.000000,-1.000000, 0.000000,
            -0.000000,10.763301,-0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_FrontCloth3 {
            FrameTransformMatrix {
              -1.000000,-0.000000,-0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
               0.000000,-0.000000,-1.000000, 0.000000,
               0.000000,13.749504, 0.000000, 1.000000;;
            }
            Frame Armature_mixamorig_FrontCloth4 {
              FrameTransformMatrix {
                 1.000000, 0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000,-0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                 0.000000,14.182597, 0.000001, 1.000000;;
              }
            } // End of Armature_mixamorig_FrontCloth4
          } // End of Armature_mixamorig_FrontCloth3
        } // End of Armature_mixamorig_FrontCloth2
      } // End of Armature_mixamorig_FrontCloth1
      Frame Armature_mixamorig_LeftUpLeg {
        FrameTransformMatrix {
          -0.971789, 0.192824, 0.135816, 0.000000,
           0.101088,-0.179749, 0.978505, 0.000000,
           0.213092, 0.964629, 0.155186, 0.000000,
          19.899096,-7.885098,-3.429502, 1.000000;;
        }
        Frame Armature_mixamorig_LeftLeg {
          FrameTransformMatrix {
             0.995287, 0.015582,-0.095710, 0.000000,
            -0.039795,-0.834432,-0.549673, 0.000000,
            -0.088429, 0.550891,-0.829879, 0.000000,
            -0.000000,38.282917, 0.000003, 1.000000;;
          }
          Frame Armature_mixamorig_LeftFoot {
            FrameTransformMatrix {
               0.944925, 0.290835, 0.150107, 0.000000,
              -0.241728, 0.310976, 0.919163, 0.000000,
               0.220645,-0.904826, 0.364152, 0.000000,
               0.000001,32.683987, 0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_LeftToeBase {
              FrameTransformMatrix {
                 0.987929,-0.047408, 0.147474, 0.000000,
                -0.095673, 0.562008, 0.821580, 0.000000,
                -0.121831,-0.825772, 0.550688, 0.000000,
                 0.000002,27.100002, 0.000001, 1.000000;;
              }
              Frame Armature_mixamorig_LeftToe_End {
                FrameTransformMatrix {
                   1.000000, 0.000000,-0.000000, 0.000000,
                  -0.000000, 1.000000, 0.000000, 0.000000,
                   0.000000, 0.000000, 1.000000, 0.000000,
                  -0.000002,16.631994,-0.000000, 1.000000;;
                }
              } // End of Armature_mixamorig_LeftToe_End
            } // End of Armature_mixamorig_LeftToeBase
          } // End of Armature_mixamorig_LeftFoot
        } // End of Armature_mixamorig_LeftLeg
      } // End of Armature_mixamorig_LeftUpLeg
      Frame Armature_mixamorig_RightUpLeg {
        FrameTransformMatrix {
          -0.991603, 0.127566,-0.021227, 0.000000,
          -0.118244,-0.827910, 0.548254, 0.000000,
           0.052365, 0.546159, 0.836040, 0.000000,
          -19.899097,-7.885003,-3.429503, 1.000000;;
        }
        Frame Armature_mixamorig_RightLeg {
          FrameTransformMatrix {
             0.986913, 0.093481, 0.131393, 0.000000,
             0.127180, 0.049714,-0.990633, 0.000000,
            -0.099137, 0.994379, 0.037175, 0.000000,
            -0.000002,38.282906,-0.000000, 1.000000;;
          }
          Frame Armature_mixamorig_RightFoot {
            FrameTransformMatrix {
               0.998762, 0.030547, 0.039251, 0.000000,
              -0.032631,-0.193145, 0.980628, 0.000000,
               0.037536,-0.980695,-0.191909, 0.000000,
               0.000001,32.684063,-0.000004, 1.000000;;
            }
            Frame Armature_mixamorig_RightToeBase {
              FrameTransformMatrix {
                 0.996958,-0.037519,-0.068316, 0.000000,
                 0.077752, 0.417956, 0.905134, 0.000000,
                -0.005407,-0.907692, 0.419602, 0.000000,
                 0.000001,27.100012,-0.000001, 1.000000;;
              }
              Frame Armature_mixamorig_RightToe_End {
                FrameTransformMatrix {
                   1.000000,-0.000000,-0.000000, 0.000000,
                   0.000000, 1.000000, 0.000000, 0.000000,
                  -0.000000,-0.000000, 1.000000, 0.000000,
                  -0.000002,16.631945, 0.000000, 1.000000;;
                }
              } // End of Armature_mixamorig_RightToe_End
            } // End of Armature_mixamorig_RightToeBase
          } // End of Armature_mixamorig_RightFoot
        } // End of Armature_mixamorig_RightLeg
      } // End of Armature_mixamorig_RightUpLeg
      Frame Armature_mixamorig_Spine {
        FrameTransformMatrix {
           0.990897,-0.030421,-0.131140, 0.000000,
           0.091898, 0.864710, 0.493794, 0.000000,
           0.098376,-0.501350, 0.859634, 0.000000,
          -0.000000,13.784796, 0.064398, 1.000000;;
        }
        Frame Armature_mixamorig_Spine1 {
          FrameTransformMatrix {
             0.999427,-0.011293,-0.031901, 0.000000,
             0.012143, 0.999573, 0.026564, 0.000000,
             0.031587,-0.026936, 0.999138, 0.000000,
            -0.000000,12.024304,-0.000005, 1.000000;;
          }
          Frame Armature_mixamorig_Spine2 {
            FrameTransformMatrix {
               0.999388,-0.012574,-0.032649, 0.000000,
               0.012962, 0.999847, 0.011710, 0.000000,
               0.032497,-0.012126, 0.999398, 0.000000,
               0.000000,17.815802, 0.000003, 1.000000;;
            }
            Frame Armature_mixamorig_LeftShoulder {
              FrameTransformMatrix {
                -0.068764, 0.082902,-0.994183, 0.000000,
                 0.997553, 0.018358,-0.067466, 0.000000,
                 0.012658,-0.996389,-0.083961, 0.000000,
                17.399496,24.614185, 1.157899, 1.000000;;
              }
              Frame Armature_mixamorig_LeftArm {
                FrameTransformMatrix {
                   0.974179, 0.126610, 0.186934, 0.000000,
                  -0.213981, 0.253660, 0.943329, 0.000000,
                   0.072017,-0.958972, 0.274202, 0.000000,
                  -0.000004,19.910400,-0.000005, 1.000000;;
                }
                Frame Armature_mixamorig_LeftForeArm {
                  FrameTransformMatrix {
                     0.555942, 0.805210, 0.206311, 0.000000,
                    -0.800451, 0.585517,-0.128253, 0.000000,
                    -0.224069,-0.093841, 0.970045, 0.000000,
                     0.000001,49.301300, 0.000001, 1.000000;;
                  }
                  Frame Armature_mixamorig_LeftHand {
                    FrameTransformMatrix {
                       0.896333, 0.442940, 0.019784, 0.000000,
                      -0.442414, 0.890538, 0.105888, 0.000000,
                       0.029283,-0.103664, 0.994181, 0.000000,
                      -0.000000,31.604710, 0.000008, 1.000000;;
                    }
                    Frame Armature_mixamorig_LeftHandIndex1 {
                      FrameTransformMatrix {
                         0.991326, 0.108189, 0.074618, 0.000000,
                        -0.131091, 0.773437, 0.620171, 0.000000,
                         0.009384,-0.624573, 0.780910, 0.000000,
                        -6.192901,21.271084, 0.498713, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandIndex2 {
                        FrameTransformMatrix {
                           0.997013, 0.077237, 0.000157, 0.000000,
                          -0.057362, 0.739093, 0.671156, 0.000000,
                           0.051722,-0.669160, 0.741316, 0.000000,
                          -0.000002, 7.536497,-0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandIndex3 {
                          FrameTransformMatrix {
                             0.999426,-0.033649,-0.003974, 0.000000,
                             0.033882, 0.993390, 0.109671, 0.000000,
                             0.000258,-0.109742, 0.993960, 0.000000,
                             0.000004, 7.512301, 0.000000, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000000,10.212399,-0.000003, 1.000000;;
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
                         0.016498,23.334379, 0.008612, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandMiddle2 {
                        FrameTransformMatrix {
                           0.996316, 0.085745, 0.001058, 0.000000,
                          -0.055027, 0.629817, 0.774792, 0.000000,
                           0.065768,-0.771996, 0.632216, 0.000000,
                          -0.000002, 6.996590,-0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandMiddle3 {
                          FrameTransformMatrix {
                             0.999600,-0.026512,-0.009804, 0.000000,
                             0.028253, 0.947885, 0.317357, 0.000000,
                             0.000879,-0.317508, 0.948255, 0.000000,
                            -0.000000, 7.016002, 0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000005, 7.721602, 0.000003, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandMiddle4
                        } // End of Armature_mixamorig_LeftHandMiddle3
                      } // End of Armature_mixamorig_LeftHandMiddle2
                    } // End of Armature_mixamorig_LeftHandMiddle1
                    Frame Armature_mixamorig_LeftHandPinky1 {
                      FrameTransformMatrix {
                         0.990344, 0.092984, 0.102826, 0.000000,
                        -0.138098, 0.596560, 0.790599, 0.000000,
                         0.012171,-0.797164, 0.603640, 0.000000,
                        11.443198,18.881184, 0.461814, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandPinky2 {
                        FrameTransformMatrix {
                           0.999997, 0.001921, 0.001356, 0.000000,
                          -0.001849, 0.286580, 0.958055, 0.000000,
                           0.001451,-0.958054, 0.286583, 0.000000,
                           0.000001, 4.919600, 0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandPinky3 {
                          FrameTransformMatrix {
                             1.000000, 0.000955, 0.000251, 0.000000,
                            -0.000955, 0.870704, 0.491807, 0.000000,
                             0.000251,-0.491807, 0.870705, 0.000000,
                            -0.000002, 5.233000,-0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandPinky4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000001, 5.571698,-0.000002, 1.000000;;
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
                         6.516895,22.686588, 0.103607, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandRing2 {
                        FrameTransformMatrix {
                           0.999735, 0.017324, 0.015160, 0.000000,
                          -0.022982, 0.712828, 0.700963, 0.000000,
                           0.001337,-0.701125, 0.713037, 0.000000,
                           0.000005, 6.408605,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandRing3 {
                          FrameTransformMatrix {
                             0.999777,-0.021120, 0.000957, 0.000000,
                             0.020075, 0.962567, 0.270299, 0.000000,
                            -0.006630,-0.270219, 0.962776, 0.000000,
                            -0.000001, 6.150299,-0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandRing4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000001, 6.145400,-0.000003, 1.000000;;
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
                        -7.059607, 6.094483, 4.397210, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandThumb2 {
                        FrameTransformMatrix {
                           0.955044,-0.274564,-0.111826, 0.000000,
                           0.291588, 0.938075, 0.187061, 0.000000,
                           0.053541,-0.211258, 0.975963, 0.000000,
                          -0.000006, 7.536494, 0.000010, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandThumb3 {
                          FrameTransformMatrix {
                             0.618160, 0.106693,-0.778778, 0.000000,
                             0.120986, 0.966025, 0.228379, 0.000000,
                             0.776686,-0.235396, 0.584250, 0.000000,
                            -0.000004, 7.512302, 0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000000,10.212399,-0.000001, 1.000000;;
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
                 0.999574,-0.018030,-0.022957, 0.000000,
                 0.013516, 0.982935,-0.183457, 0.000000,
                 0.025873, 0.183069, 0.982760, 0.000000,
                 0.000001,39.117596,11.976997, 1.000000;;
              }
              Frame Armature_mixamorig_Head {
                FrameTransformMatrix {
                   0.993772,-0.061389, 0.093002, 0.000000,
                   0.096051, 0.895015,-0.435572, 0.000000,
                  -0.056498, 0.441792, 0.895337, 0.000000,
                  -0.000000,14.552518,15.664102, 1.000000;;
                }
                Frame Armature_mixamorig_HeadTop_End {
                  FrameTransformMatrix {
                     1.000000, 0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                    -0.000000,15.601691, 7.553698, 1.000000;;
                  }
                } // End of Armature_mixamorig_HeadTop_End
                Frame Armature_mixamorig_Jaw {
                  FrameTransformMatrix {
                     1.000000, 0.000000, 0.000000, 0.000000,
                    -0.000000,-0.587429, 0.809276, 0.000000,
                    -0.000000,-0.809276,-0.587429, 0.000000,
                    -0.000000,-2.317802, 3.620695, 1.000000;;
                  }
                } // End of Armature_mixamorig_Jaw
                Frame Armature_mixamorig_LeftEye {
                  FrameTransformMatrix {
                     1.000000, 0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                     3.528700, 2.462095,12.838194, 1.000000;;
                  }
                } // End of Armature_mixamorig_LeftEye
                Frame Armature_mixamorig_RightEye {
                  FrameTransformMatrix {
                     1.000000, 0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                    -0.000000, 0.000000, 1.000000, 0.000000,
                    -3.528701, 2.462090,12.838194, 1.000000;;
                  }
                } // End of Armature_mixamorig_RightEye
              } // End of Armature_mixamorig_Head
            } // End of Armature_mixamorig_Neck
            Frame Armature_mixamorig_RightShoulder {
              FrameTransformMatrix {
                 0.295263,-0.030498, 0.954929, 0.000000,
                -0.891423, 0.350846, 0.286832, 0.000000,
                -0.343780,-0.935936, 0.076406, 0.000000,
                -17.399502,24.614296, 1.157898, 1.000000;;
              }
              Frame Armature_mixamorig_RightArm {
                FrameTransformMatrix {
                   0.851927, 0.186991,-0.489136, 0.000000,
                   0.410369, 0.341845, 0.845422, 0.000000,
                   0.325295,-0.920965, 0.214492, 0.000000,
                  -0.000008,19.910404, 0.000002, 1.000000;;
                }
                Frame Armature_mixamorig_RightArmour1 {
                  FrameTransformMatrix {
                    -0.000000,-1.000000,-0.000001, 0.000000,
                    -0.000000, 0.000001,-1.000000, 0.000000,
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -1.467294, 5.012922,-18.471138, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightArmour2 {
                    FrameTransformMatrix {
                      -0.915901, 0.232054,-0.327534, 0.000000,
                      -0.183487,-0.967759,-0.172553, 0.000000,
                      -0.357018,-0.097943, 0.928950, 0.000000,
                       3.884889,-9.462715,-18.584904, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour3 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000001,11.039511, 0.000003, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour3
                  } // End of Armature_mixamorig_RightArmour2
                  Frame Armature_mixamorig_RightArmour4 {
                    FrameTransformMatrix {
                       0.708033,-0.251874, 0.659734, 0.000000,
                      -0.431906,-0.893578, 0.122374, 0.000000,
                       0.558701,-0.371588,-0.741469, 0.000000,
                      -2.648914,-11.494602,22.195292, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour5 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000002,11.039503,-0.000002, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour5
                  } // End of Armature_mixamorig_RightArmour4
                } // End of Armature_mixamorig_RightArmour1
                Frame Armature_mixamorig_RightForeArm {
                  FrameTransformMatrix {
                     0.113476,-0.974689,-0.192625, 0.000000,
                     0.990785, 0.125443,-0.051074, 0.000000,
                     0.073944,-0.185054, 0.979942, 0.000000,
                    -0.000000,49.301296, 0.000021, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightHand {
                    FrameTransformMatrix {
                       0.966694,-0.255008,-0.021736, 0.000000,
                       0.254814, 0.951055, 0.174827, 0.000000,
                      -0.023910,-0.174543, 0.984359, 0.000000,
                      -0.000001,31.604988,-0.000002, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightHandIndex1 {
                      FrameTransformMatrix {
                         0.998612, 0.052641,-0.001503, 0.000000,
                        -0.023838, 0.477299, 0.878417, 0.000000,
                         0.046959,-0.877163, 0.477892, 0.000000,
                         6.192896,21.270996, 0.498991, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandIndex2 {
                        FrameTransformMatrix {
                           0.997003,-0.077367,-0.000368, 0.000000,
                           0.031055, 0.395833, 0.917797, 0.000000,
                          -0.070862,-0.915058, 0.397049, 0.000000,
                           0.000002, 7.536000, 0.000000, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandIndex3 {
                          FrameTransformMatrix {
                             0.999429, 0.006801, 0.033096, 0.000000,
                            -0.031958, 0.508175, 0.860661, 0.000000,
                            -0.010965,-0.861227, 0.508102, 0.000000,
                            -0.000001, 7.513007,-0.000002, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000002,10.212008,-0.000002, 1.000000;;
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
                        -0.016504,23.333992, 0.008983, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandMiddle2 {
                        FrameTransformMatrix {
                           0.996276,-0.086197,-0.002089, 0.000000,
                           0.010347, 0.095465, 0.995379, 0.000000,
                          -0.085600,-0.991694, 0.096001, 0.000000,
                           0.000000, 6.996994,-0.000010, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandMiddle3 {
                          FrameTransformMatrix {
                             0.999615, 0.022950, 0.015619, 0.000000,
                            -0.027751, 0.841138, 0.540108, 0.000000,
                            -0.000742,-0.540333, 0.841451, 0.000000,
                            -0.000004, 7.016003, 0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000004, 7.720998, 0.000001, 1.000000;;
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
                        -11.443208,18.881001, 0.461992, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandPinky2 {
                        FrameTransformMatrix {
                           0.999999,-0.001574,-0.000811, 0.000000,
                           0.001575, 0.581894, 0.813263, 0.000000,
                          -0.000809,-0.813263, 0.581896, 0.000000,
                          -0.000002, 4.919999,-0.000005, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandPinky3 {
                          FrameTransformMatrix {
                             1.000000,-0.000844,-0.000193, 0.000000,
                             0.000844, 0.900092, 0.435699, 0.000000,
                            -0.000194,-0.435699, 0.900093, 0.000000,
                            -0.000005, 5.233001,-0.000000, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandPinky4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000006, 5.570995,-0.000001, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandPinky4
                        } // End of Armature_mixamorig_RightHandPinky3
                      } // End of Armature_mixamorig_RightHandPinky2
                    } // End of Armature_mixamorig_RightHandPinky1
                    Frame Armature_mixamorig_RightHandRing1 {
                      FrameTransformMatrix {
                         0.996644, 0.080515, 0.014729, 0.000000,
                        -0.029579, 0.186498, 0.982010, 0.000000,
                         0.076320,-0.979151, 0.188253, 0.000000,
                        -6.516906,22.686001, 0.103982, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandRing2 {
                        FrameTransformMatrix {
                           0.999700,-0.020680,-0.013161, 0.000000,
                           0.018563, 0.288066, 0.957430, 0.000000,
                          -0.016009,-0.957387, 0.288363, 0.000000,
                          -0.000001, 6.408997, 0.000010, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandRing3 {
                          FrameTransformMatrix {
                             0.999791, 0.020413,-0.001321, 0.000000,
                            -0.014997, 0.775388, 0.631307, 0.000000,
                             0.013911,-0.631155, 0.775532, 0.000000,
                             0.000003, 6.149983,-0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandRing4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000003, 6.145994, 0.000003, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandRing4
                        } // End of Armature_mixamorig_RightHandRing3
                      } // End of Armature_mixamorig_RightHandRing2
                    } // End of Armature_mixamorig_RightHandRing1
                    Frame Armature_mixamorig_RightHandThumb1 {
                      FrameTransformMatrix {
                         0.976733,-0.103578, 0.187787, 0.000000,
                        -0.095369, 0.574512, 0.812921, 0.000000,
                        -0.192086,-0.811916, 0.551267, 0.000000,
                         7.059694, 6.093999, 4.396984, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandThumb2 {
                        FrameTransformMatrix {
                           0.951153, 0.004347, 0.308690, 0.000000,
                           0.056044, 0.980856,-0.186498, 0.000000,
                          -0.303591, 0.194688, 0.932700, 0.000000,
                           0.000001, 7.536308,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandThumb3 {
                          FrameTransformMatrix {
                             0.927041, 0.226906,-0.298510, 0.000000,
                            -0.296507, 0.930930,-0.213196, 0.000000,
                             0.229516, 0.286152, 0.930290, 0.000000,
                            -0.000002, 7.512698, 0.000007, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000001, 0.000002, 0.000000,
                               0.000001, 1.000000, 0.000001, 0.000000,
                              -0.000002,-0.000001, 1.000000, 0.000000,
                               0.000003,10.212727,-0.000002, 1.000000;;
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
      25;
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
      24;4;-0.707107, 0.707107, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 0.100000, 0.100000, 0.100000;;;
    }
    AnimationKey { // Position
      2;
      25;
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
      24;3; 0.000000, 0.000000, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Hips}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.980102, 0.170515,-0.097878, 0.027275;;,
      1;4;-0.985275, 0.133587,-0.099145, 0.039462;;,
      2;4;-0.989803, 0.098449,-0.092240, 0.045721;;,
      3;4;-0.991340, 0.079979,-0.084753, 0.060545;;,
      4;4;-0.991451, 0.068795,-0.078112, 0.078676;;,
      5;4;-0.990788, 0.062582,-0.073458, 0.095014;;,
      6;4;-0.990083, 0.057232,-0.073972, 0.104825;;,
      7;4;-0.989622, 0.052403,-0.075513, 0.110449;;,
      8;4;-0.989466, 0.047855,-0.078564, 0.111778;;,
      9;4;-0.989628, 0.043157,-0.081625, 0.110050;;,
      10;4;-0.989775, 0.038061,-0.085409, 0.107713;;,
      11;4;-0.990036, 0.032126,-0.087603, 0.105463;;,
      12;4;-0.990621, 0.024842,-0.084971, 0.104082;;,
      13;4;-0.990965, 0.014406,-0.079435, 0.107104;;,
      14;4;-0.991923, 0.003967,-0.073149, 0.103551;;,
      15;4;-0.993520,-0.007249,-0.064501, 0.093295;;,
      16;4;-0.995232,-0.018682,-0.054878, 0.078442;;,
      17;4;-0.996359,-0.029622,-0.047924, 0.063982;;,
      18;4;-0.996707,-0.039565,-0.045049, 0.054594;;,
      19;4;-0.996939,-0.048279,-0.040148, 0.046577;;,
      20;4;-0.997156,-0.055039,-0.034660, 0.038062;;,
      21;4;-0.997319,-0.059226,-0.030464, 0.030311;;,
      22;4;-0.997718,-0.055461,-0.030231, 0.023857;;,
      23;4;-0.998019,-0.049912,-0.032314, 0.020581;;,
      24;4;-0.998137,-0.045078,-0.035922, 0.020022;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.075685,76.556389,-0.189475;;,
      1;3; 0.434597,76.556389, 3.961438;;,
      2;3; 0.892394,76.556389, 8.357746;;,
      3;3; 0.660691,76.556389,12.120657;;,
      4;3;-0.125932,76.556389,15.410654;;,
      5;3;-1.152493,76.556389,17.964619;;,
      6;3;-1.506205,76.556389,19.148752;;,
      7;3;-2.042647,76.556381,19.828911;;,
      8;3;-2.345769,76.556381,20.559681;;,
      9;3;-2.337389,76.556381,21.039555;;,
      10;3;-2.219434,76.556381,21.001276;;,
      11;3;-2.133184,76.556381,20.496365;;,
      12;3;-2.187858,76.556381,19.673407;;,
      13;3;-2.511219,76.556381,18.625343;;,
      14;3;-2.707330,76.556381,18.489115;;,
      15;3;-2.834021,76.556381,18.959719;;,
      16;3;-2.683196,76.556381,20.312368;;,
      17;3;-2.041361,76.556381,21.223778;;,
      18;3;-1.753759,76.556381,21.269644;;,
      19;3;-2.050000,76.556381,21.155842;;,
      20;3;-2.010456,76.556381,20.691389;;,
      21;3;-1.513428,76.556389,19.898363;;,
      22;3;-1.284108,76.556389,19.518032;;,
      23;3;-1.218322,76.556389,18.945683;;,
      24;3;-1.358885,76.556389,18.094240;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.963748, 0.258144, 0.059537,-0.031730;;,
      1;4;-0.964104, 0.247169, 0.089082,-0.038411;;,
      2;4;-0.963633, 0.242045, 0.105645,-0.040799;;,
      3;4;-0.963800, 0.234279, 0.116008,-0.052385;;,
      4;4;-0.963602, 0.227550, 0.122572,-0.068334;;,
      5;4;-0.962471, 0.226203, 0.123675,-0.084772;;,
      6;4;-0.961556, 0.226286, 0.120809,-0.098033;;,
      7;4;-0.960928, 0.227681, 0.114873,-0.107621;;,
      8;4;-0.960528, 0.230217, 0.107660,-0.113116;;,
      9;4;-0.960359, 0.234051, 0.098709,-0.114838;;,
      10;4;-0.960000, 0.239198, 0.089357,-0.114894;;,
      11;4;-0.959511, 0.245827, 0.078530,-0.112872;;,
      12;4;-0.958932, 0.254201, 0.064235,-0.108186;;,
      13;4;-0.956696, 0.270146, 0.043800,-0.099172;;,
      14;4;-0.953250, 0.288883, 0.027702,-0.084227;;,
      15;4;-0.948723, 0.309747, 0.011713,-0.061997;;,
      16;4;-0.942709, 0.331717,-0.003588,-0.035382;;,
      17;4;-0.935200, 0.353579,-0.016352,-0.010748;;,
      18;4;-0.926903, 0.374279,-0.026878, 0.006578;;,
      19;4;-0.918392, 0.393067,-0.039717, 0.021838;;,
      20;4;-0.910250, 0.409113,-0.052619, 0.036092;;,
      21;4;-0.903276, 0.421628,-0.063946, 0.047270;;,
      22;4;-0.901615, 0.424037,-0.068465, 0.050954;;,
      23;4;-0.902448, 0.422279,-0.069261, 0.049715;;,
      24;4;-0.904930, 0.417738,-0.067788, 0.044738;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,13.784796, 0.064398;;,
      1;3;-0.000000,13.784799, 0.064400;;,
      2;3;-0.000001,13.784792, 0.064399;;,
      3;3;-0.000002,13.784798, 0.064400;;,
      4;3; 0.000002,13.784796, 0.064401;;,
      5;3; 0.000001,13.784805, 0.064400;;,
      6;3;-0.000001,13.784792, 0.064397;;,
      7;3;-0.000001,13.784796, 0.064400;;,
      8;3;-0.000001,13.784789, 0.064400;;,
      9;3; 0.000001,13.784809, 0.064399;;,
      10;3; 0.000000,13.784808, 0.064399;;,
      11;3;-0.000002,13.784793, 0.064400;;,
      12;3; 0.000000,13.784796, 0.064398;;,
      13;3;-0.000001,13.784803, 0.064402;;,
      14;3;-0.000002,13.784790, 0.064400;;,
      15;3; 0.000000,13.784795, 0.064400;;,
      16;3; 0.000001,13.784795, 0.064400;;,
      17;3;-0.000000,13.784796, 0.064401;;,
      18;3; 0.000000,13.784793, 0.064401;;,
      19;3; 0.000000,13.784801, 0.064403;;,
      20;3; 0.000000,13.784803, 0.064398;;,
      21;3;-0.000000,13.784799, 0.064402;;,
      22;3;-0.000000,13.784799, 0.064400;;,
      23;3; 0.000000,13.784796, 0.064402;;,
      24;3;-0.000000,13.784792, 0.064402;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.999767, 0.013378, 0.015876,-0.005860;;,
      1;4;-0.999630, 0.012517, 0.023223,-0.006644;;,
      2;4;-0.999542, 0.012150, 0.026670,-0.007531;;,
      3;4;-0.999474, 0.011581, 0.028834,-0.009301;;,
      4;4;-0.999429, 0.011036, 0.029993,-0.010968;;,
      5;4;-0.999444, 0.010752, 0.029420,-0.011440;;,
      6;4;-0.999480, 0.010541, 0.028191,-0.011531;;,
      7;4;-0.999533, 0.010417, 0.026383,-0.011341;;,
      8;4;-0.999596, 0.010399, 0.024070,-0.010970;;,
      9;4;-0.999662, 0.010501, 0.021326,-0.010525;;,
      10;4;-0.999725, 0.010740, 0.018228,-0.010102;;,
      11;4;-0.999780, 0.011130, 0.014850,-0.009804;;,
      12;4;-0.999821, 0.011683, 0.011268,-0.009736;;,
      13;4;-0.999849, 0.012926, 0.006014,-0.009932;;,
      14;4;-0.999827, 0.015543, 0.002023,-0.010002;;,
      15;4;-0.999772, 0.018770,-0.001725,-0.010079;;,
      16;4;-0.999684, 0.022390,-0.005204,-0.010154;;,
      17;4;-0.999570, 0.026186,-0.008385,-0.010215;;,
      18;4;-0.999436, 0.029941,-0.011242,-0.010247;;,
      19;4;-0.999294, 0.033440,-0.013748,-0.010231;;,
      20;4;-0.999157, 0.036468,-0.015876,-0.010146;;,
      21;4;-0.999042, 0.038807,-0.017600,-0.009970;;,
      22;4;-0.999022, 0.039430,-0.017675,-0.009430;;,
      23;4;-0.999051, 0.039054,-0.017001,-0.009150;;,
      24;4;-0.999113, 0.037821,-0.015961,-0.009347;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,12.024304,-0.000005;;,
      1;3; 0.000001,12.024302, 0.000004;;,
      2;3;-0.000001,12.024304, 0.000004;;,
      3;3;-0.000001,12.024302,-0.000003;;,
      4;3; 0.000000,12.024311,-0.000016;;,
      5;3;-0.000001,12.024287, 0.000001;;,
      6;3;-0.000000,12.024294,-0.000001;;,
      7;3;-0.000000,12.024303,-0.000002;;,
      8;3;-0.000000,12.024303, 0.000003;;,
      9;3; 0.000000,12.024305,-0.000002;;,
      10;3; 0.000000,12.024304,-0.000001;;,
      11;3;-0.000000,12.024286, 0.000005;;,
      12;3;-0.000000,12.024302, 0.000001;;,
      13;3; 0.000001,12.024300,-0.000001;;,
      14;3;-0.000000,12.024297, 0.000000;;,
      15;3; 0.000000,12.024288, 0.000006;;,
      16;3; 0.000002,12.024311, 0.000003;;,
      17;3; 0.000000,12.024297,-0.000001;;,
      18;3; 0.000002,12.024312,-0.000005;;,
      19;3;-0.000000,12.024294,-0.000003;;,
      20;3;-0.000002,12.024297, 0.000001;;,
      21;3; 0.000001,12.024292, 0.000003;;,
      22;3;-0.000000,12.024290,-0.000002;;,
      23;3;-0.000001,12.024301, 0.000001;;,
      24;3; 0.000000,12.024302, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.999829, 0.005960, 0.016289,-0.006385;;,
      1;4;-0.999679, 0.005109, 0.023693,-0.007360;;,
      2;4;-0.999583, 0.004730, 0.027211,-0.008427;;,
      3;4;-0.999504, 0.004125, 0.029473,-0.010325;;,
      4;4;-0.999449, 0.003564, 0.030719,-0.012092;;,
      5;4;-0.999459, 0.003351, 0.030178,-0.012628;;,
      6;4;-0.999494, 0.003238, 0.028962,-0.012769;;,
      7;4;-0.999546, 0.003237, 0.027155,-0.012616;;,
      8;4;-0.999610, 0.003360, 0.024842,-0.012273;;,
      9;4;-0.999679, 0.003618, 0.022106,-0.011844;;,
      10;4;-0.999745, 0.004022, 0.019032,-0.011431;;,
      11;4;-0.999804, 0.004580, 0.015703,-0.011139;;,
      12;4;-0.999850, 0.005301, 0.012205,-0.011073;;,
      13;4;-0.999889, 0.006753, 0.007128,-0.011238;;,
      14;4;-0.999885, 0.009541, 0.003354,-0.011257;;,
      15;4;-0.999853, 0.012929,-0.000155,-0.011269;;,
      16;4;-0.999791, 0.016702,-0.003382,-0.011272;;,
      17;4;-0.999704, 0.020643,-0.006310,-0.011259;;,
      18;4;-0.999596, 0.024537,-0.008924,-0.011220;;,
      19;4;-0.999478, 0.028169,-0.011206,-0.011143;;,
      20;4;-0.999362, 0.031323,-0.013141,-0.011013;;,
      21;4;-0.999262, 0.033784,-0.014712,-0.010815;;,
      22;4;-0.999243, 0.034497,-0.014751,-0.010319;;,
      23;4;-0.999264, 0.034205,-0.014081,-0.010148;;,
      24;4;-0.999313, 0.033064,-0.013057,-0.010507;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000,17.815802, 0.000003;;,
      1;3;-0.000000,17.815807, 0.000001;;,
      2;3; 0.000001,17.815794,-0.000015;;,
      3;3;-0.000001,17.815809, 0.000002;;,
      4;3;-0.000002,17.815790, 0.000003;;,
      5;3; 0.000000,17.815809,-0.000000;;,
      6;3; 0.000001,17.815811,-0.000004;;,
      7;3; 0.000000,17.815790,-0.000001;;,
      8;3; 0.000001,17.815811,-0.000004;;,
      9;3;-0.000000,17.815811, 0.000001;;,
      10;3; 0.000000,17.815802, 0.000004;;,
      11;3; 0.000001,17.815788,-0.000010;;,
      12;3; 0.000000,17.815796,-0.000006;;,
      13;3; 0.000000,17.815800,-0.000005;;,
      14;3;-0.000001,17.815794, 0.000002;;,
      15;3; 0.000001,17.815798,-0.000004;;,
      16;3; 0.000001,17.815807,-0.000001;;,
      17;3;-0.000001,17.815807,-0.000002;;,
      18;3; 0.000001,17.815805, 0.000006;;,
      19;3; 0.000000,17.815802,-0.000007;;,
      20;3; 0.000000,17.815798,-0.000001;;,
      21;3; 0.000002,17.815804, 0.000002;;,
      22;3; 0.000001,17.815804,-0.000003;;,
      23;3;-0.000001,17.815798, 0.000002;;,
      24;3; 0.000001,17.815805,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.995649,-0.092032, 0.012261,-0.007921;;,
      1;4;-0.997451,-0.070229, 0.002926,-0.012303;;,
      2;4;-0.998731,-0.047988,-0.006256,-0.013940;;,
      3;4;-0.999408,-0.027166,-0.014812,-0.015072;;,
      4;4;-0.999598,-0.007801,-0.021645,-0.016559;;,
      5;4;-0.999426, 0.011016,-0.025959,-0.018794;;,
      6;4;-0.998924, 0.030054,-0.027921,-0.021625;;,
      7;4;-0.998078, 0.049274,-0.028301,-0.024734;;,
      8;4;-0.996916, 0.067948,-0.027683,-0.027830;;,
      9;4;-0.995568, 0.085015,-0.026153,-0.030528;;,
      10;4;-0.994234, 0.099472,-0.023531,-0.032403;;,
      11;4;-0.993099, 0.110631,-0.019817,-0.033512;;,
      12;4;-0.992325, 0.117664,-0.015444,-0.034765;;,
      13;4;-0.992162, 0.118743,-0.011170,-0.037283;;,
      14;4;-0.992872, 0.111581,-0.007704,-0.041190;;,
      15;4;-0.994374, 0.095556,-0.005258,-0.045419;;,
      16;4;-0.996136, 0.072949,-0.003253,-0.048795;;,
      17;4;-0.997560, 0.047806,-0.000531,-0.050879;;,
      18;4;-0.998356, 0.023996, 0.003766,-0.051911;;,
      19;4;-0.998577, 0.004247, 0.009295,-0.052336;;,
      20;4;-0.998468,-0.010106, 0.014684,-0.052384;;,
      21;4;-0.998283,-0.019358, 0.018793,-0.051985;;,
      22;4;-0.998146,-0.025147, 0.021566,-0.051055;;,
      23;4;-0.998058,-0.029218, 0.023618,-0.049679;;,
      24;4;-0.997997,-0.032395, 0.025421,-0.048016;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001,39.117596,11.976997;;,
      1;3; 0.000001,39.117622,11.976998;;,
      2;3;-0.000003,39.117592,11.977015;;,
      3;3;-0.000001,39.117599,11.977004;;,
      4;3; 0.000001,39.117599,11.977009;;,
      5;3;-0.000002,39.117607,11.976995;;,
      6;3;-0.000002,39.117596,11.977000;;,
      7;3; 0.000003,39.117603,11.976991;;,
      8;3; 0.000000,39.117611,11.977006;;,
      9;3; 0.000000,39.117599,11.976995;;,
      10;3; 0.000000,39.117599,11.976998;;,
      11;3; 0.000000,39.117607,11.976992;;,
      12;3; 0.000001,39.117607,11.977010;;,
      13;3;-0.000000,39.117619,11.977004;;,
      14;3; 0.000000,39.117615,11.976988;;,
      15;3; 0.000000,39.117596,11.976998;;,
      16;3;-0.000001,39.117592,11.977006;;,
      17;3;-0.000000,39.117596,11.977007;;,
      18;3;-0.000000,39.117596,11.977004;;,
      19;3; 0.000001,39.117599,11.977015;;,
      20;3;-0.000001,39.117592,11.976993;;,
      21;3;-0.000002,39.117603,11.977006;;,
      22;3;-0.000002,39.117596,11.976995;;,
      23;3; 0.000002,39.117596,11.977000;;,
      24;3;-0.000000,39.117603,11.977011;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.972641,-0.225511,-0.038426,-0.040467;;,
      1;4;-0.976148,-0.202883,-0.046187,-0.061969;;,
      2;4;-0.978755,-0.182069,-0.051632,-0.078897;;,
      3;4;-0.981219,-0.161799,-0.058726,-0.087078;;,
      4;4;-0.983408,-0.144925,-0.067287,-0.085893;;,
      5;4;-0.984977,-0.134400,-0.075244,-0.078071;;,
      6;4;-0.985866,-0.130514,-0.081104,-0.066753;;,
      7;4;-0.986244,-0.131172,-0.084965,-0.053830;;,
      8;4;-0.986286,-0.134156,-0.087112,-0.040653;;,
      9;4;-0.986156,-0.138381,-0.086446,-0.029550;;,
      10;4;-0.986050,-0.143532,-0.080868,-0.023762;;,
      11;4;-0.986030,-0.149223,-0.069608,-0.025135;;,
      12;4;-0.985873,-0.154881,-0.054974,-0.032321;;,
      13;4;-0.985281,-0.160456,-0.041046,-0.042313;;,
      14;4;-0.984083,-0.166699,-0.030470,-0.053509;;,
      15;4;-0.982161,-0.174453,-0.022761,-0.066399;;,
      16;4;-0.979406,-0.184046,-0.015210,-0.081606;;,
      17;4;-0.975768,-0.195392,-0.004792,-0.098368;;,
      18;4;-0.971351,-0.207884, 0.009819,-0.114738;;,
      19;4;-0.966665,-0.219873, 0.026857,-0.128423;;,
      20;4;-0.962704,-0.229041, 0.042531,-0.137592;;,
      21;4;-0.960312,-0.233999, 0.054230,-0.141789;;,
      22;4;-0.959458,-0.235270, 0.062210,-0.142191;;,
      23;4;-0.959500,-0.234437, 0.068243,-0.140504;;,
      24;4;-0.959925,-0.232684, 0.073573,-0.137799;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,14.552518,15.664102;;,
      1;3; 0.000001,14.552492,15.664106;;,
      2;3; 0.000001,14.552515,15.664100;;,
      3;3;-0.000001,14.552523,15.664116;;,
      4;3;-0.000001,14.552512,15.664093;;,
      5;3;-0.000001,14.552502,15.664101;;,
      6;3; 0.000001,14.552499,15.664100;;,
      7;3; 0.000000,14.552515,15.664103;;,
      8;3;-0.000000,14.552504,15.664110;;,
      9;3;-0.000000,14.552512,15.664118;;,
      10;3;-0.000002,14.552503,15.664103;;,
      11;3; 0.000002,14.552489,15.664107;;,
      12;3; 0.000000,14.552498,15.664099;;,
      13;3;-0.000000,14.552512,15.664117;;,
      14;3;-0.000001,14.552501,15.664095;;,
      15;3; 0.000001,14.552497,15.664106;;,
      16;3; 0.000001,14.552513,15.664107;;,
      17;3; 0.000000,14.552480,15.664094;;,
      18;3; 0.000001,14.552511,15.664099;;,
      19;3; 0.000002,14.552487,15.664101;;,
      20;3; 0.000000,14.552492,15.664115;;,
      21;3;-0.000001,14.552506,15.664104;;,
      22;3;-0.000001,14.552480,15.664106;;,
      23;3; 0.000002,14.552505,15.664110;;,
      24;3;-0.000002,14.552505,15.664102;;;
    }
  }
  Animation {
    {Armature_mixamorig_HeadTop_End}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,15.601691, 7.553698;;,
      1;3; 0.000000,15.601721, 7.553695;;,
      2;3; 0.000002,15.601721, 7.553689;;,
      3;3; 0.000000,15.601689, 7.553697;;,
      4;3; 0.000003,15.601723, 7.553699;;,
      5;3; 0.000001,15.601679, 7.553698;;,
      6;3; 0.000001,15.601686, 7.553693;;,
      7;3;-0.000001,15.601684, 7.553710;;,
      8;3; 0.000003,15.601691, 7.553698;;,
      9;3; 0.000000,15.601681, 7.553703;;,
      10;3;-0.000002,15.601717, 7.553699;;,
      11;3; 0.000000,15.601699, 7.553707;;,
      12;3; 0.000004,15.601690, 7.553703;;,
      13;3; 0.000001,15.601692, 7.553705;;,
      14;3; 0.000002,15.601689, 7.553708;;,
      15;3;-0.000001,15.601679, 7.553705;;,
      16;3; 0.000003,15.601693, 7.553696;;,
      17;3;-0.000001,15.601717, 7.553710;;,
      18;3;-0.000002,15.601711, 7.553700;;,
      19;3;-0.000002,15.601703, 7.553708;;,
      20;3; 0.000002,15.601690, 7.553710;;,
      21;3; 0.000002,15.601710, 7.553690;;,
      22;3;-0.000007,15.601714, 7.553705;;,
      23;3;-0.000002,15.601714, 7.553702;;,
      24;3; 0.000000,15.601690, 7.553701;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftEye}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 3.528700, 2.462095,12.838194;;,
      1;3; 3.528700, 2.462112,12.838200;;,
      2;3; 3.528702, 2.462103,12.838198;;,
      3;3; 3.528699, 2.462081,12.838199;;,
      4;3; 3.528702, 2.462099,12.838199;;,
      5;3; 3.528699, 2.462090,12.838196;;,
      6;3; 3.528700, 2.462085,12.838191;;,
      7;3; 3.528698, 2.462097,12.838204;;,
      8;3; 3.528704, 2.462083,12.838202;;,
      9;3; 3.528700, 2.462084,12.838209;;,
      10;3; 3.528698, 2.462110,12.838204;;,
      11;3; 3.528701, 2.462099,12.838199;;,
      12;3; 3.528702, 2.462093,12.838204;;,
      13;3; 3.528701, 2.462090,12.838207;;,
      14;3; 3.528703, 2.462081,12.838209;;,
      15;3; 3.528698, 2.462086,12.838198;;,
      16;3; 3.528704, 2.462102,12.838199;;,
      17;3; 3.528702, 2.462114,12.838209;;,
      18;3; 3.528697, 2.462117,12.838206;;,
      19;3; 3.528698, 2.462105,12.838202;;,
      20;3; 3.528699, 2.462093,12.838208;;,
      21;3; 3.528701, 2.462111,12.838200;;,
      22;3; 3.528695, 2.462111,12.838204;;,
      23;3; 3.528701, 2.462105,12.838205;;,
      24;3; 3.528699, 2.462099,12.838201;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightEye}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-3.528701, 2.462090,12.838194;;,
      1;3;-3.528700, 2.462118,12.838205;;,
      2;3;-3.528700, 2.462103,12.838194;;,
      3;3;-3.528701, 2.462095,12.838189;;,
      4;3;-3.528699, 2.462101,12.838197;;,
      5;3;-3.528699, 2.462078,12.838203;;,
      6;3;-3.528701, 2.462091,12.838191;;,
      7;3;-3.528702, 2.462093,12.838202;;,
      8;3;-3.528699, 2.462090,12.838201;;,
      9;3;-3.528700, 2.462082,12.838213;;,
      10;3;-3.528702, 2.462112,12.838205;;,
      11;3;-3.528700, 2.462097,12.838205;;,
      12;3;-3.528695, 2.462090,12.838213;;,
      13;3;-3.528700, 2.462097,12.838211;;,
      14;3;-3.528700, 2.462097,12.838203;;,
      15;3;-3.528701, 2.462091,12.838200;;,
      16;3;-3.528698, 2.462102,12.838187;;,
      17;3;-3.528700, 2.462121,12.838206;;,
      18;3;-3.528702, 2.462112,12.838202;;,
      19;3;-3.528703, 2.462107,12.838197;;,
      20;3;-3.528700, 2.462090,12.838218;;,
      21;3;-3.528700, 2.462109,12.838194;;,
      22;3;-3.528703, 2.462111,12.838209;;,
      23;3;-3.528702, 2.462114,12.838202;;,
      24;3;-3.528698, 2.462097,12.838200;;;
    }
  }
  Animation {
    {Armature_mixamorig_Jaw}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      1;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      2;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      3;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      4;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      5;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      6;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      7;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      8;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      9;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      10;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      11;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      12;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      13;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      14;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      15;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      16;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      17;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      18;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      19;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      20;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      21;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      22;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      23;4;-0.454186, 0.890907, 0.000000,-0.000000;;,
      24;4;-0.454186, 0.890907, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,-2.317802, 3.620695;;,
      1;3; 0.000000,-2.317784, 3.620701;;,
      2;3; 0.000002,-2.317788, 3.620693;;,
      3;3; 0.000000,-2.317804, 3.620687;;,
      4;3; 0.000003,-2.317782, 3.620692;;,
      5;3; 0.000001,-2.317810, 3.620692;;,
      6;3;-0.000000,-2.317805, 3.620688;;,
      7;3;-0.000002,-2.317792, 3.620708;;,
      8;3; 0.000004,-2.317804, 3.620695;;,
      9;3; 0.000001,-2.317811, 3.620704;;,
      10;3;-0.000001,-2.317789, 3.620701;;,
      11;3; 0.000002,-2.317790, 3.620696;;,
      12;3; 0.000003,-2.317790, 3.620694;;,
      13;3;-0.000000,-2.317794, 3.620707;;,
      14;3; 0.000003,-2.317809, 3.620703;;,
      15;3; 0.000000,-2.317809, 3.620700;;,
      16;3; 0.000004,-2.317799, 3.620696;;,
      17;3; 0.000000,-2.317770, 3.620698;;,
      18;3;-0.000002,-2.317775, 3.620704;;,
      19;3;-0.000002,-2.317785, 3.620702;;,
      20;3; 0.000002,-2.317795, 3.620709;;,
      21;3;-0.000001,-2.317779, 3.620689;;,
      22;3;-0.000006,-2.317781, 3.620701;;,
      23;3;-0.000001,-2.317784, 3.620703;;,
      24;3; 0.000000,-2.317796, 3.620697;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.465197, 0.499209, 0.541083,-0.491540;;,
      1;4;-0.494300, 0.496109, 0.532610,-0.475258;;,
      2;4;-0.521784, 0.495990, 0.521191,-0.458361;;,
      3;4;-0.547245, 0.496091, 0.510548,-0.440179;;,
      4;4;-0.570425, 0.493679, 0.504449,-0.420032;;,
      5;4;-0.591177, 0.485870, 0.506580,-0.397261;;,
      6;4;-0.611043, 0.473382, 0.514190,-0.371680;;,
      7;4;-0.631860, 0.458665, 0.522283,-0.342928;;,
      8;4;-0.653817, 0.441105, 0.530863,-0.310055;;,
      9;4;-0.681077, 0.415123, 0.541257,-0.266174;;,
      10;4;-0.699601, 0.403252, 0.540648,-0.235893;;,
      11;4;-0.699950, 0.411272, 0.533322,-0.237684;;,
      12;4;-0.693199, 0.423943, 0.526217,-0.250689;;,
      13;4;-0.690145, 0.441887, 0.513162,-0.255146;;,
      14;4;-0.692887, 0.456790, 0.499635,-0.248224;;,
      15;4;-0.701469, 0.471182, 0.481864,-0.231812;;,
      16;4;-0.710833, 0.478954, 0.467863,-0.215460;;,
      17;4;-0.717087, 0.478708, 0.461788,-0.208272;;,
      18;4;-0.717306, 0.483456, 0.455358,-0.210693;;,
      19;4;-0.715364, 0.490171, 0.448379,-0.216663;;,
      20;4;-0.711791, 0.498081, 0.441150,-0.225068;;,
      21;4;-0.707123, 0.506448, 0.434000,-0.234802;;,
      22;4;-0.701940, 0.514557, 0.427307,-0.244788;;,
      23;4;-0.696882, 0.521708, 0.421502,-0.253994;;,
      24;4;-0.692645, 0.527210, 0.417065,-0.261435;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;17.399496,24.614185, 1.157899;;,
      1;3;17.399502,24.614208, 1.157901;;,
      2;3;17.399498,24.614191, 1.157912;;,
      3;3;17.399498,24.614197, 1.157900;;,
      4;3;17.399502,24.614204, 1.157892;;,
      5;3;17.399498,24.614199, 1.157900;;,
      6;3;17.399498,24.614189, 1.157903;;,
      7;3;17.399500,24.614202, 1.157903;;,
      8;3;17.399502,24.614204, 1.157904;;,
      9;3;17.399500,24.614189, 1.157891;;,
      10;3;17.399498,24.614191, 1.157900;;,
      11;3;17.399500,24.614197, 1.157902;;,
      12;3;17.399502,24.614201, 1.157897;;,
      13;3;17.399500,24.614212, 1.157910;;,
      14;3;17.399502,24.614222, 1.157892;;,
      15;3;17.399500,24.614189, 1.157901;;,
      16;3;17.399498,24.614204, 1.157898;;,
      17;3;17.399500,24.614191, 1.157907;;,
      18;3;17.399500,24.614183, 1.157907;;,
      19;3;17.399502,24.614191, 1.157910;;,
      20;3;17.399500,24.614195, 1.157894;;,
      21;3;17.399498,24.614197, 1.157910;;,
      22;3;17.399498,24.614193, 1.157902;;,
      23;3;17.399504,24.614201, 1.157900;;,
      24;3;17.399500,24.614202, 1.157905;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.790892, 0.601315,-0.036325, 0.107660;;,
      1;4;-0.834913, 0.546007,-0.049088, 0.048862;;,
      2;4;-0.874497, 0.481592,-0.055769,-0.014610;;,
      3;4;-0.905351, 0.413297,-0.059663,-0.077237;;,
      4;4;-0.926167, 0.346975,-0.064769,-0.132767;;,
      5;4;-0.938398, 0.288515,-0.075390,-0.174602;;,
      6;4;-0.944944, 0.237979,-0.091218,-0.205246;;,
      7;4;-0.946966, 0.193397,-0.110990,-0.231373;;,
      8;4;-0.944686, 0.157181,-0.137544,-0.252872;;,
      9;4;-0.932773, 0.149052,-0.189142,-0.268221;;,
      10;4;-0.919280, 0.138613,-0.241849,-0.277885;;,
      11;4;-0.913304, 0.148250,-0.275012,-0.261279;;,
      12;4;-0.917996, 0.154851,-0.299540,-0.208756;;,
      13;4;-0.915436, 0.152883,-0.322685,-0.185683;;,
      14;4;-0.905972, 0.161311,-0.355001,-0.164827;;,
      15;4;-0.887819, 0.165429,-0.400722,-0.154378;;,
      16;4;-0.872144, 0.166709,-0.439197,-0.136675;;,
      17;4;-0.872861, 0.165057,-0.444538,-0.115135;;,
      18;4;-0.871938, 0.166864,-0.445268,-0.116688;;,
      19;4;-0.870513, 0.169545,-0.444318,-0.126662;;,
      20;4;-0.868404, 0.173023,-0.442270,-0.142601;;,
      21;4;-0.865446, 0.177227,-0.439700,-0.162041;;,
      22;4;-0.861646, 0.182110,-0.437138,-0.182518;;,
      23;4;-0.857261, 0.187651,-0.435030,-0.201592;;,
      24;4;-0.852796, 0.193870,-0.433734,-0.216861;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000004,19.910400,-0.000005;;,
      1;3;-0.000010,19.910393,-0.000008;;,
      2;3; 0.000005,19.910404,-0.000004;;,
      3;3; 0.000005,19.910408,-0.000017;;,
      4;3; 0.000002,19.910397,-0.000006;;,
      5;3;-0.000004,19.910400, 0.000018;;,
      6;3;-0.000002,19.910398,-0.000006;;,
      7;3; 0.000008,19.910393, 0.000003;;,
      8;3; 0.000001,19.910402,-0.000005;;,
      9;3;-0.000002,19.910393, 0.000003;;,
      10;3; 0.000003,19.910408, 0.000004;;,
      11;3;-0.000008,19.910400,-0.000012;;,
      12;3; 0.000012,19.910395, 0.000001;;,
      13;3; 0.000004,19.910404,-0.000008;;,
      14;3;-0.000004,19.910397,-0.000012;;,
      15;3;-0.000010,19.910400, 0.000009;;,
      16;3; 0.000003,19.910398, 0.000008;;,
      17;3;-0.000003,19.910408,-0.000009;;,
      18;3;-0.000008,19.910400, 0.000006;;,
      19;3;-0.000003,19.910408,-0.000003;;,
      20;3; 0.000000,19.910400, 0.000002;;,
      21;3;-0.000003,19.910400, 0.000009;;,
      22;3;-0.000003,19.910393,-0.000003;;,
      23;3; 0.000004,19.910404, 0.000008;;,
      24;3; 0.000007,19.910402, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.881973,-0.009754,-0.121994, 0.455133;;,
      1;4;-0.849758, 0.015168,-0.139594, 0.508129;;,
      2;4;-0.811115, 0.042819,-0.157465, 0.561661;;,
      3;4;-0.768897, 0.071804,-0.173095, 0.611294;;,
      4;4;-0.727145, 0.100284,-0.184498, 0.653578;;,
      5;4;-0.690782, 0.126150,-0.190145, 0.686113;;,
      6;4;-0.659568, 0.149702,-0.190917, 0.711415;;,
      7;4;-0.630587, 0.172229,-0.188402, 0.732940;;,
      8;4;-0.605185, 0.192868,-0.182311, 0.750544;;,
      9;4;-0.592404, 0.207294,-0.168643, 0.760031;;,
      10;4;-0.586581, 0.216834,-0.156133, 0.764544;;,
      11;4;-0.586857, 0.218120,-0.147136, 0.765751;;,
      12;4;-0.620683, 0.202819,-0.141704, 0.744001;;,
      13;4;-0.664700, 0.178767,-0.131688, 0.713354;;,
      14;4;-0.713617, 0.164599,-0.130852, 0.668233;;,
      15;4;-0.763526, 0.162304,-0.148582, 0.607132;;,
      16;4;-0.817822, 0.152651,-0.179040, 0.525176;;,
      17;4;-0.860871, 0.136229,-0.222706, 0.436743;;,
      18;4;-0.874732, 0.131041,-0.250416, 0.393655;;,
      19;4;-0.879262, 0.130507,-0.273659, 0.367391;;,
      20;4;-0.878150, 0.133981,-0.293120, 0.353529;;,
      21;4;-0.874084, 0.140179,-0.309334, 0.347332;;,
      22;4;-0.869302, 0.147322,-0.322857, 0.344056;;,
      23;4;-0.865871, 0.153272,-0.334370, 0.339075;;,
      24;4;-0.865726, 0.155656,-0.344675, 0.327855;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001,49.301300, 0.000001;;,
      1;3;-0.000004,49.301300,-0.000002;;,
      2;3; 0.000005,49.301296,-0.000004;;,
      3;3; 0.000009,49.301292, 0.000004;;,
      4;3;-0.000004,49.301296,-0.000003;;,
      5;3; 0.000003,49.301292, 0.000010;;,
      6;3; 0.000004,49.301296, 0.000007;;,
      7;3;-0.000006,49.301292,-0.000004;;,
      8;3;-0.000002,49.301304,-0.000006;;,
      9;3; 0.000006,49.301308,-0.000011;;,
      10;3; 0.000003,49.301296,-0.000003;;,
      11;3; 0.000000,49.301289,-0.000010;;,
      12;3;-0.000005,49.301292, 0.000017;;,
      13;3; 0.000015,49.301300,-0.000007;;,
      14;3; 0.000005,49.301289,-0.000012;;,
      15;3;-0.000004,49.301285, 0.000003;;,
      16;3; 0.000004,49.301300, 0.000007;;,
      17;3; 0.000013,49.301292,-0.000002;;,
      18;3;-0.000002,49.301300, 0.000011;;,
      19;3; 0.000007,49.301292, 0.000000;;,
      20;3; 0.000000,49.301289, 0.000013;;,
      21;3;-0.000000,49.301292,-0.000002;;,
      22;3; 0.000006,49.301296,-0.000008;;,
      23;3; 0.000001,49.301296, 0.000000;;,
      24;3; 0.000002,49.301292, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.972246, 0.053883, 0.002442, 0.227657;;,
      1;4;-0.977565, 0.060730, 0.006008, 0.201599;;,
      2;4;-0.982637, 0.067520, 0.007993, 0.172632;;,
      3;4;-0.986978, 0.072898, 0.008081, 0.143160;;,
      4;4;-0.990392, 0.075497, 0.006510, 0.115681;;,
      5;4;-0.992693, 0.077154, 0.003945, 0.092690;;,
      6;4;-0.994092, 0.079175, 0.000748, 0.074237;;,
      7;4;-0.995038, 0.079726,-0.002888, 0.059455;;,
      8;4;-0.995643, 0.078813,-0.006525, 0.049407;;,
      9;4;-0.995579, 0.076810,-0.008513, 0.053396;;,
      10;4;-0.995966, 0.075824,-0.011277, 0.046649;;,
      11;4;-0.994934, 0.076077,-0.010330, 0.064894;;,
      12;4;-0.990578, 0.078242,-0.015536, 0.111317;;,
      13;4;-0.990970, 0.076832,-0.017962, 0.108414;;,
      14;4;-0.986893, 0.079190,-0.018937, 0.139330;;,
      15;4;-0.984586, 0.079216,-0.020621, 0.154562;;,
      16;4;-0.974893, 0.080961,-0.023362, 0.206113;;,
      17;4;-0.956716, 0.087770,-0.019042, 0.276820;;,
      18;4;-0.944842, 0.088719,-0.012105, 0.315051;;,
      19;4;-0.935218, 0.086503,-0.004384, 0.343315;;,
      20;4;-0.927877, 0.081568, 0.003434, 0.363840;;,
      21;4;-0.922471, 0.074574, 0.010712, 0.378645;;,
      22;4;-0.918446, 0.066258, 0.016781, 0.389596;;,
      23;4;-0.915159, 0.057359, 0.020876, 0.398445;;,
      24;4;-0.911930, 0.048593, 0.022113, 0.406859;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,31.604710, 0.000008;;,
      1;3; 0.000001,31.604710, 0.000006;;,
      2;3;-0.000008,31.604702,-0.000012;;,
      3;3;-0.000002,31.604712, 0.000003;;,
      4;3; 0.000008,31.604710,-0.000016;;,
      5;3;-0.000002,31.604704,-0.000012;;,
      6;3; 0.000006,31.604702, 0.000011;;,
      7;3;-0.000002,31.604706,-0.000007;;,
      8;3;-0.000002,31.604700, 0.000013;;,
      9;3; 0.000003,31.604712, 0.000007;;,
      10;3;-0.000009,31.604708,-0.000010;;,
      11;3;-0.000010,31.604710,-0.000011;;,
      12;3; 0.000006,31.604702, 0.000016;;,
      13;3; 0.000011,31.604710,-0.000010;;,
      14;3;-0.000002,31.604708,-0.000010;;,
      15;3;-0.000004,31.604710, 0.000016;;,
      16;3;-0.000003,31.604696,-0.000004;;,
      17;3; 0.000000,31.604704,-0.000006;;,
      18;3; 0.000006,31.604698,-0.000006;;,
      19;3; 0.000008,31.604702, 0.000012;;,
      20;3; 0.000000,31.604717, 0.000014;;,
      21;3;-0.000008,31.604712, 0.000000;;,
      22;3; 0.000011,31.604698, 0.000009;;,
      23;3;-0.000011,31.604698, 0.000011;;,
      24;3; 0.000000,31.604702, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      25;
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
      10;4;-0.959565, 0.110570, 0.077482, 0.246993;;,
      11;4;-0.959565, 0.110570, 0.077482, 0.246993;;,
      12;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      13;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      14;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      15;4;-0.959565, 0.110570, 0.077482, 0.246993;;,
      16;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      17;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      18;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      19;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      20;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      21;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      22;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      23;4;-0.959565, 0.110569, 0.077482, 0.246993;;,
      24;4;-0.959565, 0.110569, 0.077482, 0.246993;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-7.059607, 6.094483, 4.397210;;,
      1;3;-7.059601, 6.094483, 4.397215;;,
      2;3;-7.059595, 6.094478, 4.397215;;,
      3;3;-7.059595, 6.094492, 4.397200;;,
      4;3;-7.059603, 6.094484, 4.397227;;,
      5;3;-7.059603, 6.094488, 4.397217;;,
      6;3;-7.059612, 6.094492, 4.397218;;,
      7;3;-7.059600, 6.094496, 4.397202;;,
      8;3;-7.059609, 6.094487, 4.397198;;,
      9;3;-7.059603, 6.094490, 4.397217;;,
      10;3;-7.059603, 6.094492, 4.397207;;,
      11;3;-7.059605, 6.094494, 4.397190;;,
      12;3;-7.059601, 6.094482, 4.397211;;,
      13;3;-7.059601, 6.094485, 4.397234;;,
      14;3;-7.059599, 6.094479, 4.397230;;,
      15;3;-7.059599, 6.094499, 4.397223;;,
      16;3;-7.059594, 6.094497, 4.397213;;,
      17;3;-7.059590, 6.094505, 4.397207;;,
      18;3;-7.059594, 6.094488, 4.397213;;,
      19;3;-7.059595, 6.094484, 4.397211;;,
      20;3;-7.059597, 6.094492, 4.397205;;,
      21;3;-7.059599, 6.094495, 4.397188;;,
      22;3;-7.059597, 6.094489, 4.397212;;,
      23;3;-7.059597, 6.094489, 4.397203;;,
      24;3;-7.059612, 6.094493, 4.397202;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.983499, 0.101251, 0.042035,-0.143913;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000006, 7.536494, 0.000010;;,
      1;3; 0.000000, 7.536494,-0.000010;;,
      2;3; 0.000007, 7.536499,-0.000011;;,
      3;3;-0.000004, 7.536492,-0.000002;;,
      4;3;-0.000002, 7.536496,-0.000010;;,
      5;3;-0.000000, 7.536494,-0.000008;;,
      6;3;-0.000003, 7.536494,-0.000010;;,
      7;3;-0.000002, 7.536491,-0.000008;;,
      8;3; 0.000006, 7.536491, 0.000008;;,
      9;3;-0.000004, 7.536501, 0.000038;;,
      10;3; 0.000008, 7.536499,-0.000015;;,
      11;3;-0.000008, 7.536486, 0.000014;;,
      12;3;-0.000002, 7.536491,-0.000008;;,
      13;3;-0.000011, 7.536494, 0.000012;;,
      14;3;-0.000010, 7.536495,-0.000003;;,
      15;3;-0.000006, 7.536496, 0.000016;;,
      16;3; 0.000000, 7.536489, 0.000008;;,
      17;3; 0.000013, 7.536503, 0.000004;;,
      18;3; 0.000002, 7.536503,-0.000004;;,
      19;3;-0.000004, 7.536491, 0.000010;;,
      20;3;-0.000002, 7.536491, 0.000010;;,
      21;3;-0.000004, 7.536499, 0.000010;;,
      22;3; 0.000013, 7.536495, 0.000010;;,
      23;3;-0.000002, 7.536495, 0.000001;;,
      24;3;-0.000008, 7.536491,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.890005, 0.130273, 0.436926,-0.004015;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000004, 7.512302, 0.000001;;,
      1;3;-0.000008, 7.512295,-0.000006;;,
      2;3;-0.000006, 7.512298, 0.000004;;,
      3;3;-0.000004, 7.512296, 0.000011;;,
      4;3;-0.000002, 7.512287, 0.000004;;,
      5;3; 0.000002, 7.512280, 0.000000;;,
      6;3;-0.000003, 7.512298, 0.000006;;,
      7;3; 0.000002, 7.512300, 0.000001;;,
      8;3;-0.000001, 7.512300,-0.000025;;,
      9;3;-0.000006, 7.512289,-0.000021;;,
      10;3;-0.000005, 7.512291,-0.000017;;,
      11;3; 0.000004, 7.512297,-0.000002;;,
      12;3;-0.000010, 7.512295, 0.000001;;,
      13;3;-0.000006, 7.512295, 0.000006;;,
      14;3; 0.000004, 7.512292, 0.000002;;,
      15;3; 0.000011, 7.512304, 0.000014;;,
      16;3;-0.000006, 7.512293, 0.000008;;,
      17;3; 0.000004, 7.512302,-0.000003;;,
      18;3;-0.000010, 7.512297,-0.000012;;,
      19;3;-0.000010, 7.512294, 0.000008;;,
      20;3; 0.000011, 7.512299,-0.000004;;,
      21;3; 0.000008, 7.512301, 0.000000;;,
      22;3; 0.000008, 7.512303,-0.000002;;,
      23;3;-0.000004, 7.512304, 0.000011;;,
      24;3; 0.000000, 7.512296,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb4}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000,10.212399,-0.000001;;,
      1;3; 0.000000,10.212402,-0.000000;;,
      2;3;-0.000004,10.212400, 0.000001;;,
      3;3; 0.000014,10.212394, 0.000004;;,
      4;3;-0.000005,10.212392, 0.000006;;,
      5;3; 0.000002,10.212396, 0.000004;;,
      6;3; 0.000000,10.212396, 0.000004;;,
      7;3; 0.000019,10.212399,-0.000015;;,
      8;3;-0.000011,10.212393, 0.000011;;,
      9;3; 0.000000,10.212401, 0.000004;;,
      10;3;-0.000017,10.212401, 0.000001;;,
      11;3;-0.000008,10.212399, 0.000002;;,
      12;3; 0.000012,10.212412,-0.000005;;,
      13;3; 0.000008,10.212395,-0.000008;;,
      14;3; 0.000000,10.212404, 0.000002;;,
      15;3;-0.000007,10.212402, 0.000002;;,
      16;3; 0.000002,10.212397, 0.000006;;,
      17;3;-0.000006,10.212410,-0.000006;;,
      18;3;-0.000013,10.212395,-0.000010;;,
      19;3;-0.000004,10.212399,-0.000006;;,
      20;3; 0.000004,10.212399, 0.000002;;,
      21;3;-0.000008,10.212395, 0.000004;;,
      22;3; 0.000004,10.212404, 0.000004;;,
      23;3; 0.000011,10.212417,-0.000001;;,
      24;3;-0.000015,10.212384,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.941498, 0.330522,-0.017322, 0.063537;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-6.192901,21.271084, 0.498713;;,
      1;3;-6.192900,21.271091, 0.498719;;,
      2;3;-6.192894,21.271082, 0.498719;;,
      3;3;-6.192902,21.271093, 0.498701;;,
      4;3;-6.192909,21.271088, 0.498725;;,
      5;3;-6.192907,21.271080, 0.498718;;,
      6;3;-6.192904,21.271090, 0.498722;;,
      7;3;-6.192897,21.271088, 0.498701;;,
      8;3;-6.192899,21.271086, 0.498697;;,
      9;3;-6.192901,21.271093, 0.498730;;,
      10;3;-6.192905,21.271088, 0.498707;;,
      11;3;-6.192898,21.271095, 0.498695;;,
      12;3;-6.192898,21.271078, 0.498724;;,
      13;3;-6.192902,21.271084, 0.498722;;,
      14;3;-6.192900,21.271086, 0.498726;;,
      15;3;-6.192904,21.271091, 0.498722;;,
      16;3;-6.192891,21.271082, 0.498714;;,
      17;3;-6.192901,21.271095, 0.498705;;,
      18;3;-6.192895,21.271086, 0.498716;;,
      19;3;-6.192900,21.271084, 0.498713;;,
      20;3;-6.192894,21.271084, 0.498703;;,
      21;3;-6.192904,21.271091, 0.498693;;,
      22;3;-6.192901,21.271084, 0.498711;;,
      23;3;-6.192898,21.271084, 0.498707;;,
      24;3;-6.192904,21.271091, 0.498707;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.932392, 0.359376, 0.013826, 0.036090;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002, 7.536497,-0.000003;;,
      1;3;-0.000010, 7.536497,-0.000004;;,
      2;3; 0.000000, 7.536495,-0.000005;;,
      3;3; 0.000000, 7.536497,-0.000004;;,
      4;3;-0.000004, 7.536495, 0.000002;;,
      5;3;-0.000011, 7.536491, 0.000011;;,
      6;3; 0.000000, 7.536484,-0.000015;;,
      7;3;-0.000004, 7.536488,-0.000015;;,
      8;3;-0.000015, 7.536482, 0.000031;;,
      9;3;-0.000003, 7.536503, 0.000002;;,
      10;3; 0.000002, 7.536489,-0.000002;;,
      11;3;-0.000006, 7.536488, 0.000008;;,
      12;3; 0.000006, 7.536503, 0.000004;;,
      13;3; 0.000006, 7.536491, 0.000011;;,
      14;3; 0.000000, 7.536499,-0.000014;;,
      15;3;-0.000010, 7.536497,-0.000006;;,
      16;3;-0.000010, 7.536493,-0.000019;;,
      17;3; 0.000001, 7.536500,-0.000014;;,
      18;3;-0.000001, 7.536497, 0.000002;;,
      19;3; 0.000011, 7.536512, 0.000000;;,
      20;3;-0.000005, 7.536494, 0.000008;;,
      21;3; 0.000002, 7.536490, 0.000015;;,
      22;3; 0.000005, 7.536497,-0.000002;;,
      23;3; 0.000007, 7.536497, 0.000008;;,
      24;3; 0.000002, 7.536501,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.998346, 0.054944, 0.001060,-0.016911;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000004, 7.512301, 0.000000;;,
      1;3; 0.000002, 7.512307, 0.000004;;,
      2;3; 0.000006, 7.512290, 0.000006;;,
      3;3;-0.000002, 7.512298, 0.000004;;,
      4;3; 0.000002, 7.512291,-0.000002;;,
      5;3; 0.000002, 7.512288, 0.000008;;,
      6;3; 0.000002, 7.512291, 0.000007;;,
      7;3;-0.000010, 7.512268, 0.000000;;,
      8;3; 0.000001, 7.512283, 0.000008;;,
      9;3; 0.000001, 7.512287,-0.000007;;,
      10;3;-0.000010, 7.512299, 0.000003;;,
      11;3; 0.000003, 7.512280,-0.000003;;,
      12;3; 0.000009, 7.512272,-0.000008;;,
      13;3; 0.000004, 7.512310,-0.000004;;,
      14;3; 0.000001, 7.512274,-0.000004;;,
      15;3;-0.000017, 7.512312, 0.000006;;,
      16;3;-0.000007, 7.512274,-0.000001;;,
      17;3;-0.000002, 7.512301, 0.000009;;,
      18;3; 0.000003, 7.512296,-0.000020;;,
      19;3;-0.000008, 7.512293, 0.000005;;,
      20;3; 0.000000, 7.512292,-0.000003;;,
      21;3;-0.000015, 7.512303,-0.000006;;,
      22;3;-0.000006, 7.512298,-0.000010;;,
      23;3; 0.000010, 7.512299, 0.000001;;,
      24;3;-0.000003, 7.512299, 0.000024;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000,10.212399,-0.000003;;,
      1;3;-0.000001,10.212405,-0.000002;;,
      2;3; 0.000000,10.212399, 0.000002;;,
      3;3; 0.000006,10.212400, 0.000000;;,
      4;3;-0.000004,10.212403, 0.000008;;,
      5;3;-0.000010,10.212385, 0.000000;;,
      6;3; 0.000006,10.212418,-0.000004;;,
      7;3; 0.000005,10.212398, 0.000004;;,
      8;3;-0.000005,10.212376,-0.000002;;,
      9;3; 0.000005,10.212402,-0.000010;;,
      10;3;-0.000004,10.212404, 0.000007;;,
      11;3;-0.000013,10.212379, 0.000006;;,
      12;3; 0.000006,10.212387,-0.000001;;,
      13;3; 0.000002,10.212391, 0.000003;;,
      14;3;-0.000006,10.212406,-0.000007;;,
      15;3;-0.000006,10.212408, 0.000000;;,
      16;3; 0.000009,10.212399,-0.000008;;,
      17;3; 0.000001,10.212406, 0.000011;;,
      18;3; 0.000008,10.212404, 0.000007;;,
      19;3; 0.000005,10.212406,-0.000003;;,
      20;3;-0.000002,10.212389,-0.000011;;,
      21;3;-0.000005,10.212395,-0.000011;;,
      22;3;-0.000005,10.212397, 0.000004;;,
      23;3; 0.000007,10.212398,-0.000009;;,
      24;3; 0.000004,10.212393,-0.000021;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.942603, 0.333362, 0.000666, 0.019199;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.016498,23.334379, 0.008612;;,
      1;3; 0.016504,23.334381, 0.008614;;,
      2;3; 0.016510,23.334379, 0.008609;;,
      3;3; 0.016506,23.334389, 0.008609;;,
      4;3; 0.016506,23.334379, 0.008616;;,
      5;3; 0.016495,23.334375, 0.008615;;,
      6;3; 0.016491,23.334391, 0.008614;;,
      7;3; 0.016501,23.334385, 0.008593;;,
      8;3; 0.016504,23.334387, 0.008610;;,
      9;3; 0.016504,23.334391, 0.008615;;,
      10;3; 0.016492,23.334385, 0.008615;;,
      11;3; 0.016499,23.334387, 0.008585;;,
      12;3; 0.016502,23.334373, 0.008614;;,
      13;3; 0.016499,23.334379, 0.008623;;,
      14;3; 0.016504,23.334381, 0.008617;;,
      15;3; 0.016500,23.334389, 0.008619;;,
      16;3; 0.016509,23.334385, 0.008610;;,
      17;3; 0.016505,23.334394, 0.008600;;,
      18;3; 0.016505,23.334387, 0.008619;;,
      19;3; 0.016502,23.334366, 0.008610;;,
      20;3; 0.016502,23.334360, 0.008601;;,
      21;3; 0.016496,23.334375, 0.008592;;,
      22;3; 0.016503,23.334379, 0.008611;;,
      23;3; 0.016506,23.334379, 0.008598;;,
      24;3; 0.016500,23.334391, 0.008598;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.902545, 0.428452, 0.017924, 0.038993;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002, 6.996590,-0.000003;;,
      1;3; 0.000002, 6.996597,-0.000004;;,
      2;3;-0.000002, 6.996599,-0.000007;;,
      3;3; 0.000000, 6.996592, 0.000003;;,
      4;3; 0.000006, 6.996603,-0.000011;;,
      5;3;-0.000006, 6.996599, 0.000019;;,
      6;3; 0.000006, 6.996593, 0.000000;;,
      7;3;-0.000005, 6.996605,-0.000011;;,
      8;3;-0.000008, 6.996592, 0.000006;;,
      9;3;-0.000009, 6.996605,-0.000015;;,
      10;3; 0.000008, 6.996603, 0.000024;;,
      11;3; 0.000000, 6.996595,-0.000015;;,
      12;3; 0.000000, 6.996590, 0.000008;;,
      13;3; 0.000004, 6.996593,-0.000007;;,
      14;3;-0.000002, 6.996597, 0.000003;;,
      15;3;-0.000002, 6.996592, 0.000001;;,
      16;3;-0.000014, 6.996593,-0.000020;;,
      17;3;-0.000006, 6.996601, 0.000016;;,
      18;3; 0.000011, 6.996592, 0.000013;;,
      19;3; 0.000010, 6.996586,-0.000004;;,
      20;3;-0.000001, 6.996597,-0.000002;;,
      21;3; 0.000001, 6.996597,-0.000015;;,
      22;3; 0.000003, 6.996591,-0.000017;;,
      23;3; 0.000004, 6.996585, 0.000015;;,
      24;3; 0.000007, 6.996590, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.986882, 0.160826, 0.002706,-0.013873;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000, 7.016002, 0.000001;;,
      1;3;-0.000002, 7.016006,-0.000002;;,
      2;3;-0.000010, 7.016011, 0.000010;;,
      3;3;-0.000006, 7.016007, 0.000002;;,
      4;3;-0.000010, 7.016002, 0.000002;;,
      5;3; 0.000000, 7.016014, 0.000004;;,
      6;3;-0.000008, 7.015987,-0.000006;;,
      7;3; 0.000006, 7.016001, 0.000007;;,
      8;3;-0.000005, 7.015997,-0.000005;;,
      9;3;-0.000004, 7.016008, 0.000000;;,
      10;3;-0.000004, 7.016012,-0.000004;;,
      11;3; 0.000000, 7.016008,-0.000007;;,
      12;3; 0.000002, 7.016008,-0.000006;;,
      13;3; 0.000008, 7.016006,-0.000001;;,
      14;3; 0.000000, 7.016010, 0.000002;;,
      15;3;-0.000002, 7.015999,-0.000010;;,
      16;3;-0.000003, 7.016010, 0.000015;;,
      17;3; 0.000004, 7.015999, 0.000011;;,
      18;3; 0.000004, 7.016006, 0.000004;;,
      19;3; 0.000010, 7.016012, 0.000000;;,
      20;3;-0.000003, 7.016005, 0.000008;;,
      21;3; 0.000000, 7.016014,-0.000006;;,
      22;3; 0.000006, 7.016007, 0.000000;;,
      23;3; 0.000009, 7.015999,-0.000008;;,
      24;3;-0.000010, 7.016022, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000005, 7.721602, 0.000003;;,
      1;3; 0.000004, 7.721601,-0.000002;;,
      2;3; 0.000006, 7.721591,-0.000002;;,
      3;3; 0.000002, 7.721605,-0.000002;;,
      4;3; 0.000002, 7.721582,-0.000001;;,
      5;3; 0.000010, 7.721600,-0.000003;;,
      6;3;-0.000023, 7.721603, 0.000001;;,
      7;3;-0.000003, 7.721596,-0.000005;;,
      8;3; 0.000001, 7.721617, 0.000004;;,
      9;3;-0.000001, 7.721605, 0.000002;;,
      10;3; 0.000000, 7.721617,-0.000006;;,
      11;3;-0.000004, 7.721604, 0.000002;;,
      12;3; 0.000015, 7.721601,-0.000001;;,
      13;3; 0.000011, 7.721617,-0.000008;;,
      14;3; 0.000011, 7.721598,-0.000008;;,
      15;3; 0.000006, 7.721607, 0.000002;;,
      16;3; 0.000000, 7.721592,-0.000016;;,
      17;3;-0.000013, 7.721590,-0.000014;;,
      18;3;-0.000010, 7.721601, 0.000004;;,
      19;3;-0.000006, 7.721628,-0.000004;;,
      20;3; 0.000010, 7.721605,-0.000003;;,
      21;3; 0.000011, 7.721596,-0.000004;;,
      22;3;-0.000008, 7.721611,-0.000002;;,
      23;3; 0.000003, 7.721607,-0.000008;;,
      24;3; 0.000004, 7.721603, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      1;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      2;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      3;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      4;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      5;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      6;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      7;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      8;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      9;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      10;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      11;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      12;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      13;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      14;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      15;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      16;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      17;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      18;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      19;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      20;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      21;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      22;4;-0.854279, 0.519784,-0.005607, 0.001046;;,
      23;4;-0.854279, 0.519783,-0.005607, 0.001046;;,
      24;4;-0.854279, 0.519784,-0.005607, 0.001046;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 6.516895,22.686588, 0.103607;;,
      1;3; 6.516907,22.686596, 0.103615;;,
      2;3; 6.516905,22.686588, 0.103615;;,
      3;3; 6.516901,22.686596, 0.103595;;,
      4;3; 6.516903,22.686594, 0.103615;;,
      5;3; 6.516899,22.686590, 0.103601;;,
      6;3; 6.516888,22.686596, 0.103609;;,
      7;3; 6.516906,22.686602, 0.103597;;,
      8;3; 6.516900,22.686598, 0.103603;;,
      9;3; 6.516902,22.686596, 0.103619;;,
      10;3; 6.516901,22.686600, 0.103607;;,
      11;3; 6.516903,22.686594, 0.103584;;,
      12;3; 6.516899,22.686583, 0.103611;;,
      13;3; 6.516899,22.686588, 0.103621;;,
      14;3; 6.516905,22.686592, 0.103611;;,
      15;3; 6.516901,22.686605, 0.103619;;,
      16;3; 6.516913,22.686594, 0.103613;;,
      17;3; 6.516902,22.686605, 0.103600;;,
      18;3; 6.516910,22.686592, 0.103607;;,
      19;3; 6.516903,22.686583, 0.103607;;,
      20;3; 6.516907,22.686577, 0.103599;;,
      21;3; 6.516897,22.686592, 0.103588;;,
      22;3; 6.516903,22.686594, 0.103608;;,
      23;3; 6.516903,22.686584, 0.103594;;,
      24;3; 6.516899,22.686600, 0.103598;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      1;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      2;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      3;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
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
      16;4;-0.925419, 0.378771,-0.003734, 0.010889;;,
      17;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      18;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      19;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      20;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      21;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      22;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      23;4;-0.925419, 0.378771,-0.003734, 0.010888;;,
      24;4;-0.925419, 0.378771,-0.003734, 0.010888;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000005, 6.408605,-0.000006;;,
      1;3; 0.000002, 6.408598, 0.000002;;,
      2;3; 0.000004, 6.408592, 0.000006;;,
      3;3; 0.000004, 6.408594, 0.000000;;,
      4;3; 0.000002, 6.408596,-0.000007;;,
      5;3;-0.000006, 6.408583, 0.000008;;,
      6;3;-0.000003, 6.408600, 0.000015;;,
      7;3; 0.000015, 6.408592,-0.000001;;,
      8;3; 0.000007, 6.408573,-0.000008;;,
      9;3; 0.000002, 6.408613, 0.000000;;,
      10;3; 0.000000, 6.408609,-0.000009;;,
      11;3;-0.000008, 6.408609, 0.000014;;,
      12;3;-0.000011, 6.408581, 0.000005;;,
      13;3; 0.000004, 6.408602,-0.000007;;,
      14;3;-0.000011, 6.408594,-0.000015;;,
      15;3; 0.000008, 6.408598,-0.000007;;,
      16;3; 0.000007, 6.408600, 0.000011;;,
      17;3; 0.000001, 6.408592,-0.000002;;,
      18;3;-0.000005, 6.408596, 0.000028;;,
      19;3;-0.000006, 6.408592, 0.000010;;,
      20;3; 0.000007, 6.408607,-0.000002;;,
      21;3; 0.000005, 6.408596,-0.000005;;,
      22;3; 0.000006, 6.408604,-0.000007;;,
      23;3; 0.000002, 6.408592,-0.000015;;,
      24;3; 0.000000, 6.408607, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.990596, 0.136412,-0.001915,-0.010397;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000001, 6.150299,-0.000001;;,
      1;3; 0.000000, 6.150301,-0.000001;;,
      2;3;-0.000002, 6.150290,-0.000002;;,
      3;3; 0.000002, 6.150294, 0.000000;;,
      4;3; 0.000006, 6.150304,-0.000002;;,
      5;3; 0.000000, 6.150286,-0.000005;;,
      6;3;-0.000004, 6.150295, 0.000006;;,
      7;3;-0.000004, 6.150291, 0.000008;;,
      8;3;-0.000010, 6.150280,-0.000009;;,
      9;3;-0.000004, 6.150311, 0.000002;;,
      10;3; 0.000001, 6.150283,-0.000001;;,
      11;3; 0.000004, 6.150299,-0.000004;;,
      12;3; 0.000000, 6.150296, 0.000016;;,
      13;3; 0.000004, 6.150307, 0.000011;;,
      14;3; 0.000002, 6.150291,-0.000008;;,
      15;3;-0.000008, 6.150276,-0.000004;;,
      16;3;-0.000003, 6.150305, 0.000013;;,
      17;3;-0.000015, 6.150316, 0.000001;;,
      18;3; 0.000003, 6.150297, 0.000017;;,
      19;3; 0.000009, 6.150291,-0.000005;;,
      20;3; 0.000007, 6.150299,-0.000002;;,
      21;3;-0.000002, 6.150322, 0.000017;;,
      22;3;-0.000005, 6.150291,-0.000004;;,
      23;3;-0.000003, 6.150299, 0.000002;;,
      24;3;-0.000001, 6.150303,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001, 6.145400,-0.000003;;,
      1;3; 0.000006, 6.145409,-0.000004;;,
      2;3;-0.000004, 6.145387,-0.000004;;,
      3;3;-0.000002, 6.145395,-0.000003;;,
      4;3;-0.000010, 6.145388,-0.000005;;,
      5;3;-0.000004, 6.145401,-0.000006;;,
      6;3;-0.000005, 6.145405, 0.000004;;,
      7;3;-0.000007, 6.145374,-0.000001;;,
      8;3; 0.000021, 6.145430, 0.000010;;,
      9;3; 0.000001, 6.145395, 0.000002;;,
      10;3; 0.000007, 6.145382, 0.000011;;,
      11;3; 0.000008, 6.145431,-0.000017;;,
      12;3; 0.000008, 6.145385, 0.000023;;,
      13;3; 0.000004, 6.145394, 0.000004;;,
      14;3; 0.000000, 6.145404,-0.000010;;,
      15;3;-0.000004, 6.145396, 0.000004;;,
      16;3; 0.000006, 6.145396,-0.000013;;,
      17;3;-0.000002, 6.145378,-0.000008;;,
      18;3;-0.000017, 6.145407,-0.000008;;,
      19;3;-0.000004, 6.145409, 0.000004;;,
      20;3;-0.000006, 6.145388,-0.000006;;,
      21;3; 0.000003, 6.145399,-0.000018;;,
      22;3; 0.000007, 6.145412, 0.000004;;,
      23;3; 0.000003, 6.145397, 0.000004;;,
      24;3; 0.000016, 6.145401, 0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      1;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      2;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      3;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      4;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      5;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      6;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      7;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      8;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      9;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      10;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      11;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      12;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      13;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      14;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      15;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      16;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      17;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      18;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      19;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      20;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      21;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      22;4;-0.893105, 0.444450,-0.025376, 0.064685;;,
      23;4;-0.893104, 0.444450,-0.025376, 0.064685;;,
      24;4;-0.893105, 0.444450,-0.025376, 0.064685;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;11.443198,18.881184, 0.461814;;,
      1;3;11.443203,18.881187, 0.461819;;,
      2;3;11.443203,18.881182, 0.461824;;,
      3;3;11.443203,18.881193, 0.461809;;,
      4;3;11.443201,18.881189, 0.461825;;,
      5;3;11.443199,18.881186, 0.461812;;,
      6;3;11.443195,18.881193, 0.461824;;,
      7;3;11.443200,18.881195, 0.461801;;,
      8;3;11.443194,18.881189, 0.461796;;,
      9;3;11.443205,18.881193, 0.461830;;,
      10;3;11.443194,18.881193, 0.461823;;,
      11;3;11.443197,18.881197, 0.461784;;,
      12;3;11.443203,18.881180, 0.461817;;,
      13;3;11.443195,18.881191, 0.461826;;,
      14;3;11.443201,18.881180, 0.461824;;,
      15;3;11.443205,18.881199, 0.461824;;,
      16;3;11.443210,18.881187, 0.461824;;,
      17;3;11.443206,18.881207, 0.461807;;,
      18;3;11.443210,18.881186, 0.461817;;,
      19;3;11.443203,18.881186, 0.461807;;,
      20;3;11.443207,18.881187, 0.461812;;,
      21;3;11.443193,18.881197, 0.461796;;,
      22;3;11.443207,18.881186, 0.461821;;,
      23;3;11.443203,18.881191, 0.461807;;,
      24;3;11.443203,18.881197, 0.461807;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.802054, 0.597251, 0.000030, 0.001175;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001, 4.919600, 0.000003;;,
      1;3; 0.000000, 4.919603,-0.000001;;,
      2;3; 0.000000, 4.919598, 0.000004;;,
      3;3; 0.000006, 4.919605,-0.000011;;,
      4;3; 0.000008, 4.919600,-0.000009;;,
      5;3; 0.000000, 4.919588,-0.000006;;,
      6;3; 0.000006, 4.919590, 0.000006;;,
      7;3; 0.000009, 4.919592, 0.000000;;,
      8;3; 0.000008, 4.919607,-0.000002;;,
      9;3; 0.000011, 4.919605, 0.000013;;,
      10;3;-0.000002, 4.919609,-0.000005;;,
      11;3; 0.000000, 4.919601,-0.000005;;,
      12;3;-0.000008, 4.919605, 0.000016;;,
      13;3; 0.000008, 4.919601, 0.000004;;,
      14;3;-0.000006, 4.919579,-0.000017;;,
      15;3;-0.000004, 4.919590,-0.000008;;,
      16;3;-0.000002, 4.919594,-0.000002;;,
      17;3; 0.000004, 4.919598, 0.000002;;,
      18;3; 0.000000, 4.919605,-0.000015;;,
      19;3;-0.000011, 4.919596,-0.000001;;,
      20;3;-0.000006, 4.919601, 0.000004;;,
      21;3;-0.000002, 4.919600, 0.000025;;,
      22;3;-0.000010, 4.919593, 0.000013;;,
      23;3; 0.000006, 4.919612,-0.000004;;,
      24;3;-0.000005, 4.919599,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.967136, 0.254259, 0.000000, 0.000494;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002, 5.233000,-0.000004;;,
      1;3;-0.000002, 5.233002,-0.000002;;,
      2;3;-0.000004, 5.232996, 0.000002;;,
      3;3;-0.000002, 5.233001, 0.000000;;,
      4;3;-0.000002, 5.232992,-0.000002;;,
      5;3; 0.000004, 5.233002,-0.000023;;,
      6;3;-0.000008, 5.233009,-0.000002;;,
      7;3; 0.000007, 5.233017,-0.000004;;,
      8;3;-0.000003, 5.233002, 0.000008;;,
      9;3;-0.000002, 5.232977, 0.000008;;,
      10;3;-0.000006, 5.232991, 0.000008;;,
      11;3; 0.000000, 5.232988,-0.000011;;,
      12;3; 0.000015, 5.233006, 0.000008;;,
      13;3; 0.000004, 5.233014, 0.000004;;,
      14;3;-0.000010, 5.233002, 0.000004;;,
      15;3; 0.000000, 5.233009,-0.000006;;,
      16;3; 0.000008, 5.233007,-0.000011;;,
      17;3;-0.000002, 5.233019, 0.000002;;,
      18;3; 0.000006, 5.232994, 0.000006;;,
      19;3; 0.000004, 5.233013, 0.000003;;,
      20;3;-0.000002, 5.232998, 0.000003;;,
      21;3; 0.000006, 5.233019, 0.000005;;,
      22;3; 0.000002, 5.233006,-0.000003;;,
      23;3; 0.000000, 5.232994,-0.000003;;,
      24;3; 0.000005, 5.232990, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000001, 5.571698,-0.000002;;,
      1;3;-0.000001, 5.571695, 0.000006;;,
      2;3;-0.000004, 5.571701,-0.000008;;,
      3;3; 0.000004, 5.571707,-0.000002;;,
      4;3;-0.000013, 5.571703,-0.000013;;,
      5;3; 0.000004, 5.571691,-0.000004;;,
      6;3;-0.000006, 5.571705, 0.000011;;,
      7;3; 0.000005, 5.571698,-0.000007;;,
      8;3; 0.000011, 5.571685,-0.000002;;,
      9;3; 0.000002, 5.571712,-0.000029;;,
      10;3;-0.000010, 5.571704,-0.000007;;,
      11;3; 0.000000, 5.571707, 0.000005;;,
      12;3;-0.000004, 5.571701, 0.000003;;,
      13;3; 0.000004, 5.571712,-0.000002;;,
      14;3;-0.000002, 5.571712,-0.000004;;,
      15;3; 0.000004, 5.571713, 0.000004;;,
      16;3;-0.000011, 5.571685, 0.000008;;,
      17;3; 0.000004, 5.571695,-0.000002;;,
      18;3; 0.000002, 5.571708, 0.000000;;,
      19;3;-0.000010, 5.571685, 0.000002;;,
      20;3; 0.000004, 5.571693,-0.000008;;,
      21;3; 0.000002, 5.571702, 0.000013;;,
      22;3;-0.000008, 5.571714, 0.000000;;,
      23;3; 0.000002, 5.571707, 0.000004;;,
      24;3; 0.000007, 5.571705, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.656223, 0.465836,-0.494767, 0.327985;;,
      1;4;-0.666565, 0.469697,-0.487017, 0.312875;;,
      2;4;-0.666972, 0.475121,-0.484377, 0.307875;;,
      3;4;-0.664560, 0.479218,-0.484454, 0.306617;;,
      4;4;-0.661760, 0.481602,-0.486056, 0.306405;;,
      5;4;-0.660639, 0.480089,-0.489569, 0.305602;;,
      6;4;-0.659878, 0.477083,-0.493960, 0.304888;;,
      7;4;-0.659744, 0.472997,-0.498689, 0.303842;;,
      8;4;-0.660503, 0.468264,-0.503227, 0.302039;;,
      9;4;-0.662408, 0.463341,-0.507050, 0.299050;;,
      10;4;-0.667867, 0.459208,-0.508087, 0.291426;;,
      11;4;-0.674610, 0.455666,-0.507741, 0.281901;;,
      12;4;-0.682073, 0.452408,-0.506606, 0.271024;;,
      13;4;-0.689726, 0.449113,-0.505274, 0.259371;;,
      14;4;-0.697088, 0.445452,-0.504341, 0.247549;;,
      15;4;-0.703730, 0.441081,-0.504402, 0.236199;;,
      16;4;-0.709276, 0.435631,-0.506046, 0.225988;;,
      17;4;-0.712967, 0.427155,-0.511567, 0.217981;;,
      18;4;-0.715962, 0.417499,-0.518342, 0.210749;;,
      19;4;-0.718009, 0.408097,-0.525256, 0.205004;;,
      20;4;-0.718864, 0.400471,-0.531287, 0.201476;;,
      21;4;-0.718272, 0.396211,-0.535485, 0.200893;;,
      22;4;-0.713686, 0.400278,-0.535801, 0.208197;;,
      23;4;-0.709988, 0.404432,-0.535106, 0.214505;;,
      24;4;-0.707439, 0.408591,-0.533467, 0.219082;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-17.399502,24.614296, 1.157898;;,
      1;3;-17.399502,24.614321, 1.157904;;,
      2;3;-17.399502,24.614302, 1.157910;;,
      3;3;-17.399502,24.614304, 1.157902;;,
      4;3;-17.399500,24.614304, 1.157902;;,
      5;3;-17.399504,24.614300, 1.157896;;,
      6;3;-17.399502,24.614305, 1.157892;;,
      7;3;-17.399500,24.614305, 1.157900;;,
      8;3;-17.399502,24.614311, 1.157898;;,
      9;3;-17.399502,24.614290, 1.157891;;,
      10;3;-17.399502,24.614296, 1.157896;;,
      11;3;-17.399500,24.614305, 1.157898;;,
      12;3;-17.399500,24.614309, 1.157910;;,
      13;3;-17.399502,24.614325, 1.157902;;,
      14;3;-17.399502,24.614319, 1.157893;;,
      15;3;-17.399502,24.614298, 1.157901;;,
      16;3;-17.399502,24.614305, 1.157896;;,
      17;3;-17.399502,24.614298, 1.157905;;,
      18;3;-17.399498,24.614294, 1.157905;;,
      19;3;-17.399504,24.614302, 1.157912;;,
      20;3;-17.399502,24.614304, 1.157897;;,
      21;3;-17.399502,24.614304, 1.157905;;,
      22;3;-17.399504,24.614307, 1.157900;;,
      23;3;-17.399500,24.614311, 1.157900;;,
      24;3;-17.399498,24.614307, 1.157911;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.775929, 0.569120, 0.262405,-0.071971;;,
      1;4;-0.848300, 0.483829, 0.211613,-0.038950;;,
      2;4;-0.894165, 0.416915, 0.163147,-0.005904;;,
      3;4;-0.922169, 0.366813, 0.121299, 0.018431;;,
      4;4;-0.940368, 0.327653, 0.083702, 0.036673;;,
      5;4;-0.950087, 0.304138, 0.053805, 0.044047;;,
      6;4;-0.956529, 0.286585, 0.028000, 0.046226;;,
      7;4;-0.960779, 0.273687, 0.007381, 0.044109;;,
      8;4;-0.963619, 0.264336,-0.007403, 0.038853;;,
      9;4;-0.965592, 0.257616,-0.015968, 0.031788;;,
      10;4;-0.966617, 0.254728,-0.005260, 0.027178;;,
      11;4;-0.966883, 0.253832, 0.012163, 0.023633;;,
      12;4;-0.966232, 0.254566, 0.034687, 0.019732;;,
      13;4;-0.964852, 0.255210, 0.060006, 0.018094;;,
      14;4;-0.962635, 0.256024, 0.086920, 0.015181;;,
      15;4;-0.959931, 0.255932, 0.113579, 0.011425;;,
      16;4;-0.957186, 0.254176, 0.138392, 0.006160;;,
      17;4;-0.954812, 0.248298, 0.163324,-0.002830;;,
      18;4;-0.952250, 0.240248, 0.187874,-0.014324;;,
      19;4;-0.949753, 0.231277, 0.209764,-0.021888;;,
      20;4;-0.946897, 0.221961, 0.230660,-0.030237;;,
      21;4;-0.944649, 0.213769, 0.246610,-0.033530;;,
      22;4;-0.945895, 0.208816, 0.247968,-0.013814;;,
      23;4;-0.947481, 0.211875, 0.239491, 0.005714;;,
      24;4;-0.948414, 0.218397, 0.228865, 0.020845;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000008,19.910404, 0.000002;;,
      1;3; 0.000002,19.910404, 0.000008;;,
      2;3; 0.000000,19.910408, 0.000004;;,
      3;3;-0.000002,19.910408,-0.000002;;,
      4;3; 0.000004,19.910397,-0.000008;;,
      5;3;-0.000008,19.910408,-0.000001;;,
      6;3; 0.000004,19.910400,-0.000012;;,
      7;3; 0.000006,19.910404,-0.000004;;,
      8;3;-0.000017,19.910400,-0.000004;;,
      9;3;-0.000002,19.910400,-0.000001;;,
      10;3; 0.000002,19.910410, 0.000007;;,
      11;3;-0.000007,19.910410,-0.000004;;,
      12;3;-0.000009,19.910418, 0.000004;;,
      13;3;-0.000002,19.910414,-0.000004;;,
      14;3;-0.000007,19.910400, 0.000006;;,
      15;3; 0.000008,19.910400,-0.000002;;,
      16;3;-0.000002,19.910408, 0.000010;;,
      17;3;-0.000001,19.910398,-0.000006;;,
      18;3;-0.000005,19.910400, 0.000000;;,
      19;3;-0.000009,19.910404, 0.000010;;,
      20;3; 0.000007,19.910397, 0.000000;;,
      21;3;-0.000009,19.910404,-0.000004;;,
      22;3; 0.000010,19.910398, 0.000000;;,
      23;3;-0.000003,19.910412, 0.000006;;,
      24;3;-0.000004,19.910406,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.744792, 0.044973, 0.089478,-0.659739;;,
      1;4;-0.735882, 0.078771, 0.146513,-0.656358;;,
      2;4;-0.743328, 0.097604, 0.185549,-0.635223;;,
      3;4;-0.756239, 0.113702, 0.213162,-0.608060;;,
      4;4;-0.769145, 0.128276, 0.233199,-0.581016;;,
      5;4;-0.778508, 0.143145, 0.240142,-0.561931;;,
      6;4;-0.787217, 0.158234, 0.242680,-0.544387;;,
      7;4;-0.795973, 0.172957, 0.241681,-0.527354;;,
      8;4;-0.805362, 0.186571, 0.238009,-0.509839;;,
      9;4;-0.815901, 0.198197, 0.232544,-0.490864;;,
      10;4;-0.830130, 0.197374, 0.224715,-0.470564;;,
      11;4;-0.845187, 0.193169, 0.215192,-0.449485;;,
      12;4;-0.863462, 0.184032, 0.205529,-0.422284;;,
      13;4;-0.875559, 0.178140, 0.193703,-0.405145;;,
      14;4;-0.889935, 0.168792, 0.183231,-0.382036;;,
      15;4;-0.903271, 0.158999, 0.174068,-0.358498;;,
      16;4;-0.915278, 0.149189, 0.167155,-0.334765;;,
      17;4;-0.926185, 0.134478, 0.166011,-0.310704;;,
      18;4;-0.937431, 0.114333, 0.167442,-0.283043;;,
      19;4;-0.943770, 0.099305, 0.167725,-0.267031;;,
      20;4;-0.949110, 0.086084, 0.172415,-0.249105;;,
      21;4;-0.952886, 0.075350, 0.172907,-0.237557;;,
      22;4;-0.944698, 0.085396, 0.171362,-0.266248;;,
      23;4;-0.939448, 0.091406, 0.171455,-0.282286;;,
      24;4;-0.938343, 0.092602, 0.173877,-0.284084;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,49.301296, 0.000021;;,
      1;3;-0.000005,49.301300, 0.000008;;,
      2;3;-0.000004,49.301308, 0.000004;;,
      3;3; 0.000000,49.301315, 0.000021;;,
      4;3; 0.000011,49.301308, 0.000011;;,
      5;3;-0.000002,49.301300, 0.000010;;,
      6;3; 0.000011,49.301296, 0.000033;;,
      7;3; 0.000004,49.301296, 0.000030;;,
      8;3;-0.000004,49.301308, 0.000004;;,
      9;3; 0.000000,49.301308, 0.000015;;,
      10;3;-0.000004,49.301300, 0.000004;;,
      11;3; 0.000000,49.301300, 0.000009;;,
      12;3; 0.000008,49.301311, 0.000019;;,
      13;3; 0.000000,49.301300, 0.000025;;,
      14;3;-0.000004,49.301292, 0.000014;;,
      15;3;-0.000002,49.301300, 0.000024;;,
      16;3; 0.000008,49.301300, 0.000019;;,
      17;3;-0.000004,49.301315, 0.000022;;,
      18;3; 0.000002,49.301292, 0.000012;;,
      19;3; 0.000000,49.301300, 0.000015;;,
      20;3; 0.000004,49.301308, 0.000007;;,
      21;3;-0.000006,49.301308, 0.000023;;,
      22;3; 0.000006,49.301308, 0.000013;;,
      23;3;-0.000002,49.301300, 0.000027;;,
      24;3; 0.000000,49.301300, 0.000019;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.987688, 0.088431,-0.000550,-0.129044;;,
      1;4;-0.997700,-0.002510,-0.013419,-0.066402;;,
      2;4;-0.998632,-0.041151,-0.010707,-0.030427;;,
      3;4;-0.998415,-0.054802,-0.005450,-0.011608;;,
      4;4;-0.998272,-0.058746,-0.000922,-0.001245;;,
      5;4;-0.998284,-0.058557, 0.000327, 0.000808;;,
      6;4;-0.998450,-0.055645, 0.000391,-0.000797;;,
      7;4;-0.998709,-0.050493,-0.000400,-0.005626;;,
      8;4;-0.998960,-0.043593,-0.001687,-0.013251;;,
      9;4;-0.999097,-0.035442,-0.003101,-0.023237;;,
      10;4;-0.999005,-0.024409,-0.004296,-0.037086;;,
      11;4;-0.998526,-0.011810,-0.004992,-0.052735;;,
      12;4;-0.997573, 0.001508,-0.005209,-0.069423;;,
      13;4;-0.996140, 0.014699,-0.005055,-0.086389;;,
      14;4;-0.994319, 0.026922,-0.004731,-0.102873;;,
      15;4;-0.992285, 0.037355,-0.004530,-0.118130;;,
      16;4;-0.990284, 0.045193,-0.004818,-0.131423;;,
      17;4;-0.989012, 0.046558,-0.007183,-0.140127;;,
      18;4;-0.987983, 0.045461,-0.010468,-0.147351;;,
      19;4;-0.987142, 0.042366,-0.014277,-0.153468;;,
      20;4;-0.986414, 0.037736,-0.018194,-0.158850;;,
      21;4;-0.985719, 0.032034,-0.021793,-0.163882;;,
      22;4;-0.985313, 0.022597,-0.024976,-0.167401;;,
      23;4;-0.985640, 0.019156,-0.023058,-0.166179;;,
      24;4;-0.986309, 0.019613,-0.018279,-0.162712;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000001,31.604988,-0.000002;;,
      1;3;-0.000008,31.605000, 0.000002;;,
      2;3;-0.000002,31.604988,-0.000004;;,
      3;3;-0.000004,31.604992,-0.000011;;,
      4;3; 0.000002,31.604992, 0.000000;;,
      5;3; 0.000000,31.604994,-0.000004;;,
      6;3;-0.000004,31.604996, 0.000011;;,
      7;3;-0.000006,31.605001, 0.000000;;,
      8;3; 0.000000,31.605001, 0.000004;;,
      9;3;-0.000002,31.604996,-0.000008;;,
      10;3;-0.000010,31.604998,-0.000008;;,
      11;3;-0.000005,31.604992, 0.000004;;,
      12;3;-0.000001,31.604992,-0.000015;;,
      13;3; 0.000010,31.605003,-0.000004;;,
      14;3; 0.000007,31.604994, 0.000004;;,
      15;3;-0.000009,31.604996, 0.000000;;,
      16;3;-0.000004,31.604992, 0.000000;;,
      17;3;-0.000006,31.604990, 0.000015;;,
      18;3; 0.000003,31.604996, 0.000004;;,
      19;3; 0.000000,31.605007, 0.000019;;,
      20;3;-0.000005,31.605000, 0.000015;;,
      21;3; 0.000001,31.604996,-0.000006;;,
      22;3;-0.000004,31.604988,-0.000013;;,
      23;3;-0.000004,31.604988,-0.000015;;,
      24;3; 0.000001,31.604996,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.880697, 0.461236,-0.107833,-0.002330;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 7.059694, 6.093999, 4.396984;;,
      1;3; 7.059703, 6.093997, 4.396994;;,
      2;3; 7.059710, 6.094001, 4.396994;;,
      3;3; 7.059702, 6.093996, 4.396992;;,
      4;3; 7.059698, 6.094006, 4.396980;;,
      5;3; 7.059702, 6.093997, 4.396999;;,
      6;3; 7.059700, 6.093997, 4.396984;;,
      7;3; 7.059708, 6.094003, 4.396992;;,
      8;3; 7.059698, 6.093994, 4.396980;;,
      9;3; 7.059698, 6.094002, 4.396973;;,
      10;3; 7.059700, 6.094003, 4.396992;;,
      11;3; 7.059704, 6.094003, 4.396976;;,
      12;3; 7.059704, 6.094000, 4.396996;;,
      13;3; 7.059698, 6.094001, 4.397007;;,
      14;3; 7.059703, 6.093999, 4.396976;;,
      15;3; 7.059700, 6.093998, 4.396980;;,
      16;3; 7.059705, 6.093992, 4.396980;;,
      17;3; 7.059700, 6.094001, 4.396992;;,
      18;3; 7.059703, 6.094000, 4.396980;;,
      19;3; 7.059698, 6.093992, 4.396980;;,
      20;3; 7.059696, 6.093990, 4.396996;;,
      21;3; 7.059710, 6.093998, 4.396996;;,
      22;3; 7.059692, 6.094002, 4.396996;;,
      23;3; 7.059692, 6.093998, 4.396988;;,
      24;3; 7.059700, 6.093994, 4.396996;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.982943,-0.096950,-0.155727,-0.013149;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001, 7.536308,-0.000006;;,
      1;3;-0.000006, 7.536306, 0.000008;;,
      2;3;-0.000006, 7.536306, 0.000007;;,
      3;3;-0.000001, 7.536301, 0.000009;;,
      4;3;-0.000006, 7.536314, 0.000005;;,
      5;3;-0.000003, 7.536303,-0.000004;;,
      6;3; 0.000006, 7.536297, 0.000009;;,
      7;3; 0.000001, 7.536311, 0.000005;;,
      8;3;-0.000009, 7.536304,-0.000011;;,
      9;3;-0.000000, 7.536313, 0.000001;;,
      10;3; 0.000008, 7.536310, 0.000018;;,
      11;3;-0.000004, 7.536294, 0.000010;;,
      12;3;-0.000008, 7.536313, 0.000000;;,
      13;3;-0.000008, 7.536305, 0.000001;;,
      14;3; 0.000000, 7.536299, 0.000004;;,
      15;3; 0.000000, 7.536306,-0.000002;;,
      16;3; 0.000006, 7.536310,-0.000004;;,
      17;3;-0.000013, 7.536304, 0.000015;;,
      18;3;-0.000011, 7.536319,-0.000015;;,
      19;3; 0.000008, 7.536310, 0.000009;;,
      20;3; 0.000003, 7.536303, 0.000012;;,
      21;3;-0.000001, 7.536300,-0.000003;;,
      22;3; 0.000011, 7.536305, 0.000003;;,
      23;3; 0.000001, 7.536309, 0.000002;;,
      24;3; 0.000004, 7.536305, 0.000009;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.973173,-0.128278, 0.135646, 0.134461;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002, 7.512698, 0.000007;;,
      1;3;-0.000001, 7.512703, 0.000003;;,
      2;3;-0.000006, 7.512695,-0.000002;;,
      3;3; 0.000006, 7.512686, 0.000015;;,
      4;3; 0.000001, 7.512695,-0.000006;;,
      5;3; 0.000000, 7.512701, 0.000004;;,
      6;3; 0.000002, 7.512701, 0.000004;;,
      7;3; 0.000000, 7.512688,-0.000003;;,
      8;3; 0.000006, 7.512697, 0.000005;;,
      9;3;-0.000005, 7.512691,-0.000005;;,
      10;3; 0.000008, 7.512699, 0.000002;;,
      11;3;-0.000004, 7.512701, 0.000001;;,
      12;3;-0.000006, 7.512701,-0.000009;;,
      13;3; 0.000006, 7.512695,-0.000012;;,
      14;3; 0.000008, 7.512701, 0.000001;;,
      15;3;-0.000014, 7.512690, 0.000002;;,
      16;3;-0.000002, 7.512693,-0.000011;;,
      17;3; 0.000006, 7.512690, 0.000003;;,
      18;3;-0.000004, 7.512686,-0.000000;;,
      19;3;-0.000006, 7.512695,-0.000002;;,
      20;3;-0.000003, 7.512701,-0.000002;;,
      21;3; 0.000003, 7.512694, 0.000003;;,
      22;3; 0.000002, 7.512691,-0.000003;;,
      23;3;-0.000003, 7.512693,-0.000002;;,
      24;3; 0.000000, 7.512697, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb4}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-1.000000, 0.000001,-0.000001,-0.000001;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000003,10.212727,-0.000002;;,
      1;3;-0.000002,10.212718,-0.000005;;,
      2;3; 0.000000,10.212727,-0.000008;;,
      3;3;-0.000002,10.212717, 0.000010;;,
      4;3;-0.000002,10.212728, 0.000000;;,
      5;3; 0.000001,10.212720, 0.000002;;,
      6;3; 0.000000,10.212738,-0.000010;;,
      7;3; 0.000006,10.212724,-0.000008;;,
      8;3; 0.000001,10.212726,-0.000019;;,
      9;3;-0.000006,10.212729,-0.000008;;,
      10;3; 0.000005,10.212729, 0.000017;;,
      11;3;-0.000009,10.212728, 0.000015;;,
      12;3; 0.000000,10.212725,-0.000011;;,
      13;3; 0.000003,10.212729,-0.000002;;,
      14;3;-0.000010,10.212724, 0.000010;;,
      15;3; 0.000003,10.212729, 0.000011;;,
      16;3; 0.000010,10.212717,-0.000019;;,
      17;3; 0.000006,10.212728,-0.000002;;,
      18;3;-0.000005,10.212720,-0.000008;;,
      19;3; 0.000006,10.212717, 0.000002;;,
      20;3; 0.000005,10.212726,-0.000004;;,
      21;3; 0.000001,10.212723,-0.000011;;,
      22;3; 0.000007,10.212736,-0.000006;;,
      23;3; 0.000007,10.212723, 0.000000;;,
      24;3; 0.000001,10.212727,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.859332, 0.510740, 0.014099, 0.022250;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 6.192896,21.270996, 0.498991;;,
      1;3; 6.192904,21.271000, 0.499004;;,
      2;3; 6.192902,21.270992, 0.499002;;,
      3;3; 6.192905,21.270987, 0.499001;;,
      4;3; 6.192896,21.270996, 0.498997;;,
      5;3; 6.192902,21.270994, 0.499016;;,
      6;3; 6.192898,21.270996, 0.498997;;,
      7;3; 6.192902,21.271004, 0.498997;;,
      8;3; 6.192900,21.271000, 0.498993;;,
      9;3; 6.192904,21.270998, 0.498985;;,
      10;3; 6.192898,21.270996, 0.499004;;,
      11;3; 6.192902,21.271002, 0.498989;;,
      12;3; 6.192902,21.270992, 0.498997;;,
      13;3; 6.192899,21.271011, 0.499012;;,
      14;3; 6.192908,21.270992, 0.498985;;,
      15;3; 6.192894,21.270992, 0.498993;;,
      16;3; 6.192903,21.270992, 0.498989;;,
      17;3; 6.192902,21.270996, 0.499004;;,
      18;3; 6.192895,21.270996, 0.498997;;,
      19;3; 6.192902,21.270988, 0.498993;;,
      20;3; 6.192896,21.270994, 0.499016;;,
      21;3; 6.192909,21.270992, 0.499001;;,
      22;3; 6.192896,21.271000, 0.499004;;,
      23;3; 6.192898,21.271000, 0.498997;;,
      24;3; 6.192900,21.270996, 0.499001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.835148, 0.548662,-0.021102,-0.032456;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000002, 7.536000, 0.000000;;,
      1;3; 0.000003, 7.536002,-0.000009;;,
      2;3;-0.000006, 7.536007,-0.000010;;,
      3;3; 0.000006, 7.535996,-0.000010;;,
      4;3;-0.000004, 7.535998,-0.000002;;,
      5;3; 0.000004, 7.535988, 0.000009;;,
      6;3;-0.000008, 7.536008,-0.000010;;,
      7;3; 0.000000, 7.535990,-0.000006;;,
      8;3; 0.000000, 7.536002,-0.000002;;,
      9;3;-0.000004, 7.535995, 0.000011;;,
      10;3;-0.000002, 7.536002,-0.000006;;,
      11;3; 0.000000, 7.536001, 0.000002;;,
      12;3;-0.000010, 7.535994,-0.000008;;,
      13;3; 0.000010, 7.536007, 0.000008;;,
      14;3; 0.000002, 7.536004,-0.000002;;,
      15;3; 0.000006, 7.536002, 0.000015;;,
      16;3;-0.000003, 7.535994,-0.000006;;,
      17;3;-0.000005, 7.535991, 0.000002;;,
      18;3;-0.000000, 7.536001,-0.000012;;,
      19;3; 0.000001, 7.535995, 0.000006;;,
      20;3;-0.000003, 7.535992, 0.000001;;,
      21;3; 0.000000, 7.535997, 0.000003;;,
      22;3; 0.000009, 7.535994,-0.000003;;,
      23;3;-0.000004, 7.536005,-0.000006;;,
      24;3; 0.000012, 7.535998, 0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      1;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      2;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
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
      20;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      21;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      22;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      23;4;-0.868290, 0.495770,-0.012686, 0.011160;;,
      24;4;-0.868290, 0.495770,-0.012686, 0.011160;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000001, 7.513007,-0.000002;;,
      1;3; 0.000002, 7.513000,-0.000004;;,
      2;3; 0.000003, 7.512989,-0.000007;;,
      3;3;-0.000004, 7.512996,-0.000004;;,
      4;3; 0.000002, 7.512994, 0.000004;;,
      5;3; 0.000000, 7.512995,-0.000004;;,
      6;3;-0.000004, 7.513006, 0.000000;;,
      7;3; 0.000000, 7.513001, 0.000002;;,
      8;3; 0.000008, 7.513016, 0.000002;;,
      9;3; 0.000004, 7.512994, 0.000002;;,
      10;3;-0.000008, 7.512991, 0.000002;;,
      11;3;-0.000002, 7.513011, 0.000010;;,
      12;3; 0.000008, 7.513004, 0.000002;;,
      13;3; 0.000004, 7.513011, 0.000000;;,
      14;3; 0.000015, 7.512998, 0.000011;;,
      15;3;-0.000006, 7.513000,-0.000004;;,
      16;3;-0.000007, 7.513011, 0.000000;;,
      17;3;-0.000005, 7.512986, 0.000004;;,
      18;3; 0.000002, 7.513000,-0.000002;;,
      19;3; 0.000006, 7.513008, 0.000005;;,
      20;3; 0.000006, 7.513012, 0.000001;;,
      21;3; 0.000002, 7.512989,-0.000000;;,
      22;3; 0.000004, 7.513008,-0.000002;;,
      23;3; 0.000001, 7.512987,-0.000008;;,
      24;3; 0.000000, 7.512978,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002,10.212008,-0.000002;;,
      1;3;-0.000004,10.212008, 0.000010;;,
      2;3; 0.000004,10.212004, 0.000004;;,
      3;3; 0.000002,10.212012, 0.000015;;,
      4;3;-0.000006,10.212017, 0.000000;;,
      5;3;-0.000004,10.212023, 0.000000;;,
      6;3; 0.000000,10.211991, 0.000000;;,
      7;3;-0.000004,10.211994, 0.000004;;,
      8;3; 0.000000,10.212011,-0.000008;;,
      9;3;-0.000004,10.212021, 0.000011;;,
      10;3;-0.000008,10.212000, 0.000011;;,
      11;3; 0.000004,10.212005,-0.000008;;,
      12;3;-0.000010,10.212007, 0.000011;;,
      13;3;-0.000008,10.212008, 0.000000;;,
      14;3;-0.000008,10.212008, 0.000015;;,
      15;3;-0.000002,10.212016,-0.000008;;,
      16;3; 0.000008,10.211996,-0.000004;;,
      17;3; 0.000001,10.212015,-0.000011;;,
      18;3; 0.000000,10.211999,-0.000015;;,
      19;3; 0.000005,10.212006, 0.000015;;,
      20;3; 0.000005,10.212009, 0.000004;;,
      21;3;-0.000000,10.212004, 0.000008;;,
      22;3; 0.000007,10.212002, 0.000004;;,
      23;3; 0.000007,10.212011, 0.000008;;,
      24;3; 0.000000,10.212009,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.827539, 0.561301, 0.009658,-0.005203;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.016504,23.333992, 0.008983;;,
      1;3;-0.016496,23.333988, 0.009001;;,
      2;3;-0.016500,23.333986, 0.008997;;,
      3;3;-0.016499,23.333982, 0.008991;;,
      4;3;-0.016504,23.333996, 0.008984;;,
      5;3;-0.016499,23.333992, 0.009007;;,
      6;3;-0.016499,23.333996, 0.008984;;,
      7;3;-0.016499,23.333994, 0.008987;;,
      8;3;-0.016500,23.333988, 0.008984;;,
      9;3;-0.016500,23.333994, 0.008976;;,
      10;3;-0.016499,23.334000, 0.008995;;,
      11;3;-0.016499,23.333994, 0.008980;;,
      12;3;-0.016500,23.333990, 0.008991;;,
      13;3;-0.016509,23.333998, 0.009007;;,
      14;3;-0.016490,23.333984, 0.008980;;,
      15;3;-0.016506,23.333988, 0.008984;;,
      16;3;-0.016507,23.333986, 0.008987;;,
      17;3;-0.016502,23.333992, 0.009003;;,
      18;3;-0.016501,23.333988, 0.008987;;,
      19;3;-0.016504,23.333986, 0.008995;;,
      20;3;-0.016506,23.333984, 0.009003;;,
      21;3;-0.016502,23.333992, 0.008999;;,
      22;3;-0.016510,23.333988, 0.008991;;,
      23;3;-0.016500,23.333988, 0.008991;;,
      24;3;-0.016500,23.333992, 0.009003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.739551, 0.671716,-0.028230,-0.032636;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000, 6.996994,-0.000010;;,
      1;3;-0.000004, 6.996995,-0.000007;;,
      2;3;-0.000004, 6.996997, 0.000006;;,
      3;3; 0.000000, 6.996996, 0.000000;;,
      4;3;-0.000008, 6.997005,-0.000003;;,
      5;3; 0.000004, 6.996995, 0.000006;;,
      6;3; 0.000000, 6.996993, 0.000006;;,
      7;3;-0.000008, 6.996979, 0.000007;;,
      8;3; 0.000010, 6.996992, 0.000002;;,
      9;3; 0.000000, 6.997009, 0.000011;;,
      10;3; 0.000000, 6.997011,-0.000002;;,
      11;3; 0.000009, 6.996996, 0.000002;;,
      12;3;-0.000006, 6.996988,-0.000006;;,
      13;3;-0.000000, 6.996998,-0.000002;;,
      14;3;-0.000012, 6.997011,-0.000006;;,
      15;3;-0.000001, 6.996998,-0.000004;;,
      16;3;-0.000009, 6.996996, 0.000000;;,
      17;3; 0.000003, 6.996994,-0.000010;;,
      18;3; 0.000002, 6.997007, 0.000011;;,
      19;3;-0.000005, 6.997003, 0.000006;;,
      20;3; 0.000000, 6.996997, 0.000000;;,
      21;3; 0.000002, 6.996994,-0.000002;;,
      22;3;-0.000006, 6.996999,-0.000005;;,
      23;3; 0.000000, 6.997006, 0.000009;;,
      24;3; 0.000017, 6.996989, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      1;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      2;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      3;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      4;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      5;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      6;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      7;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      8;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      9;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      10;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      11;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      12;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      13;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      14;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      15;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      16;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      17;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      18;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      19;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      20;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      21;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      22;4;-0.959454, 0.281525,-0.004263, 0.013211;;,
      23;4;-0.959453, 0.281525,-0.004263, 0.013211;;,
      24;4;-0.959454, 0.281525,-0.004263, 0.013211;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000004, 7.016003, 0.000004;;,
      1;3; 0.000002, 7.016007, 0.000000;;,
      2;3;-0.000008, 7.016002,-0.000003;;,
      3;3; 0.000002, 7.016004,-0.000008;;,
      4;3; 0.000006, 7.016011,-0.000004;;,
      5;3; 0.000008, 7.015995,-0.000002;;,
      6;3; 0.000004, 7.016007, 0.000004;;,
      7;3; 0.000008, 7.016008, 0.000009;;,
      8;3; 0.000000, 7.016003, 0.000003;;,
      9;3;-0.000011, 7.016014, 0.000005;;,
      10;3; 0.000004, 7.015997,-0.000008;;,
      11;3; 0.000002, 7.016008,-0.000008;;,
      12;3; 0.000004, 7.016014, 0.000005;;,
      13;3; 0.000004, 7.016012,-0.000006;;,
      14;3;-0.000001, 7.016018, 0.000001;;,
      15;3; 0.000002, 7.015995,-0.000001;;,
      16;3;-0.000010, 7.016010,-0.000010;;,
      17;3; 0.000012, 7.016003, 0.000008;;,
      18;3; 0.000000, 7.016006, 0.000000;;,
      19;3;-0.000001, 7.016001, 0.000004;;,
      20;3; 0.000004, 7.016006, 0.000003;;,
      21;3;-0.000003, 7.015999, 0.000003;;,
      22;3;-0.000002, 7.016014,-0.000001;;,
      23;3;-0.000015, 7.016009,-0.000010;;,
      24;3; 0.000011, 7.016007,-0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000004, 7.720998, 0.000001;;,
      1;3;-0.000004, 7.720991, 0.000001;;,
      2;3; 0.000002, 7.720995, 0.000002;;,
      3;3; 0.000000, 7.720984, 0.000017;;,
      4;3; 0.000008, 7.720997, 0.000004;;,
      5;3;-0.000002, 7.720989,-0.000019;;,
      6;3;-0.000004, 7.721004,-0.000004;;,
      7;3; 0.000008, 7.721000,-0.000008;;,
      8;3; 0.000000, 7.720989, 0.000004;;,
      9;3; 0.000000, 7.720995, 0.000008;;,
      10;3;-0.000011, 7.720991, 0.000011;;,
      11;3;-0.000002, 7.720994, 0.000000;;,
      12;3; 0.000002, 7.721001, 0.000000;;,
      13;3;-0.000006, 7.720996, 0.000008;;,
      14;3; 0.000008, 7.720991, 0.000023;;,
      15;3; 0.000008, 7.721004,-0.000015;;,
      16;3;-0.000004, 7.720996, 0.000000;;,
      17;3;-0.000002, 7.720999, 0.000019;;,
      18;3;-0.000003, 7.720993,-0.000015;;,
      19;3; 0.000004, 7.720995, 0.000008;;,
      20;3;-0.000007, 7.720995,-0.000008;;,
      21;3; 0.000005, 7.720989, 0.000008;;,
      22;3;-0.000006, 7.720995,-0.000011;;,
      23;3; 0.000008, 7.720993,-0.000011;;,
      24;3;-0.000005, 7.720989,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      1;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      2;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      3;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      4;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      5;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      6;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      7;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      8;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      9;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      10;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      11;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      12;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      13;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      14;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      15;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      16;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      17;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      18;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      19;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      20;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      21;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      22;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      23;4;-0.769967, 0.636768, 0.019998, 0.035746;;,
      24;4;-0.769967, 0.636768, 0.019998, 0.035746;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-6.516906,22.686001, 0.103982;;,
      1;3;-6.516901,22.685997, 0.103996;;,
      2;3;-6.516901,22.686001, 0.103994;;,
      3;3;-6.516905,22.685993, 0.103992;;,
      4;3;-6.516903,22.686003, 0.103989;;,
      5;3;-6.516911,22.686005, 0.104004;;,
      6;3;-6.516903,22.686012, 0.103985;;,
      7;3;-6.516899,22.686005, 0.103989;;,
      8;3;-6.516901,22.685995, 0.103981;;,
      9;3;-6.516909,22.686001, 0.103981;;,
      10;3;-6.516911,22.686001, 0.104000;;,
      11;3;-6.516899,22.686005, 0.103981;;,
      12;3;-6.516895,22.686003, 0.103985;;,
      13;3;-6.516900,22.686020, 0.104008;;,
      14;3;-6.516894,22.686005, 0.103977;;,
      15;3;-6.516904,22.686007, 0.103981;;,
      16;3;-6.516904,22.686001, 0.103981;;,
      17;3;-6.516902,22.686001, 0.104000;;,
      18;3;-6.516904,22.686003, 0.103985;;,
      19;3;-6.516912,22.685991, 0.103989;;,
      20;3;-6.516911,22.685999, 0.104004;;,
      21;3;-6.516893,22.685997, 0.103992;;,
      22;3;-6.516916,22.686001, 0.103996;;,
      23;3;-6.516905,22.686001, 0.103996;;,
      24;3;-6.516909,22.686001, 0.103996;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.802516, 0.596504,-0.000887,-0.012225;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000001, 6.408997, 0.000010;;,
      1;3;-0.000008, 6.409000, 0.000006;;,
      2;3; 0.000002, 6.408998, 0.000009;;,
      3;3;-0.000004, 6.409000, 0.000011;;,
      4;3;-0.000004, 6.408993, 0.000001;;,
      5;3; 0.000011, 6.408997, 0.000001;;,
      6;3; 0.000000, 6.409004, 0.000000;;,
      7;3; 0.000000, 6.409000, 0.000007;;,
      8;3;-0.000002, 6.409012, 0.000009;;,
      9;3;-0.000010, 6.408989, 0.000000;;,
      10;3;-0.000008, 6.409016, 0.000002;;,
      11;3; 0.000001, 6.408997, 0.000002;;,
      12;3; 0.000000, 6.409016,-0.000017;;,
      13;3;-0.000009, 6.408989,-0.000013;;,
      14;3; 0.000009, 6.409008,-0.000011;;,
      15;3; 0.000000, 6.409000, 0.000002;;,
      16;3; 0.000006, 6.408993, 0.000002;;,
      17;3; 0.000002, 6.408985,-0.000015;;,
      18;3;-0.000006, 6.409004, 0.000000;;,
      19;3;-0.000004, 6.408985, 0.000004;;,
      20;3; 0.000001, 6.408997, 0.000011;;,
      21;3; 0.000010, 6.408991,-0.000004;;,
      22;3; 0.000004, 6.409002,-0.000002;;,
      23;3;-0.000002, 6.409004,-0.000006;;,
      24;3;-0.000002, 6.408993,-0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      1;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      2;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      3;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      4;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      5;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      6;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      7;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      8;4;-0.942167, 0.334989, 0.004041, 0.009396;;,
      9;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      10;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      11;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      12;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      13;4;-0.942166, 0.334989, 0.004041, 0.009396;;,
      14;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      15;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      16;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      17;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      18;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      19;4;-0.942166, 0.334989, 0.004041, 0.009396;;,
      20;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      21;4;-0.942166, 0.334989, 0.004042, 0.009396;;,
      22;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      23;4;-0.942167, 0.334989, 0.004042, 0.009396;;,
      24;4;-0.942166, 0.334989, 0.004042, 0.009396;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000003, 6.149983,-0.000001;;,
      1;3; 0.000002, 6.149989, 0.000005;;,
      2;3; 0.000000, 6.149981, 0.000007;;,
      3;3; 0.000008, 6.149996, 0.000007;;,
      4;3; 0.000000, 6.149985,-0.000000;;,
      5;3;-0.000004, 6.149996, 0.000002;;,
      6;3; 0.000004, 6.150002,-0.000013;;,
      7;3; 0.000004, 6.149996,-0.000006;;,
      8;3; 0.000006, 6.150013, 0.000007;;,
      9;3;-0.000011, 6.149986,-0.000003;;,
      10;3; 0.000003, 6.149992, 0.000003;;,
      11;3; 0.000015, 6.149996,-0.000010;;,
      12;3; 0.000003, 6.149996,-0.000002;;,
      13;3; 0.000004, 6.149998,-0.000002;;,
      14;3; 0.000000, 6.150002, 0.000003;;,
      15;3; 0.000006, 6.150000,-0.000003;;,
      16;3; 0.000000, 6.149996, 0.000005;;,
      17;3; 0.000010, 6.149996,-0.000006;;,
      18;3; 0.000012, 6.150007, 0.000014;;,
      19;3; 0.000000, 6.149986, 0.000007;;,
      20;3; 0.000008, 6.150009, 0.000004;;,
      21;3; 0.000005, 6.150016,-0.000004;;,
      22;3;-0.000001, 6.150003, 0.000002;;,
      23;3; 0.000005, 6.149993,-0.000006;;,
      24;3;-0.000012, 6.149982,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000003, 6.145994, 0.000003;;,
      1;3;-0.000006, 6.146006,-0.000001;;,
      2;3; 0.000000, 6.146000, 0.000011;;,
      3;3; 0.000000, 6.145994, 0.000002;;,
      4;3; 0.000000, 6.146015,-0.000017;;,
      5;3; 0.000004, 6.145991, 0.000004;;,
      6;3;-0.000004, 6.145998, 0.000008;;,
      7;3; 0.000000, 6.145994, 0.000008;;,
      8;3; 0.000006, 6.145998, 0.000004;;,
      9;3;-0.000005, 6.145996, 0.000011;;,
      10;3; 0.000002, 6.145995,-0.000008;;,
      11;3; 0.000008, 6.146002,-0.000004;;,
      12;3;-0.000003, 6.145989, 0.000008;;,
      13;3; 0.000005, 6.145990,-0.000004;;,
      14;3; 0.000007, 6.145999, 0.000023;;,
      15;3; 0.000004, 6.146000, 0.000019;;,
      16;3;-0.000004, 6.145999,-0.000008;;,
      17;3;-0.000006, 6.145995, 0.000000;;,
      18;3;-0.000004, 6.145997, 0.000000;;,
      19;3; 0.000000, 6.145994,-0.000008;;,
      20;3; 0.000013, 6.145996, 0.000000;;,
      21;3; 0.000003, 6.145992, 0.000000;;,
      22;3; 0.000005, 6.146002, 0.000000;;,
      23;3; 0.000006, 6.146004, 0.000000;;,
      24;3;-0.000003, 6.146004,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.726236, 0.686556, 0.024775,-0.024667;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-11.443208,18.881001, 0.461992;;,
      1;3;-11.443199,18.880997, 0.462006;;,
      2;3;-11.443203,18.881002, 0.462006;;,
      3;3;-11.443203,18.881001, 0.462000;;,
      4;3;-11.443209,18.881008, 0.461998;;,
      5;3;-11.443211,18.880999, 0.462009;;,
      6;3;-11.443203,18.881001, 0.461990;;,
      7;3;-11.443199,18.881008, 0.462002;;,
      8;3;-11.443209,18.880995, 0.461990;;,
      9;3;-11.443209,18.881006, 0.461983;;,
      10;3;-11.443211,18.881001, 0.462009;;,
      11;3;-11.443203,18.881001, 0.461987;;,
      12;3;-11.443205,18.881001, 0.462006;;,
      13;3;-11.443208,18.881008, 0.462021;;,
      14;3;-11.443198,18.880993, 0.461987;;,
      15;3;-11.443201,18.880997, 0.461994;;,
      16;3;-11.443204,18.881001, 0.461990;;,
      17;3;-11.443213,18.881004, 0.462009;;,
      18;3;-11.443210,18.881006, 0.461998;;,
      19;3;-11.443209,18.880999, 0.461994;;,
      20;3;-11.443213,18.881001, 0.462006;;,
      21;3;-11.443192,18.881001, 0.462002;;,
      22;3;-11.443213,18.881008, 0.462006;;,
      23;3;-11.443199,18.881001, 0.461998;;,
      24;3;-11.443209,18.881001, 0.461998;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.889352, 0.457222, 0.000001,-0.000885;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002, 4.919999,-0.000005;;,
      1;3; 0.000002, 4.920005,-0.000009;;,
      2;3;-0.000013, 4.919996,-0.000008;;,
      3;3;-0.000010, 4.919998, 0.000003;;,
      4;3;-0.000002, 4.919994,-0.000009;;,
      5;3;-0.000008, 4.919991,-0.000001;;,
      6;3;-0.000008, 4.920006, 0.000006;;,
      7;3; 0.000004, 4.920002,-0.000002;;,
      8;3;-0.000008, 4.920006,-0.000008;;,
      9;3;-0.000002, 4.919983,-0.000005;;,
      10;3; 0.000008, 4.919994,-0.000004;;,
      11;3; 0.000006, 4.919991, 0.000008;;,
      12;3;-0.000002, 4.919994, 0.000010;;,
      13;3;-0.000012, 4.920010, 0.000004;;,
      14;3;-0.000000, 4.920010,-0.000009;;,
      15;3; 0.000000, 4.919998, 0.000004;;,
      16;3;-0.000001, 4.919998, 0.000006;;,
      17;3; 0.000004, 4.920006, 0.000008;;,
      18;3; 0.000013, 4.919987, 0.000000;;,
      19;3;-0.000010, 4.920013, 0.000002;;,
      20;3; 0.000006, 4.919998, 0.000008;;,
      21;3; 0.000006, 4.920008, 0.000008;;,
      22;3;-0.000011, 4.919994,-0.000011;;,
      23;3; 0.000011, 4.919998,-0.000004;;,
      24;3;-0.000002, 4.919998,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.974703, 0.223503,-0.000000,-0.000433;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000005, 5.233001,-0.000000;;,
      1;3;-0.000004, 5.233006,-0.000002;;,
      2;3; 0.000000, 5.232999, 0.000006;;,
      3;3;-0.000004, 5.233009, 0.000006;;,
      4;3;-0.000008, 5.232999, 0.000008;;,
      5;3;-0.000004, 5.232997,-0.000004;;,
      6;3; 0.000004, 5.233021, 0.000000;;,
      7;3; 0.000000, 5.233013,-0.000006;;,
      8;3; 0.000004, 5.232998,-0.000005;;,
      9;3;-0.000011, 5.232991,-0.000006;;,
      10;3; 0.000000, 5.233008,-0.000003;;,
      11;3; 0.000002, 5.233006, 0.000006;;,
      12;3; 0.000009, 5.233005, 0.000007;;,
      13;3;-0.000001, 5.232999, 0.000008;;,
      14;3; 0.000003, 5.232996, 0.000004;;,
      15;3; 0.000004, 5.233017, 0.000003;;,
      16;3; 0.000000, 5.233000,-0.000002;;,
      17;3;-0.000008, 5.232993,-0.000010;;,
      18;3;-0.000008, 5.233007,-0.000013;;,
      19;3; 0.000010, 5.232996, 0.000010;;,
      20;3;-0.000004, 5.233017, 0.000004;;,
      21;3; 0.000000, 5.233005,-0.000004;;,
      22;3; 0.000010, 5.233006,-0.000004;;,
      23;3;-0.000004, 5.233015, 0.000004;;,
      24;3; 0.000006, 5.232988,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000006, 5.570995,-0.000001;;,
      1;3; 0.000004, 5.571000, 0.000006;;,
      2;3; 0.000000, 5.571007, 0.000012;;,
      3;3; 0.000002, 5.571013, 0.000010;;,
      4;3; 0.000002, 5.570999,-0.000002;;,
      5;3; 0.000008, 5.571005, 0.000004;;,
      6;3; 0.000004, 5.570992, 0.000002;;,
      7;3; 0.000000, 5.570998, 0.000002;;,
      8;3; 0.000008, 5.571004, 0.000006;;,
      9;3;-0.000004, 5.571001,-0.000002;;,
      10;3; 0.000006, 5.571001,-0.000002;;,
      11;3;-0.000002, 5.571001,-0.000002;;,
      12;3; 0.000003, 5.570993,-0.000004;;,
      13;3; 0.000003, 5.571001,-0.000008;;,
      14;3;-0.000000, 5.571003, 0.000004;;,
      15;3;-0.000008, 5.571001,-0.000002;;,
      16;3; 0.000004, 5.571003, 0.000010;;,
      17;3; 0.000008, 5.571009, 0.000004;;,
      18;3;-0.000003, 5.570995, 0.000004;;,
      19;3; 0.000000, 5.570984,-0.000011;;,
      20;3;-0.000006, 5.571001,-0.000002;;,
      21;3; 0.000013, 5.571014,-0.000017;;,
      22;3; 0.000010, 5.571001,-0.000013;;,
      23;3;-0.000004, 5.570997, 0.000010;;,
      24;3;-0.000006, 5.570999, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour1}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-0.500000,-0.500000, 0.500000,-0.500000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-1.467294, 5.012922,-18.471138;;,
      1;3;-1.467301, 5.012936,-18.471142;;,
      2;3;-1.467302, 5.012929,-18.471142;;,
      3;3;-1.467293, 5.012927,-18.471140;;,
      4;3;-1.467295, 5.012920,-18.471142;;,
      5;3;-1.467293, 5.012925,-18.471153;;,
      6;3;-1.467293, 5.012925,-18.471130;;,
      7;3;-1.467306, 5.012919,-18.471123;;,
      8;3;-1.467302, 5.012923,-18.471151;;,
      9;3;-1.467297, 5.012921,-18.471142;;,
      10;3;-1.467304, 5.012924,-18.471148;;,
      11;3;-1.467302, 5.012928,-18.471146;;,
      12;3;-1.467302, 5.012924,-18.471134;;,
      13;3;-1.467308, 5.012922,-18.471123;;,
      14;3;-1.467300, 5.012920,-18.471136;;,
      15;3;-1.467304, 5.012924,-18.471130;;,
      16;3;-1.467289, 5.012930,-18.471132;;,
      17;3;-1.467300, 5.012928,-18.471136;;,
      18;3;-1.467299, 5.012922,-18.471136;;,
      19;3;-1.467299, 5.012926,-18.471140;;,
      20;3;-1.467302, 5.012926,-18.471149;;,
      21;3;-1.467295, 5.012928,-18.471138;;,
      22;3;-1.467304, 5.012928,-18.471142;;,
      23;3;-1.467300, 5.012924,-18.471119;;,
      24;3;-1.467300, 5.012924,-18.471138;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour2}
    AnimationKey { // Rotation
      0;
      25;
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
      22;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      23;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      24;4;-0.106406,-0.175293,-0.069270, 0.976295;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000001, 1.000000, 1.000001;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 3.884889,-9.462715,-18.584904;;,
      1;3; 3.884915,-9.462713,-18.584902;;,
      2;3; 3.884899,-9.462723,-18.584904;;,
      3;3; 3.884902,-9.462704,-18.584894;;,
      4;3; 3.884904,-9.462714,-18.584900;;,
      5;3; 3.884899,-9.462707,-18.584890;;,
      6;3; 3.884897,-9.462729,-18.584900;;,
      7;3; 3.884900,-9.462730,-18.584909;;,
      8;3; 3.884900,-9.462738,-18.584904;;,
      9;3; 3.884905,-9.462714,-18.584890;;,
      10;3; 3.884903,-9.462728,-18.584904;;,
      11;3; 3.884893,-9.462695,-18.584892;;,
      12;3; 3.884907,-9.462706,-18.584898;;,
      13;3; 3.884898,-9.462709,-18.584900;;,
      14;3; 3.884908,-9.462721,-18.584900;;,
      15;3; 3.884895,-9.462732,-18.584892;;,
      16;3; 3.884902,-9.462704,-18.584896;;,
      17;3; 3.884907,-9.462713,-18.584902;;,
      18;3; 3.884901,-9.462716,-18.584911;;,
      19;3; 3.884907,-9.462695,-18.584894;;,
      20;3; 3.884912,-9.462693,-18.584906;;,
      21;3; 3.884918,-9.462706,-18.584894;;,
      22;3; 3.884906,-9.462721,-18.584900;;,
      23;3; 3.884909,-9.462700,-18.584906;;,
      24;3; 3.884902,-9.462713,-18.584900;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour3}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000001,11.039511, 0.000003;;,
      1;3;-0.000008,11.039518,-0.000002;;,
      2;3;-0.000003,11.039514, 0.000010;;,
      3;3;-0.000003,11.039503,-0.000002;;,
      4;3;-0.000002,11.039490,-0.000007;;,
      5;3; 0.000004,11.039512,-0.000002;;,
      6;3;-0.000001,11.039501, 0.000000;;,
      7;3; 0.000007,11.039514, 0.000008;;,
      8;3; 0.000003,11.039508, 0.000002;;,
      9;3; 0.000005,11.039492, 0.000018;;,
      10;3;-0.000003,11.039508, 0.000004;;,
      11;3; 0.000007,11.039497, 0.000004;;,
      12;3; 0.000005,11.039506,-0.000003;;,
      13;3; 0.000004,11.039504,-0.000010;;,
      14;3; 0.000001,11.039506, 0.000007;;,
      15;3;-0.000001,11.039515,-0.000002;;,
      16;3; 0.000001,11.039480,-0.000004;;,
      17;3;-0.000003,11.039494,-0.000008;;,
      18;3;-0.000006,11.039516,-0.000004;;,
      19;3;-0.000002,11.039495,-0.000003;;,
      20;3;-0.000008,11.039474,-0.000001;;,
      21;3;-0.000004,11.039524, 0.000000;;,
      22;3;-0.000008,11.039507, 0.000001;;,
      23;3; 0.000001,11.039494, 0.000003;;,
      24;3;-0.000000,11.039507, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      1;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      2;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      3;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      4;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      5;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      6;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      7;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      8;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      9;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      10;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      11;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      12;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      13;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      14;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      15;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      16;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      17;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      18;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      19;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      20;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      21;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      22;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      23;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      24;4;-0.135080, 0.914205,-0.186988, 0.333195;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-2.648914,-11.494602,22.195292;;,
      1;3;-2.648896,-11.494612,22.195297;;,
      2;3;-2.648905,-11.494610,22.195290;;,
      3;3;-2.648899,-11.494596,22.195311;;,
      4;3;-2.648905,-11.494604,22.195301;;,
      5;3;-2.648909,-11.494592,22.195305;;,
      6;3;-2.648912,-11.494616,22.195297;;,
      7;3;-2.648908,-11.494623,22.195297;;,
      8;3;-2.648910,-11.494621,22.195295;;,
      9;3;-2.648905,-11.494613,22.195320;;,
      10;3;-2.648901,-11.494619,22.195297;;,
      11;3;-2.648911,-11.494582,22.195307;;,
      12;3;-2.648903,-11.494605,22.195299;;,
      13;3;-2.648907,-11.494594,22.195301;;,
      14;3;-2.648905,-11.494617,22.195301;;,
      15;3;-2.648905,-11.494621,22.195301;;,
      16;3;-2.648905,-11.494591,22.195305;;,
      17;3;-2.648899,-11.494608,22.195295;;,
      18;3;-2.648901,-11.494606,22.195284;;,
      19;3;-2.648911,-11.494590,22.195312;;,
      20;3;-2.648897,-11.494591,22.195290;;,
      21;3;-2.648890,-11.494591,22.195311;;,
      22;3;-2.648903,-11.494614,22.195297;;,
      23;3;-2.648901,-11.494590,22.195301;;,
      24;3;-2.648905,-11.494600,22.195297;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour5}
    AnimationKey { // Rotation
      0;
      25;
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
      24;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002,11.039503,-0.000002;;,
      1;3; 0.000000,11.039503, 0.000001;;,
      2;3; 0.000000,11.039514,-0.000002;;,
      3;3; 0.000000,11.039505,-0.000002;;,
      4;3;-0.000001,11.039503, 0.000003;;,
      5;3;-0.000003,11.039507, 0.000002;;,
      6;3;-0.000001,11.039512, 0.000000;;,
      7;3; 0.000003,11.039499, 0.000001;;,
      8;3;-0.000002,11.039515, 0.000000;;,
      9;3;-0.000001,11.039505, 0.000010;;,
      10;3; 0.000003,11.039514,-0.000008;;,
      11;3; 0.000002,11.039506,-0.000005;;,
      12;3; 0.000001,11.039507,-0.000004;;,
      13;3; 0.000002,11.039510,-0.000003;;,
      14;3;-0.000004,11.039491,-0.000004;;,
      15;3; 0.000004,11.039503,-0.000001;;,
      16;3; 0.000000,11.039501, 0.000007;;,
      17;3; 0.000006,11.039509, 0.000001;;,
      18;3;-0.000009,11.039482, 0.000000;;,
      19;3; 0.000008,11.039495,-0.000008;;,
      20;3; 0.000002,11.039505, 0.000001;;,
      21;3;-0.000004,11.039509, 0.000001;;,
      22;3;-0.000002,11.039496, 0.000013;;,
      23;3; 0.000002,11.039501,-0.000013;;,
      24;3; 0.000006,11.039505, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.030204, 0.114865, 0.639697, 0.759396;;,
      1;4; 0.018111, 0.056908, 0.705490, 0.706199;;,
      2;4; 0.019257, 0.015926, 0.731467, 0.681419;;,
      3;4;-0.004271,-0.005204, 0.763998, 0.645183;;,
      4;4;-0.033627,-0.006483, 0.820370, 0.570808;;,
      5;4;-0.037853,-0.006841, 0.878114, 0.476903;;,
      6;4;-0.008912, 0.009300, 0.902821, 0.429825;;,
      7;4;-0.003395, 0.035437, 0.917344, 0.396500;;,
      8;4;-0.006360, 0.057636, 0.924268, 0.377315;;,
      9;4;-0.019557, 0.086476, 0.925645, 0.367859;;,
      10;4;-0.020245, 0.102910, 0.928498, 0.356218;;,
      11;4;-0.018720, 0.109547, 0.934566, 0.337987;;,
      12;4;-0.018186, 0.115943, 0.941347, 0.316374;;,
      13;4;-0.011861, 0.125863, 0.947053, 0.295143;;,
      14;4;-0.007010, 0.129282, 0.953652, 0.271632;;,
      15;4;-0.011920, 0.132710, 0.946418, 0.294177;;,
      16;4;-0.041548, 0.135969, 0.926842, 0.347491;;,
      17;4;-0.085970, 0.146716, 0.894230, 0.414049;;,
      18;4;-0.111854, 0.152249, 0.862658, 0.469181;;,
      19;4;-0.116580, 0.158080, 0.831004, 0.520434;;,
      20;4;-0.125213, 0.165129, 0.793348, 0.572410;;,
      21;4;-0.111127, 0.175304, 0.756204, 0.620544;;,
      22;4;-0.122136, 0.193262, 0.722187, 0.652824;;,
      23;4;-0.135738, 0.215252, 0.696908, 0.670494;;,
      24;4;-0.138747, 0.230362, 0.675666, 0.686410;;;
    }
    AnimationKey { // Scale
      1;
      25;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000001, 1.000000;;,
      7;3; 1.000000, 1.000001, 1.000000;;,
      8;3; 1.000000, 1.000001, 1.000000;;,
      9;3; 1.000000, 1.000001, 1.000000;;,
      10;3; 1.000000, 1.000001, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000001, 1.000000;;,
      13;3; 1.000000, 1.000001, 1.000000;;,
      14;3; 1.000000, 1.000000, 1.000000;;,
      15;3; 1.000000, 1.000000, 1.000000;;,
      16;3; 1.000000, 1.000001, 1.000000;;,
      17;3; 1.000000, 1.000001, 1.000000;;,
      18;3; 1.000000, 1.000000, 1.000000;;,
      19;3; 1.000000, 1.000000, 1.000000;;,
      20;3; 1.000000, 1.000000, 1.000000;;,
      21;3; 1.000000, 1.000000, 1.000000;;,
      22;3; 1.000000, 1.000000, 1.000000;;,
      23;3; 1.000000, 1.000000, 1.000000;;,
      24;3; 1.000000, 1.000001, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;19.899096,-7.885098,-3.429502;;,
      1;3;19.899094,-7.885091,-3.429500;;,
      2;3;19.899094,-7.885105,-3.429501;;,
      3;3;19.899094,-7.885095,-3.429499;;,
      4;3;19.899096,-7.885101,-3.429500;;,
      5;3;19.899094,-7.885099,-3.429500;;,
      6;3;19.899096,-7.885109,-3.429502;;,
      7;3;19.899094,-7.885104,-3.429500;;,
      8;3;19.899094,-7.885104,-3.429500;;,
      9;3;19.899101,-7.885086,-3.429501;;,
      10;3;19.899094,-7.885093,-3.429502;;,
      11;3;19.899094,-7.885105,-3.429501;;,
      12;3;19.899097,-7.885096,-3.429503;;,
      13;3;19.899094,-7.885098,-3.429499;;,
      14;3;19.899096,-7.885107,-3.429500;;,
      15;3;19.899096,-7.885098,-3.429500;;,
      16;3;19.899097,-7.885098,-3.429499;;,
      17;3;19.899096,-7.885094,-3.429499;;,
      18;3;19.899096,-7.885104,-3.429499;;,
      19;3;19.899094,-7.885094,-3.429499;;,
      20;3;19.899096,-7.885099,-3.429499;;,
      21;3;19.899096,-7.885098,-3.429497;;,
      22;3;19.899097,-7.885094,-3.429501;;,
      23;3;19.899094,-7.885103,-3.429497;;,
      24;3;19.899096,-7.885103,-3.429498;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.287653,-0.956504, 0.006329, 0.048128;;,
      1;4;-0.311328,-0.949872,-0.018404, 0.021913;;,
      2;4;-0.366999,-0.930153,-0.011303,-0.000294;;,
      3;4;-0.418061,-0.907506, 0.022191,-0.034145;;,
      4;4;-0.429969,-0.899030, 0.053689,-0.063164;;,
      5;4;-0.449043,-0.883340, 0.088620,-0.101080;;,
      6;4;-0.519367,-0.843982, 0.098133,-0.091227;;,
      7;4;-0.570015,-0.813266, 0.098809,-0.062592;;,
      8;4;-0.592806,-0.797174, 0.104012,-0.047710;;,
      9;4;-0.596297,-0.795232, 0.106891,-0.024689;;,
      10;4;-0.572633,-0.812443, 0.106730,-0.025241;;,
      11;4;-0.521725,-0.846740, 0.099392,-0.030910;;,
      12;4;-0.464435,-0.880608, 0.088498,-0.031577;;,
      13;4;-0.416033,-0.904360, 0.084440,-0.043814;;,
      14;4;-0.361609,-0.926738, 0.082984,-0.059243;;,
      15;4;-0.320835,-0.940566, 0.083058,-0.074176;;,
      16;4;-0.285878,-0.951241, 0.084451,-0.079260;;,
      17;4;-0.256040,-0.962873, 0.072790,-0.044957;;,
      18;4;-0.228864,-0.971227, 0.063598,-0.017193;;,
      19;4;-0.196312,-0.978546, 0.062150,-0.006839;;,
      20;4;-0.167780,-0.983701, 0.063667, 0.011360;;,
      21;4;-0.150549,-0.986344, 0.062127, 0.024494;;,
      22;4;-0.133277,-0.987474, 0.067347, 0.050953;;,
      23;4;-0.121590,-0.987178, 0.071801, 0.074438;;,
      24;4;-0.114925,-0.986925, 0.073171, 0.086126;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,38.282917, 0.000003;;,
      1;3; 0.000001,38.282909,-0.000012;;,
      2;3; 0.000001,38.282909,-0.000008;;,
      3;3;-0.000001,38.282913, 0.000003;;,
      4;3;-0.000002,38.282913,-0.000005;;,
      5;3; 0.000001,38.282913,-0.000001;;,
      6;3; 0.000001,38.282909, 0.000003;;,
      7;3;-0.000002,38.282913, 0.000004;;,
      8;3; 0.000001,38.282917,-0.000010;;,
      9;3; 0.000002,38.282921,-0.000001;;,
      10;3;-0.000002,38.282909, 0.000003;;,
      11;3; 0.000001,38.282913, 0.000004;;,
      12;3; 0.000003,38.282906,-0.000002;;,
      13;3;-0.000001,38.282909,-0.000003;;,
      14;3; 0.000002,38.282909, 0.000003;;,
      15;3; 0.000002,38.282913,-0.000001;;,
      16;3; 0.000001,38.282909, 0.000005;;,
      17;3; 0.000000,38.282925, 0.000000;;,
      18;3; 0.000003,38.282917, 0.000006;;,
      19;3;-0.000006,38.282917, 0.000006;;,
      20;3;-0.000000,38.282913,-0.000001;;,
      21;3;-0.000003,38.282917, 0.000002;;,
      22;3; 0.000002,38.282909, 0.000011;;,
      23;3; 0.000004,38.282909, 0.000001;;,
      24;3; 0.000004,38.282917,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.809329, 0.563426, 0.021789, 0.164508;;,
      1;4;-0.926852, 0.364609, 0.059165, 0.067116;;,
      2;4;-0.986635, 0.157723, 0.032091,-0.025385;;,
      3;4;-0.994479, 0.031984,-0.022764,-0.097321;;,
      4;4;-0.993785, 0.047711,-0.037431,-0.093347;;,
      5;4;-0.989734, 0.103921,-0.044164,-0.087619;;,
      6;4;-0.987679, 0.100538,-0.050239,-0.108896;;,
      7;4;-0.992359, 0.059429,-0.041196,-0.099970;;,
      8;4;-0.994981,-0.018926,-0.031365,-0.093122;;,
      9;4;-0.990892,-0.106308,-0.023632,-0.079209;;,
      10;4;-0.982016,-0.165313,-0.025968,-0.087420;;,
      11;4;-0.977363,-0.184803,-0.028903,-0.098864;;,
      12;4;-0.984295,-0.144666,-0.029005,-0.096925;;,
      13;4;-0.989636,-0.099807,-0.034920,-0.097154;;,
      14;4;-0.993040,-0.055221,-0.044822,-0.093882;;,
      15;4;-0.994963,-0.033044,-0.046553,-0.082403;;,
      16;4;-0.996704,-0.028999,-0.039754,-0.064502;;,
      17;4;-0.998663,-0.037012,-0.024062,-0.026914;;,
      18;4;-0.998652,-0.047919,-0.017536,-0.009562;;,
      19;4;-0.999617,-0.021872,-0.015021,-0.007897;;,
      20;4;-0.999356, 0.032370,-0.013885,-0.006926;;,
      21;4;-0.995957, 0.089370,-0.006692,-0.006088;;,
      22;4;-0.988277, 0.151925,-0.007016,-0.013345;;,
      23;4;-0.980017, 0.197710,-0.009879,-0.019474;;,
      24;4;-0.972268, 0.232530,-0.009996,-0.022893;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001,32.683987, 0.000002;;,
      1;3; 0.000002,32.683987, 0.000001;;,
      2;3; 0.000000,32.683990, 0.000003;;,
      3;3; 0.000001,32.683987, 0.000001;;,
      4;3; 0.000002,32.683990,-0.000003;;,
      5;3; 0.000000,32.683994, 0.000000;;,
      6;3;-0.000002,32.683990,-0.000001;;,
      7;3; 0.000002,32.683983,-0.000005;;,
      8;3; 0.000002,32.683990,-0.000001;;,
      9;3; 0.000002,32.683983,-0.000008;;,
      10;3;-0.000002,32.683983,-0.000005;;,
      11;3; 0.000003,32.683987, 0.000010;;,
      12;3;-0.000002,32.683979, 0.000013;;,
      13;3; 0.000000,32.683983,-0.000009;;,
      14;3;-0.000004,32.683990, 0.000001;;,
      15;3; 0.000000,32.683983, 0.000001;;,
      16;3; 0.000001,32.683987,-0.000001;;,
      17;3; 0.000004,32.683987,-0.000002;;,
      18;3; 0.000001,32.683994,-0.000002;;,
      19;3; 0.000000,32.683987, 0.000005;;,
      20;3;-0.000001,32.683987,-0.000005;;,
      21;3; 0.000001,32.683987,-0.000001;;,
      22;3; 0.000000,32.683987,-0.000003;;,
      23;3; 0.000000,32.683987, 0.000000;;,
      24;3;-0.000003,32.683979,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.880430, 0.467770,-0.076470, 0.013705;;,
      1;4;-0.891522, 0.451225,-0.038355, 0.010621;;,
      2;4;-0.900405, 0.435009,-0.000280, 0.006158;;,
      3;4;-0.906469, 0.421793, 0.019827, 0.003506;;,
      4;4;-0.910498, 0.413441, 0.002743, 0.007233;;,
      5;4;-0.912555, 0.408108,-0.023019, 0.012751;;,
      6;4;-0.914220, 0.404146,-0.026019, 0.013794;;,
      7;4;-0.919957, 0.389606,-0.039520, 0.018032;;,
      8;4;-0.926825, 0.374948,-0.013050, 0.015430;;,
      9;4;-0.928697, 0.369458, 0.030824, 0.008537;;,
      10;4;-0.926408, 0.371658, 0.060255, 0.002966;;,
      11;4;-0.923160, 0.375635, 0.081690,-0.001254;;,
      12;4;-0.923461, 0.373719, 0.086895,-0.001901;;,
      13;4;-0.925187, 0.369398, 0.087019,-0.001386;;,
      14;4;-0.927263, 0.363896, 0.088106,-0.000860;;,
      15;4;-0.926772, 0.367150, 0.079335, 0.000278;;,
      16;4;-0.931123, 0.360058, 0.057825, 0.005018;;,
      17;4;-0.930433, 0.361022, 0.062783, 0.004008;;,
      18;4;-0.928451, 0.364399, 0.072036, 0.001936;;,
      19;4;-0.927793, 0.366893, 0.067710, 0.002377;;,
      20;4;-0.929825, 0.358111, 0.084749, 0.000493;;,
      21;4;-0.929743, 0.355376, 0.096361,-0.001226;;,
      22;4;-0.927275, 0.355273, 0.117964,-0.005121;;,
      23;4;-0.923586, 0.356346, 0.141130,-0.009436;;,
      24;4;-0.920050, 0.357759, 0.159213,-0.012923;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000002,27.100002, 0.000001;;,
      1;3;-0.000002,27.100006, 0.000001;;,
      2;3; 0.000001,27.100004, 0.000001;;,
      3;3;-0.000002,27.100002, 0.000000;;,
      4;3; 0.000002,27.100008, 0.000000;;,
      5;3; 0.000004,27.100000,-0.000003;;,
      6;3; 0.000001,27.100008, 0.000002;;,
      7;3; 0.000000,27.100002, 0.000005;;,
      8;3;-0.000003,27.100002,-0.000004;;,
      9;3; 0.000001,27.100010,-0.000004;;,
      10;3; 0.000000,27.100012,-0.000011;;,
      11;3; 0.000001,27.099998, 0.000001;;,
      12;3;-0.000006,27.100000,-0.000000;;,
      13;3; 0.000003,27.100014,-0.000003;;,
      14;3;-0.000001,27.100004,-0.000001;;,
      15;3; 0.000002,27.100002,-0.000002;;,
      16;3;-0.000004,27.099998, 0.000001;;,
      17;3; 0.000001,27.100014,-0.000002;;,
      18;3; 0.000000,27.100002, 0.000000;;,
      19;3; 0.000000,27.100010,-0.000001;;,
      20;3; 0.000000,27.100006,-0.000002;;,
      21;3; 0.000000,27.100008,-0.000003;;,
      22;3;-0.000001,27.100004, 0.000000;;,
      23;3;-0.000001,27.100008, 0.000001;;,
      24;3; 0.000001,27.100002, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      14;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      19;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002,16.631994,-0.000000;;,
      1;3;-0.000001,16.631998,-0.000001;;,
      2;3; 0.000002,16.631998,-0.000000;;,
      3;3;-0.000000,16.631994,-0.000000;;,
      4;3;-0.000000,16.631994,-0.000001;;,
      5;3; 0.000001,16.632000, 0.000003;;,
      6;3; 0.000003,16.631994, 0.000001;;,
      7;3; 0.000001,16.631994, 0.000003;;,
      8;3; 0.000003,16.631992, 0.000006;;,
      9;3;-0.000003,16.632000, 0.000000;;,
      10;3;-0.000000,16.631998, 0.000003;;,
      11;3;-0.000000,16.632002,-0.000001;;,
      12;3; 0.000000,16.631996,-0.000004;;,
      13;3; 0.000003,16.631992,-0.000002;;,
      14;3; 0.000001,16.631996,-0.000002;;,
      15;3; 0.000001,16.631992,-0.000003;;,
      16;3; 0.000000,16.631996, 0.000003;;,
      17;3; 0.000001,16.631996, 0.000001;;,
      18;3;-0.000001,16.632000, 0.000001;;,
      19;3;-0.000001,16.631996,-0.000001;;,
      20;3;-0.000001,16.631996, 0.000000;;,
      21;3;-0.000001,16.632000,-0.000000;;,
      22;3;-0.000001,16.632000, 0.000001;;,
      23;3;-0.000002,16.631998,-0.000000;;,
      24;3;-0.000002,16.631998, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.064281, 0.008141, 0.286205, 0.955975;;,
      1;4;-0.100161, 0.011651, 0.213626, 0.971698;;,
      2;4;-0.127713, 0.014782, 0.122800, 0.984069;;,
      3;4;-0.148982, 0.019838, 0.116382, 0.981767;;,
      4;4;-0.180268,-0.062520, 0.074363, 0.978808;;,
      5;4;-0.211928,-0.170745, 0.060856, 0.960328;;,
      6;4;-0.235332,-0.242956, 0.079133, 0.937725;;,
      7;4;-0.235943,-0.236313, 0.123515, 0.934468;;,
      8;4;-0.227779,-0.214198, 0.171501, 0.934250;;,
      9;4;-0.220695,-0.196225, 0.211219, 0.931760;;,
      10;4;-0.221036,-0.183714, 0.236093, 0.928252;;,
      11;4;-0.221306,-0.178925, 0.258165, 0.923234;;,
      12;4;-0.225438,-0.195486, 0.295262, 0.907625;;,
      13;4;-0.265632,-0.224809, 0.328752, 0.877965;;,
      14;4;-0.284921,-0.289071, 0.360724, 0.839724;;,
      15;4;-0.285696,-0.402182, 0.404769, 0.769928;;,
      16;4;-0.268642,-0.517955, 0.501927, 0.638454;;,
      17;4;-0.245948,-0.485780, 0.651765, 0.527948;;,
      18;4;-0.163799,-0.285972, 0.831522, 0.447169;;,
      19;4;-0.051871,-0.100757, 0.942152, 0.315449;;,
      20;4;-0.012435,-0.076471, 0.973678, 0.214356;;,
      21;4;-0.011113,-0.105009, 0.980136, 0.167877;;,
      22;4;-0.007351,-0.136194, 0.979380, 0.149035;;,
      23;4;-0.010582,-0.160743, 0.975228, 0.151595;;,
      24;4;-0.024350,-0.181945, 0.970053, 0.159062;;;
    }
    AnimationKey { // Scale
      1;
      25;
      0;3; 1.000000, 1.000000, 0.999997;;,
      1;3; 1.000000, 1.000000, 0.999997;;,
      2;3; 1.000000, 1.000000, 0.999997;;,
      3;3; 1.000000, 1.000000, 0.999997;;,
      4;3; 1.000000, 1.000000, 0.999998;;,
      5;3; 1.000000, 1.000000, 0.999998;;,
      6;3; 1.000000, 1.000000, 0.999998;;,
      7;3; 1.000000, 1.000000, 0.999998;;,
      8;3; 1.000000, 1.000000, 0.999997;;,
      9;3; 1.000000, 1.000000, 0.999997;;,
      10;3; 1.000000, 1.000000, 0.999997;;,
      11;3; 1.000000, 1.000000, 0.999997;;,
      12;3; 1.000000, 1.000000, 0.999997;;,
      13;3; 0.999999, 1.000000, 0.999998;;,
      14;3; 0.999999, 1.000000, 0.999998;;,
      15;3; 0.999998, 1.000000, 0.999999;;,
      16;3; 0.999998, 1.000000, 0.999999;;,
      17;3; 0.999998, 1.000000, 1.000000;;,
      18;3; 0.999999, 0.999998, 1.000000;;,
      19;3; 1.000000, 0.999998, 0.999999;;,
      20;3; 1.000000, 0.999998, 0.999999;;,
      21;3; 1.000000, 0.999999, 0.999999;;,
      22;3; 1.000000, 0.999999, 0.999998;;,
      23;3; 1.000000, 0.999999, 0.999999;;,
      24;3; 1.000000, 0.999999, 0.999999;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-19.899097,-7.885003,-3.429503;;,
      1;3;-19.899096,-7.884995,-3.429499;;,
      2;3;-19.899097,-7.885006,-3.429501;;,
      3;3;-19.899101,-7.884998,-3.429501;;,
      4;3;-19.899097,-7.885003,-3.429499;;,
      5;3;-19.899101,-7.885000,-3.429501;;,
      6;3;-19.899099,-7.885006,-3.429502;;,
      7;3;-19.899101,-7.885009,-3.429500;;,
      8;3;-19.899101,-7.885006,-3.429501;;,
      9;3;-19.899099,-7.884991,-3.429501;;,
      10;3;-19.899099,-7.884998,-3.429500;;,
      11;3;-19.899101,-7.885005,-3.429499;;,
      12;3;-19.899097,-7.884996,-3.429503;;,
      13;3;-19.899099,-7.884995,-3.429498;;,
      14;3;-19.899099,-7.884999,-3.429500;;,
      15;3;-19.899097,-7.885003,-3.429501;;,
      16;3;-19.899099,-7.884998,-3.429500;;,
      17;3;-19.899097,-7.884992,-3.429500;;,
      18;3;-19.899099,-7.885003,-3.429500;;,
      19;3;-19.899096,-7.884996,-3.429498;;,
      20;3;-19.899097,-7.885001,-3.429500;;,
      21;3;-19.899096,-7.884995,-3.429496;;,
      22;3;-19.899097,-7.884995,-3.429501;;,
      23;3;-19.899097,-7.885001,-3.429498;;,
      24;3;-19.899097,-7.885004,-3.429499;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.720035,-0.689207,-0.080041,-0.011700;;,
      1;4;-0.714040,-0.695074,-0.083715,-0.003236;;,
      2;4;-0.755385,-0.650323,-0.080382, 0.003431;;,
      3;4;-0.790845,-0.608972,-0.058243, 0.018015;;,
      4;4;-0.835008,-0.543331,-0.085666, 0.014638;;,
      5;4;-0.850655,-0.507300,-0.137400, 0.012380;;,
      6;4;-0.838000,-0.509135,-0.194969, 0.022927;;,
      7;4;-0.791083,-0.567571,-0.222519, 0.050362;;,
      8;4;-0.725600,-0.644116,-0.229344, 0.077591;;,
      9;4;-0.662231,-0.709304,-0.219860, 0.099999;;,
      10;4;-0.599216,-0.767057,-0.198970, 0.113907;;,
      11;4;-0.525789,-0.822708,-0.180341, 0.119056;;,
      12;4;-0.432615,-0.877820,-0.169454, 0.116453;;,
      13;4;-0.321393,-0.925843,-0.154804, 0.124729;;,
      14;4;-0.220264,-0.958781,-0.144734, 0.106186;;,
      15;4;-0.130470,-0.980143,-0.139968, 0.052027;;,
      16;4;-0.058486,-0.989568,-0.131645,-0.001790;;,
      17;4;-0.019889,-0.991058,-0.111230, 0.070968;;,
      18;4;-0.012013,-0.978041,-0.106268, 0.178881;;,
      19;4;-0.039966,-0.971358,-0.139096, 0.188463;;,
      20;4;-0.092210,-0.970330,-0.169155, 0.146096;;,
      21;4;-0.146957,-0.961629,-0.192724, 0.128575;;,
      22;4;-0.189378,-0.952164,-0.205383, 0.123844;;,
      23;4;-0.215798,-0.944131,-0.212319, 0.130263;;,
      24;4;-0.232579,-0.941203,-0.206372, 0.132119;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002,38.282906,-0.000000;;,
      1;3;-0.000000,38.282906,-0.000000;;,
      2;3; 0.000001,38.282913, 0.000000;;,
      3;3;-0.000001,38.282913, 0.000000;;,
      4;3; 0.000002,38.282909,-0.000000;;,
      5;3; 0.000002,38.282906,-0.000001;;,
      6;3; 0.000003,38.282906,-0.000003;;,
      7;3; 0.000002,38.282913, 0.000001;;,
      8;3; 0.000000,38.282906,-0.000001;;,
      9;3; 0.000001,38.282909, 0.000000;;,
      10;3;-0.000002,38.282909, 0.000000;;,
      11;3;-0.000004,38.282909,-0.000001;;,
      12;3;-0.000004,38.282913,-0.000002;;,
      13;3;-0.000000,38.282909,-0.000004;;,
      14;3; 0.000000,38.282906,-0.000001;;,
      15;3; 0.000003,38.282909, 0.000005;;,
      16;3;-0.000001,38.282906,-0.000002;;,
      17;3; 0.000001,38.282909,-0.000010;;,
      18;3; 0.000008,38.282909, 0.000005;;,
      19;3; 0.000000,38.282909,-0.000002;;,
      20;3;-0.000001,38.282906,-0.000001;;,
      21;3; 0.000003,38.282902,-0.000001;;,
      22;3; 0.000002,38.282909,-0.000000;;,
      23;3; 0.000003,38.282902,-0.000002;;,
      24;3; 0.000001,38.282898, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.635159, 0.771981,-0.000675, 0.024867;;,
      1;4;-0.693419, 0.719664, 0.002225, 0.035342;;,
      2;4;-0.776518, 0.627794, 0.004912, 0.053575;;,
      3;4;-0.928690, 0.368186,-0.006184, 0.043991;;,
      4;4;-0.968359, 0.248098,-0.025982, 0.007257;;,
      5;4;-0.978350, 0.200381,-0.043815,-0.027541;;,
      6;4;-0.982104, 0.180351,-0.048682,-0.024008;;,
      7;4;-0.974863, 0.214504,-0.040132, 0.044935;;,
      8;4;-0.955209, 0.278507,-0.033572, 0.094251;;,
      9;4;-0.939575, 0.323169,-0.031108, 0.108594;;,
      10;4;-0.934538, 0.341672,-0.032700, 0.093965;;,
      11;4;-0.929176, 0.362848,-0.037235, 0.059895;;,
      12;4;-0.914529, 0.401584,-0.046685,-0.013679;;,
      13;4;-0.886018, 0.455348,-0.056244,-0.066830;;,
      14;4;-0.847254, 0.505886,-0.083425,-0.138855;;,
      15;4;-0.811106, 0.529321,-0.127075,-0.213958;;,
      16;4;-0.825577, 0.465068,-0.170684,-0.270189;;,
      17;4;-0.893480, 0.358349,-0.156539,-0.220850;;,
      18;4;-0.940531, 0.337067,-0.040289, 0.012826;;,
      19;4;-0.904338, 0.331690, 0.091171, 0.252670;;,
      20;4;-0.897967, 0.271639, 0.131670, 0.320205;;,
      21;4;-0.904368, 0.238280, 0.134334, 0.327559;;,
      22;4;-0.909392, 0.231399, 0.127938, 0.321079;;,
      23;4;-0.910422, 0.234676, 0.122678, 0.317818;;,
      24;4;-0.920318, 0.220309, 0.116452, 0.301527;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001,32.684063,-0.000004;;,
      1;3;-0.000001,32.684063, 0.000000;;,
      2;3; 0.000003,32.684063, 0.000000;;,
      3;3; 0.000000,32.684063,-0.000001;;,
      4;3;-0.000001,32.684063, 0.000001;;,
      5;3; 0.000001,32.684063, 0.000002;;,
      6;3;-0.000003,32.684067,-0.000001;;,
      7;3; 0.000001,32.684059,-0.000000;;,
      8;3;-0.000001,32.684063, 0.000001;;,
      9;3;-0.000001,32.684067, 0.000000;;,
      10;3; 0.000001,32.684067, 0.000001;;,
      11;3;-0.000002,32.684063, 0.000004;;,
      12;3; 0.000003,32.684067, 0.000002;;,
      13;3; 0.000001,32.684063, 0.000001;;,
      14;3;-0.000001,32.684063, 0.000003;;,
      15;3; 0.000001,32.684063,-0.000004;;,
      16;3; 0.000001,32.684067, 0.000000;;,
      17;3; 0.000006,32.684063,-0.000000;;,
      18;3; 0.000006,32.684063,-0.000001;;,
      19;3; 0.000001,32.684067, 0.000004;;,
      20;3;-0.000002,32.684063,-0.000001;;,
      21;3;-0.000006,32.684059,-0.000001;;,
      22;3;-0.000001,32.684078, 0.000001;;,
      23;3;-0.000003,32.684063, 0.000006;;,
      24;3;-0.000002,32.684071,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.841801, 0.538377, 0.018683,-0.034234;;,
      1;4;-0.769333, 0.637093, 0.034946,-0.031915;;,
      2;4;-0.688743, 0.722852, 0.047952,-0.028608;;,
      3;4;-0.546008, 0.835065, 0.064842,-0.018371;;,
      4;4;-0.591175, 0.804882, 0.049334, 0.015617;;,
      5;4;-0.705498, 0.706553,-0.035329, 0.042519;;,
      6;4;-0.887236, 0.448610,-0.090520, 0.058027;;,
      7;4;-0.914508, 0.399670,-0.019975, 0.059502;;,
      8;4;-0.910397, 0.412169, 0.008350, 0.034980;;,
      9;4;-0.907572, 0.418871, 0.023044, 0.018122;;,
      10;4;-0.908475, 0.417645, 0.008285, 0.013300;;,
      11;4;-0.906895, 0.421184,-0.006161, 0.010381;;,
      12;4;-0.904293, 0.426698, 0.012632, 0.004903;;,
      13;4;-0.908089, 0.418510, 0.014928, 0.000776;;,
      14;4;-0.906101, 0.422915, 0.008143,-0.007618;;,
      15;4;-0.906273, 0.421739, 0.022971,-0.016694;;,
      16;4;-0.903785, 0.427158, 0.022196,-0.014735;;,
      17;4;-0.906877, 0.421347, 0.005666,-0.002769;;,
      18;4;-0.905508, 0.424256, 0.007131, 0.003417;;,
      19;4;-0.908170, 0.418463, 0.007634, 0.007517;;,
      20;4;-0.908833, 0.417039,-0.001429, 0.009948;;,
      21;4;-0.908208, 0.418406, 0.005310, 0.008089;;,
      22;4;-0.905989, 0.422072, 0.032218, 0.000932;;,
      23;4;-0.903522, 0.424949, 0.055130,-0.005170;;,
      24;4;-0.904872, 0.424602, 0.030309, 0.000966;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000001,27.100012,-0.000001;;,
      1;3; 0.000001,27.100012, 0.000001;;,
      2;3; 0.000002,27.100010,-0.000001;;,
      3;3; 0.000000,27.100008, 0.000000;;,
      4;3;-0.000001,27.100010, 0.000000;;,
      5;3;-0.000002,27.100010,-0.000000;;,
      6;3;-0.000001,27.100008,-0.000001;;,
      7;3; 0.000000,27.100014,-0.000001;;,
      8;3;-0.000002,27.100008, 0.000000;;,
      9;3; 0.000001,27.100008,-0.000002;;,
      10;3;-0.000000,27.100010,-0.000002;;,
      11;3;-0.000001,27.100012,-0.000001;;,
      12;3; 0.000002,27.100012, 0.000001;;,
      13;3; 0.000001,27.100016,-0.000000;;,
      14;3; 0.000000,27.100014,-0.000003;;,
      15;3;-0.000003,27.100006, 0.000002;;,
      16;3;-0.000001,27.100008,-0.000000;;,
      17;3; 0.000003,27.100014, 0.000000;;,
      18;3;-0.000003,27.100002,-0.000001;;,
      19;3;-0.000003,27.100014, 0.000005;;,
      20;3;-0.000001,27.100010,-0.000004;;,
      21;3; 0.000001,27.100010,-0.000003;;,
      22;3;-0.000000,27.100006, 0.000009;;,
      23;3;-0.000002,27.100010,-0.000014;;,
      24;3;-0.000002,27.100014,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToe_End}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      15;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      18;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      20;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      22;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      24;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000002,16.631945, 0.000000;;,
      1;3; 0.000000,16.631945, 0.000000;;,
      2;3; 0.000001,16.631945,-0.000000;;,
      3;3;-0.000000,16.631945,-0.000000;;,
      4;3;-0.000000,16.631948,-0.000000;;,
      5;3;-0.000001,16.631947, 0.000002;;,
      6;3; 0.000002,16.631947, 0.000003;;,
      7;3; 0.000002,16.631945, 0.000001;;,
      8;3;-0.000000,16.631945, 0.000000;;,
      9;3; 0.000002,16.631943,-0.000000;;,
      10;3; 0.000001,16.631943, 0.000000;;,
      11;3;-0.000000,16.631945, 0.000002;;,
      12;3;-0.000001,16.631943, 0.000001;;,
      13;3; 0.000000,16.631945,-0.000000;;,
      14;3;-0.000000,16.631941, 0.000001;;,
      15;3;-0.000000,16.631945, 0.000001;;,
      16;3;-0.000000,16.631948,-0.000000;;,
      17;3;-0.000000,16.631941,-0.000002;;,
      18;3;-0.000000,16.631943,-0.000003;;,
      19;3; 0.000002,16.631947,-0.000001;;,
      20;3; 0.000004,16.631945,-0.000007;;,
      21;3; 0.000004,16.631947,-0.000006;;,
      22;3;-0.000001,16.631948, 0.000002;;,
      23;3; 0.000001,16.631947, 0.000000;;,
      24;3; 0.000002,16.631945,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth1}
    AnimationKey { // Rotation
      0;
      25;
      0;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      1;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      2;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      3;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      4;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      5;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      6;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      7;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      8;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      9;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      10;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      11;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      12;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      13;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      14;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      15;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      16;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      17;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      18;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      19;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      20;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      21;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      22;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      23;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      24;4;-0.000000, 1.000000,-0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000,-19.940708,22.170202;;,
      1;3;-0.000000,-19.940699,22.170200;;,
      2;3;-0.000001,-19.940714,22.170200;;,
      3;3;-0.000002,-19.940706,22.170202;;,
      4;3; 0.000002,-19.940704,22.170202;;,
      5;3;-0.000001,-19.940704,22.170202;;,
      6;3;-0.000001,-19.940712,22.170198;;,
      7;3;-0.000002,-19.940712,22.170198;;,
      8;3; 0.000002,-19.940708,22.170198;;,
      9;3;-0.000001,-19.940704,22.170200;;,
      10;3; 0.000000,-19.940697,22.170200;;,
      11;3;-0.000001,-19.940706,22.170197;;,
      12;3;-0.000000,-19.940708,22.170193;;,
      13;3;-0.000001,-19.940706,22.170204;;,
      14;3;-0.000002,-19.940712,22.170204;;,
      15;3; 0.000002,-19.940702,22.170202;;,
      16;3; 0.000002,-19.940706,22.170206;;,
      17;3; 0.000001,-19.940699,22.170202;;,
      18;3;-0.000001,-19.940716,22.170197;;,
      19;3; 0.000000,-19.940693,22.170202;;,
      20;3; 0.000000,-19.940706,22.170202;;,
      21;3;-0.000001,-19.940706,22.170202;;,
      22;3;-0.000000,-19.940704,22.170200;;,
      23;3; 0.000000,-19.940708,22.170202;;,
      24;3; 0.000000,-19.940710,22.170204;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth2}
    AnimationKey { // Rotation
      0;
      25;
      0;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      1;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      2;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      3;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      4;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      5;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      6;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      7;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      8;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      9;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      10;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      11;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      12;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      13;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      14;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      15;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      16;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      17;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      18;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      19;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      20;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      21;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      22;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      23;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      24;4; 0.000000, 0.000000, 1.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;-0.000000,10.763301,-0.000001;;,
      1;3;-0.000000,10.763301,-0.000001;;,
      2;3;-0.000000,10.763303,-0.000001;;,
      3;3;-0.000000,10.763298,-0.000000;;,
      4;3; 0.000000,10.763293,-0.000002;;,
      5;3; 0.000000,10.763297,-0.000001;;,
      6;3; 0.000000,10.763299, 0.000002;;,
      7;3;-0.000000,10.763304, 0.000000;;,
      8;3; 0.000001,10.763301, 0.000001;;,
      9;3; 0.000001,10.763294, 0.000001;;,
      10;3; 0.000002,10.763297, 0.000003;;,
      11;3;-0.000001,10.763300,-0.000006;;,
      12;3; 0.000000,10.763298, 0.000002;;,
      13;3; 0.000000,10.763304,-0.000006;;,
      14;3; 0.000001,10.763294,-0.000000;;,
      15;3; 0.000001,10.763297, 0.000004;;,
      16;3; 0.000001,10.763296,-0.000002;;,
      17;3; 0.000000,10.763298,-0.000001;;,
      18;3; 0.000000,10.763302,-0.000002;;,
      19;3; 0.000000,10.763295, 0.000002;;,
      20;3; 0.000000,10.763300, 0.000001;;,
      21;3; 0.000000,10.763289,-0.000004;;,
      22;3;-0.000000,10.763295, 0.000001;;,
      23;3; 0.000000,10.763302, 0.000005;;,
      24;3; 0.000000,10.763301, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth3}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      1;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      2;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      3;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      4;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      5;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      6;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      7;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      8;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      9;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      10;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      11;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      12;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      13;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      14;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      15;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      16;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      17;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      18;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      19;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      20;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      21;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      22;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      23;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      24;4;-0.000000, 0.000000, 1.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000,13.749504, 0.000000;;,
      1;3;-0.000001,13.749506, 0.000000;;,
      2;3; 0.000000,13.749512, 0.000001;;,
      3;3;-0.000001,13.749507, 0.000001;;,
      4;3;-0.000000,13.749513, 0.000001;;,
      5;3;-0.000001,13.749506, 0.000003;;,
      6;3;-0.000001,13.749510,-0.000004;;,
      7;3; 0.000000,13.749504,-0.000007;;,
      8;3; 0.000000,13.749511,-0.000001;;,
      9;3; 0.000002,13.749513,-0.000002;;,
      10;3; 0.000000,13.749506,-0.000002;;,
      11;3;-0.000000,13.749509, 0.000007;;,
      12;3; 0.000001,13.749506,-0.000000;;,
      13;3;-0.000000,13.749510,-0.000001;;,
      14;3; 0.000001,13.749506, 0.000002;;,
      15;3; 0.000000,13.749510,-0.000003;;,
      16;3;-0.000000,13.749509, 0.000009;;,
      17;3; 0.000000,13.749510,-0.000001;;,
      18;3; 0.000000,13.749512, 0.000004;;,
      19;3; 0.000000,13.749512, 0.000001;;,
      20;3;-0.000000,13.749504, 0.000002;;,
      21;3;-0.000000,13.749503, 0.000001;;,
      22;3; 0.000000,13.749505, 0.000002;;,
      23;3; 0.000000,13.749499,-0.000004;;,
      24;3; 0.000000,13.749506,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      16;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      21;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      22;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      23;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000,14.182597, 0.000001;;,
      1;3; 0.000000,14.182598, 0.000000;;,
      2;3; 0.000000,14.182595,-0.000001;;,
      3;3;-0.000000,14.182602,-0.000001;;,
      4;3; 0.000001,14.182597,-0.000001;;,
      5;3;-0.000001,14.182601,-0.000001;;,
      6;3; 0.000001,14.182597, 0.000001;;,
      7;3; 0.000000,14.182598,-0.000004;;,
      8;3; 0.000001,14.182600, 0.000005;;,
      9;3;-0.000002,14.182597, 0.000001;;,
      10;3; 0.000001,14.182596, 0.000001;;,
      11;3;-0.000001,14.182601,-0.000007;;,
      12;3; 0.000002,14.182598,-0.000004;;,
      13;3; 0.000001,14.182599, 0.000003;;,
      14;3; 0.000001,14.182596,-0.000001;;,
      15;3; 0.000001,14.182597, 0.000001;;,
      16;3;-0.000001,14.182597,-0.000002;;,
      17;3;-0.000000,14.182600,-0.000002;;,
      18;3; 0.000000,14.182595, 0.000000;;,
      19;3; 0.000000,14.182597, 0.000003;;,
      20;3;-0.000000,14.182599,-0.000001;;,
      21;3;-0.000000,14.182597,-0.000003;;,
      22;3; 0.000000,14.182594,-0.000003;;,
      23;3; 0.000000,14.182595, 0.000005;;,
      24;3;-0.000000,14.182598, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      1;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      2;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      3;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      4;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      5;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      6;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      7;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      8;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      9;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      10;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      11;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      12;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      13;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      14;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      15;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      16;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      17;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      18;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      19;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      20;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      21;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      22;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      23;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      24;4;-0.707106,-0.000000, 0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3; 0.000000,-5.419202,-29.327000;;,
      1;3;-0.000000,-5.419196,-29.326998;;,
      2;3;-0.000001,-5.419208,-29.327000;;,
      3;3;-0.000001,-5.419196,-29.327000;;,
      4;3; 0.000002,-5.419196,-29.327000;;,
      5;3;-0.000001,-5.419194,-29.327002;;,
      6;3;-0.000000,-5.419201,-29.327002;;,
      7;3;-0.000003,-5.419207,-29.327000;;,
      8;3; 0.000002,-5.419201,-29.327002;;,
      9;3; 0.000002,-5.419189,-29.327003;;,
      10;3;-0.000001,-5.419192,-29.326998;;,
      11;3;-0.000001,-5.419203,-29.327000;;,
      12;3; 0.000000,-5.419199,-29.327000;;,
      13;3;-0.000001,-5.419192,-29.326998;;,
      14;3;-0.000002,-5.419197,-29.326998;;,
      15;3; 0.000001,-5.419199,-29.327002;;,
      16;3; 0.000001,-5.419199,-29.327000;;,
      17;3; 0.000001,-5.419196,-29.327000;;,
      18;3; 0.000001,-5.419201,-29.326998;;,
      19;3; 0.000000,-5.419190,-29.326994;;,
      20;3;-0.000000,-5.419200,-29.327000;;,
      21;3;-0.000000,-5.419194,-29.326998;;,
      22;3;-0.000000,-5.419198,-29.327002;;,
      23;3; 0.000000,-5.419198,-29.326996;;,
      24;3; 0.000000,-5.419201,-29.327002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth2}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;15.308598, 0.000001, 0.000000;;,
      1;3;15.308601, 0.000002,-0.000003;;,
      2;3;15.308600, 0.000000, 0.000001;;,
      3;3;15.308612, 0.000001,-0.000001;;,
      4;3;15.308607, 0.000000, 0.000000;;,
      5;3;15.308600, 0.000001, 0.000001;;,
      6;3;15.308604, 0.000000, 0.000001;;,
      7;3;15.308607, 0.000000, 0.000000;;,
      8;3;15.308599,-0.000002,-0.000000;;,
      9;3;15.308595,-0.000001,-0.000000;;,
      10;3;15.308605, 0.000000,-0.000001;;,
      11;3;15.308604,-0.000000, 0.000001;;,
      12;3;15.308602, 0.000000,-0.000001;;,
      13;3;15.308612, 0.000001,-0.000001;;,
      14;3;15.308596, 0.000002,-0.000000;;,
      15;3;15.308614, 0.000001, 0.000001;;,
      16;3;15.308598, 0.000001,-0.000001;;,
      17;3;15.308607, 0.000001,-0.000000;;,
      18;3;15.308601,-0.000000, 0.000000;;,
      19;3;15.308609, 0.000002, 0.000001;;,
      20;3;15.308607, 0.000000, 0.000000;;,
      21;3;15.308593, 0.000001,-0.000001;;,
      22;3;15.308600, 0.000001,-0.000000;;,
      23;3;15.308611, 0.000001,-0.000001;;,
      24;3;15.308602, 0.000001,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth3}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;17.777096, 0.000002,-0.000001;;,
      1;3;17.777107, 0.000002,-0.000005;;,
      2;3;17.777103, 0.000001, 0.000001;;,
      3;3;17.777100, 0.000002,-0.000002;;,
      4;3;17.777107, 0.000000, 0.000003;;,
      5;3;17.777098, 0.000001,-0.000000;;,
      6;3;17.777100, 0.000002, 0.000000;;,
      7;3;17.777103, 0.000000, 0.000000;;,
      8;3;17.777100, 0.000001,-0.000000;;,
      9;3;17.777102,-0.000000, 0.000003;;,
      10;3;17.777105, 0.000002, 0.000001;;,
      11;3;17.777100, 0.000000,-0.000001;;,
      12;3;17.777098,-0.000002,-0.000001;;,
      13;3;17.777098, 0.000001, 0.000000;;,
      14;3;17.777096, 0.000004, 0.000000;;,
      15;3;17.777102, 0.000002, 0.000001;;,
      16;3;17.777103, 0.000001, 0.000000;;,
      17;3;17.777092, 0.000003, 0.000000;;,
      18;3;17.777105, 0.000002,-0.000000;;,
      19;3;17.777107, 0.000002,-0.000000;;,
      20;3;17.777103, 0.000002,-0.000000;;,
      21;3;17.777098, 0.000002, 0.000001;;,
      22;3;17.777098, 0.000002,-0.000000;;,
      23;3;17.777103, 0.000001,-0.000000;;,
      24;3;17.777102, 0.000002,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth4}
    AnimationKey { // Rotation
      0;
      25;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      14;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      15;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      16;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      17;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      18;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      19;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      20;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      21;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      22;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      23;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      24;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      25;
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
      24;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      25;
      0;3;15.545394, 0.000002,-0.000003;;,
      1;3;15.545404, 0.000002,-0.000004;;,
      2;3;15.545391, 0.000002,-0.000001;;,
      3;3;15.545403, 0.000002, 0.000000;;,
      4;3;15.545398, 0.000002, 0.000003;;,
      5;3;15.545403, 0.000001,-0.000000;;,
      6;3;15.545396, 0.000003,-0.000001;;,
      7;3;15.545399, 0.000000, 0.000001;;,
      8;3;15.545399, 0.000000,-0.000000;;,
      9;3;15.545399,-0.000000, 0.000001;;,
      10;3;15.545396, 0.000003, 0.000000;;,
      11;3;15.545396,-0.000000,-0.000001;;,
      12;3;15.545399, 0.000000, 0.000001;;,
      13;3;15.545406, 0.000001, 0.000001;;,
      14;3;15.545401, 0.000002, 0.000001;;,
      15;3;15.545396, 0.000001, 0.000000;;,
      16;3;15.545398, 0.000002,-0.000001;;,
      17;3;15.545401, 0.000003,-0.000001;;,
      18;3;15.545397, 0.000002, 0.000000;;,
      19;3;15.545401, 0.000002, 0.000000;;,
      20;3;15.545398, 0.000002, 0.000000;;,
      21;3;15.545397, 0.000002,-0.000000;;,
      22;3;15.545399, 0.000002, 0.000000;;,
      23;3;15.545401, 0.000002,-0.000000;;,
      24;3;15.545403, 0.000002, 0.000000;;;
    }
  }
} // End of AnimationSet Global
