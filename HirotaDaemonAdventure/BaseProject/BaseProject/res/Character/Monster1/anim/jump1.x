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
         0.996617, 0.043208, 0.069906, 0.000000,
        -0.036731, 0.995134,-0.091426, 0.000000,
        -0.073516, 0.088549, 0.993355, 0.000000,
        -1.358885,76.556389,18.094240, 1.000000;;
      }
      Frame Armature_mixamorig_BackCloth1 {
        FrameTransformMatrix {
          -0.000002,-1.000000,-0.000000, 0.000000,
           1.000000,-0.000002,-0.000000, 0.000000,
          -0.000000, 0.000000, 1.000000, 0.000000,
           0.000000,-5.419201,-29.327002, 1.000000;;
        }
        Frame Armature_mixamorig_BackCloth2 {
          FrameTransformMatrix {
             1.000000,-0.000000,-0.000000, 0.000000,
             0.000000, 1.000000,-0.000000, 0.000000,
            -0.000000, 0.000000, 1.000000, 0.000000,
            15.308602, 0.000001,-0.000000, 1.000000;;
          }
          Frame Armature_mixamorig_BackCloth3 {
            FrameTransformMatrix {
               1.000000,-0.000000,-0.000000, 0.000000,
               0.000000, 1.000000,-0.000000, 0.000000,
              -0.000000, 0.000000, 1.000000, 0.000000,
              17.777102, 0.000002,-0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_BackCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000,-0.000000, 0.000000,
                -0.000000, 0.000000, 1.000000, 0.000000,
                15.545403, 0.000002, 0.000000, 1.000000;;
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
           0.000000,-19.940710,22.170204, 1.000000;;
        }
        Frame Armature_mixamorig_FrontCloth2 {
          FrameTransformMatrix {
            -1.000000, 0.000000, 0.000000, 0.000000,
            -0.000000, 1.000000, 0.000000, 0.000000,
            -0.000000, 0.000000,-1.000000, 0.000000,
             0.000000,10.763301, 0.000003, 1.000000;;
          }
          Frame Armature_mixamorig_FrontCloth3 {
            FrameTransformMatrix {
              -1.000000, 0.000000,-0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
               0.000000,-0.000000,-1.000000, 0.000000,
               0.000000,13.749506,-0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_FrontCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000,-0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                -0.000000,14.182598, 0.000002, 1.000000;;
              }
            } // End of Armature_mixamorig_FrontCloth4
          } // End of Armature_mixamorig_FrontCloth3
        } // End of Armature_mixamorig_FrontCloth2
      } // End of Armature_mixamorig_FrontCloth1
      Frame Armature_mixamorig_LeftUpLeg {
        FrameTransformMatrix {
          -0.855366, 0.501769, 0.128754, 0.000000,
           0.120823,-0.048450, 0.991492, 0.000000,
           0.503738, 0.863644,-0.019183, 0.000000,
          19.899096,-7.885103,-3.429498, 1.000000;;
        }
        Frame Armature_mixamorig_LeftLeg {
          FrameTransformMatrix {
             0.974457,-0.124632,-0.186818, 0.000000,
            -0.164224,-0.962877,-0.214240, 0.000000,
            -0.153182, 0.239447,-0.958750, 0.000000,
             0.000004,38.282917,-0.000004, 1.000000;;
          }
          Frame Armature_mixamorig_LeftFoot {
            FrameTransformMatrix {
               0.998752,-0.049165, 0.008790, 0.000000,
               0.039868, 0.890812, 0.452620, 0.000000,
              -0.030084,-0.451705, 0.891660, 0.000000,
              -0.000003,32.683979,-0.000004, 1.000000;;
            }
            Frame Armature_mixamorig_LeftToeBase {
              FrameTransformMatrix {
                 0.948968, 0.090141,-0.302215, 0.000000,
                 0.137699, 0.743683, 0.654198, 0.000000,
                 0.283722,-0.662428, 0.693319, 0.000000,
                 0.000001,27.100002, 0.000003, 1.000000;;
              }
              Frame Armature_mixamorig_LeftToe_End {
                FrameTransformMatrix {
                   1.000000, 0.000000,-0.000000, 0.000000,
                  -0.000000, 1.000000,-0.000000, 0.000000,
                   0.000000,-0.000000, 1.000000, 0.000000,
                  -0.000002,16.631998, 0.000000, 1.000000;;
                }
              } // End of Armature_mixamorig_LeftToe_End
            } // End of Armature_mixamorig_LeftToeBase
          } // End of Armature_mixamorig_LeftFoot
        } // End of Armature_mixamorig_LeftLeg
      } // End of Armature_mixamorig_LeftUpLeg
      Frame Armature_mixamorig_RightUpLeg {
        FrameTransformMatrix {
          -0.932624,-0.345203,-0.105103, 0.000000,
          -0.360692, 0.883213, 0.299724, 0.000000,
          -0.010637, 0.317442,-0.948217, 0.000000,
          -19.899097,-7.885004,-3.429499, 1.000000;;
        }
        Frame Armature_mixamorig_RightLeg {
          FrameTransformMatrix {
             0.879911, 0.449931,-0.152705, 0.000000,
             0.327019,-0.806636,-0.492339, 0.000000,
            -0.344696, 0.383277,-0.856904, 0.000000,
             0.000001,38.282898, 0.000000, 1.000000;;
          }
          Frame Armature_mixamorig_RightFoot {
            FrameTransformMatrix {
               0.791040, 0.606312,-0.081487, 0.000000,
              -0.503691, 0.721091, 0.475735, 0.000000,
               0.347204,-0.335281, 0.875806, 0.000000,
              -0.000002,32.684071,-0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_RightToeBase {
              FrameTransformMatrix {
                 0.998161, 0.027486,-0.054032, 0.000000,
                 0.023991, 0.639424, 0.768480, 0.000000,
                 0.055672,-0.768363, 0.637588, 0.000000,
                -0.000002,27.100014,-0.000004, 1.000000;;
              }
              Frame Armature_mixamorig_RightToe_End {
                FrameTransformMatrix {
                   1.000000,-0.000000,-0.000000, 0.000000,
                   0.000000, 1.000000, 0.000000, 0.000000,
                  -0.000000,-0.000000, 1.000000, 0.000000,
                   0.000002,16.631945,-0.000003, 1.000000;;
                }
              } // End of Armature_mixamorig_RightToe_End
            } // End of Armature_mixamorig_RightToeBase
          } // End of Armature_mixamorig_RightFoot
        } // End of Armature_mixamorig_RightLeg
      } // End of Armature_mixamorig_RightUpLeg
      Frame Armature_mixamorig_Spine {
        FrameTransformMatrix {
           0.986807, 0.024335, 0.160064, 0.000000,
          -0.137605, 0.646988, 0.749981, 0.000000,
          -0.085308,-0.762112, 0.641800, 0.000000,
          -0.000000,13.784792, 0.064402, 1.000000;;
        }
        Frame Armature_mixamorig_Spine1 {
          FrameTransformMatrix {
             0.999316,-0.019884, 0.031187, 0.000000,
             0.017469, 0.996964, 0.075874, 0.000000,
            -0.032601,-0.075278, 0.996630, 0.000000,
             0.000000,12.024302, 0.000006, 1.000000;;
          }
          Frame Armature_mixamorig_Spine2 {
            FrameTransformMatrix {
               0.999438,-0.021862, 0.025402, 0.000000,
               0.020135, 0.997593, 0.066356, 0.000000,
              -0.026792,-0.065807, 0.997473, 0.000000,
               0.000001,17.815805,-0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_LeftShoulder {
              FrameTransformMatrix {
                 0.515417, 0.077599,-0.853419, 0.000000,
                 0.801926, 0.307403, 0.512269, 0.000000,
                 0.302095,-0.948410, 0.096212, 0.000000,
                17.399500,24.614202, 1.157905, 1.000000;;
              }
              Frame Armature_mixamorig_LeftArm {
                FrameTransformMatrix {
                   0.529693,-0.538052, 0.655687, 0.000000,
                   0.201701, 0.830772, 0.518782, 0.000000,
                  -0.823858,-0.142542, 0.548580, 0.000000,
                   0.000007,19.910402, 0.000008, 1.000000;;
                }
                Frame Armature_mixamorig_LeftForeArm {
                  FrameTransformMatrix {
                     0.547421, 0.460363, 0.698854, 0.000000,
                    -0.674966, 0.736565, 0.043505, 0.000000,
                    -0.494723,-0.495518, 0.713940, 0.000000,
                     0.000002,49.301292, 0.000002, 1.000000;;
                  }
                  Frame Armature_mixamorig_LeftHand {
                    FrameTransformMatrix {
                       0.667954, 0.744202,-0.000789, 0.000000,
                      -0.739904, 0.664210, 0.106620, 0.000000,
                       0.079872,-0.070633, 0.994299, 0.000000,
                       0.000000,31.604702, 0.000006, 1.000000;;
                    }
                    Frame Armature_mixamorig_LeftHandIndex1 {
                      FrameTransformMatrix {
                         0.991326, 0.108189, 0.074618, 0.000000,
                        -0.131091, 0.773436, 0.620171, 0.000000,
                         0.009384,-0.624573, 0.780910, 0.000000,
                        -6.192904,21.271091, 0.498707, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandIndex2 {
                        FrameTransformMatrix {
                           0.997013, 0.077237, 0.000157, 0.000000,
                          -0.057362, 0.739093, 0.671156, 0.000000,
                           0.051722,-0.669160, 0.741316, 0.000000,
                           0.000002, 7.536501,-0.000011, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandIndex3 {
                          FrameTransformMatrix {
                             0.999426,-0.033649,-0.003974, 0.000000,
                             0.033882, 0.993390, 0.109671, 0.000000,
                             0.000258,-0.109742, 0.993960, 0.000000,
                            -0.000003, 7.512299, 0.000024, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandIndex4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000004,10.212393,-0.000021, 1.000000;;
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
                         0.016500,23.334391, 0.008598, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandMiddle2 {
                        FrameTransformMatrix {
                           0.996316, 0.085745, 0.001058, 0.000000,
                          -0.055027, 0.629817, 0.774792, 0.000000,
                           0.065768,-0.771996, 0.632216, 0.000000,
                           0.000007, 6.996590, 0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandMiddle3 {
                          FrameTransformMatrix {
                             0.999600,-0.026512,-0.009804, 0.000000,
                             0.028253, 0.947885, 0.317357, 0.000000,
                             0.000879,-0.317508, 0.948255, 0.000000,
                            -0.000010, 7.016022, 0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000004, 7.721603, 0.000008, 1.000000;;
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
                        11.443203,18.881197, 0.461807, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandPinky2 {
                        FrameTransformMatrix {
                           0.999997, 0.001921, 0.001356, 0.000000,
                          -0.001849, 0.286580, 0.958055, 0.000000,
                           0.001451,-0.958054, 0.286583, 0.000000,
                          -0.000005, 4.919599,-0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandPinky3 {
                          FrameTransformMatrix {
                             1.000000, 0.000955, 0.000251, 0.000000,
                            -0.000955, 0.870704, 0.491806, 0.000000,
                             0.000251,-0.491807, 0.870704, 0.000000,
                             0.000005, 5.232990, 0.000008, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandPinky4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                               0.000007, 5.571705, 0.000002, 1.000000;;
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
                         6.516899,22.686600, 0.103598, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandRing2 {
                        FrameTransformMatrix {
                           0.999735, 0.017324, 0.015160, 0.000000,
                          -0.022982, 0.712828, 0.700962, 0.000000,
                           0.001337,-0.701125, 0.713037, 0.000000,
                           0.000000, 6.408607, 0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandRing3 {
                          FrameTransformMatrix {
                             0.999777,-0.021120, 0.000957, 0.000000,
                             0.020075, 0.962567, 0.270299, 0.000000,
                            -0.006630,-0.270219, 0.962776, 0.000000,
                            -0.000001, 6.150303,-0.000005, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandRing4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000016, 6.145401, 0.000011, 1.000000;;
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
                        -7.059612, 6.094493, 4.397202, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandThumb2 {
                        FrameTransformMatrix {
                           0.955044,-0.274564,-0.111826, 0.000000,
                           0.291588, 0.938075, 0.187061, 0.000000,
                           0.053541,-0.211258, 0.975963, 0.000000,
                          -0.000008, 7.536491,-0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandThumb3 {
                          FrameTransformMatrix {
                             0.618160, 0.106693,-0.778778, 0.000000,
                             0.120986, 0.966025, 0.228379, 0.000000,
                             0.776686,-0.235396, 0.584250, 0.000000,
                             0.000000, 7.512296,-0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000015,10.212384,-0.000003, 1.000000;;
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
                 0.994096,-0.097487,-0.047629, 0.000000,
                 0.094193, 0.993290,-0.067102, 0.000000,
                 0.053851, 0.062219, 0.996609, 0.000000,
                -0.000000,39.117603,11.977011, 1.000000;;
              }
              Frame Armature_mixamorig_Head {
                FrameTransformMatrix {
                   0.951197,-0.298792,-0.077122, 0.000000,
                   0.230315, 0.853739,-0.466996, 0.000000,
                   0.205377, 0.426442, 0.880890, 0.000000,
                  -0.000002,14.552505,15.664102, 1.000000;;
                }
                Frame Armature_mixamorig_HeadTop_End {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                     0.000000,15.601690, 7.553701, 1.000000;;
                  }
                } // End of Armature_mixamorig_HeadTop_End
                Frame Armature_mixamorig_Jaw {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000,-0.587429, 0.809276, 0.000000,
                     0.000000,-0.809276,-0.587429, 0.000000,
                     0.000000,-2.317796, 3.620697, 1.000000;;
                  }
                } // End of Armature_mixamorig_Jaw
                Frame Armature_mixamorig_LeftEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                     3.528699, 2.462099,12.838201, 1.000000;;
                  }
                } // End of Armature_mixamorig_LeftEye
                Frame Armature_mixamorig_RightEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                    -3.528698, 2.462097,12.838200, 1.000000;;
                  }
                } // End of Armature_mixamorig_RightEye
              } // End of Armature_mixamorig_Head
            } // End of Armature_mixamorig_Neck
            Frame Armature_mixamorig_RightShoulder {
              FrameTransformMatrix {
                 0.334833,-0.125965, 0.933820, 0.000000,
                -0.745914, 0.570113, 0.344360, 0.000000,
                -0.575760,-0.811852, 0.096933, 0.000000,
                -17.399498,24.614307, 1.157911, 1.000000;;
              }
              Frame Armature_mixamorig_RightArm {
                FrameTransformMatrix {
                   0.894372, 0.139507,-0.425013, 0.000000,
                   0.060427, 0.903736, 0.423804, 0.000000,
                   0.443223,-0.404721, 0.799847, 0.000000,
                  -0.000004,19.910406,-0.000004, 1.000000;;
                }
                Frame Armature_mixamorig_RightArmour1 {
                  FrameTransformMatrix {
                    -0.000000,-1.000000,-0.000001, 0.000000,
                    -0.000000, 0.000001,-1.000000, 0.000000,
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -1.467300, 5.012924,-18.471138, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightArmour2 {
                    FrameTransformMatrix {
                      -0.915901, 0.232054,-0.327534, 0.000000,
                      -0.183487,-0.967759,-0.172553, 0.000000,
                      -0.357018,-0.097943, 0.928950, 0.000000,
                       3.884902,-9.462713,-18.584900, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour3 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000000,11.039507, 0.000008, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour3
                  } // End of Armature_mixamorig_RightArmour2
                  Frame Armature_mixamorig_RightArmour4 {
                    FrameTransformMatrix {
                       0.708033,-0.251874, 0.659734, 0.000000,
                      -0.431906,-0.893578, 0.122374, 0.000000,
                       0.558701,-0.371588,-0.741469, 0.000000,
                      -2.648905,-11.494600,22.195297, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour5 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                         0.000006,11.039505, 0.000002, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour5
                  } // End of Armature_mixamorig_RightArmour4
                } // End of Armature_mixamorig_RightArmour1
                Frame Armature_mixamorig_RightForeArm {
                  FrameTransformMatrix {
                     0.778126,-0.500934,-0.378927, 0.000000,
                     0.565339, 0.821442, 0.074993, 0.000000,
                     0.273700,-0.272576, 0.922383, 0.000000,
                     0.000000,49.301300, 0.000019, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightHand {
                    FrameTransformMatrix {
                       0.946381,-0.321686, 0.029675, 0.000000,
                       0.320252, 0.946280, 0.044637, 0.000000,
                      -0.042440,-0.032741, 0.998562, 0.000000,
                       0.000001,31.604996,-0.000008, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightHandIndex1 {
                      FrameTransformMatrix {
                         0.998612, 0.052641,-0.001503, 0.000000,
                        -0.023838, 0.477299, 0.878417, 0.000000,
                         0.046959,-0.877162, 0.477892, 0.000000,
                         6.192900,21.270996, 0.499001, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandIndex2 {
                        FrameTransformMatrix {
                           0.997003,-0.077367,-0.000368, 0.000000,
                           0.031055, 0.395833, 0.917797, 0.000000,
                          -0.070862,-0.915058, 0.397049, 0.000000,
                           0.000012, 7.535998, 0.000010, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandIndex3 {
                          FrameTransformMatrix {
                             0.999429, 0.006801, 0.033096, 0.000000,
                            -0.031958, 0.508175, 0.860661, 0.000000,
                            -0.010965,-0.861227, 0.508102, 0.000000,
                             0.000000, 7.512978,-0.000003, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                               0.000000,10.212009,-0.000011, 1.000000;;
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
                        -0.016500,23.333992, 0.009003, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandMiddle2 {
                        FrameTransformMatrix {
                           0.996276,-0.086197,-0.002089, 0.000000,
                           0.010347, 0.095465, 0.995379, 0.000000,
                          -0.085600,-0.991694, 0.096001, 0.000000,
                           0.000017, 6.996989, 0.000001, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandMiddle3 {
                          FrameTransformMatrix {
                             0.999615, 0.022950, 0.015619, 0.000000,
                            -0.027751, 0.841138, 0.540108, 0.000000,
                            -0.000742,-0.540333, 0.841451, 0.000000,
                             0.000011, 7.016007,-0.000007, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000005, 7.720989,-0.000008, 1.000000;;
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
                        -11.443209,18.881001, 0.461998, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandPinky2 {
                        FrameTransformMatrix {
                           0.999998,-0.001574,-0.000811, 0.000000,
                           0.001575, 0.581894, 0.813263, 0.000000,
                          -0.000809,-0.813263, 0.581896, 0.000000,
                          -0.000002, 4.919998,-0.000011, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandPinky3 {
                          FrameTransformMatrix {
                             1.000000,-0.000844,-0.000193, 0.000000,
                             0.000844, 0.900092, 0.435699, 0.000000,
                            -0.000194,-0.435699, 0.900092, 0.000000,
                             0.000006, 5.232988,-0.000008, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandPinky4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000006, 5.570999, 0.000008, 1.000000;;
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
                        -6.516909,22.686001, 0.103996, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandRing2 {
                        FrameTransformMatrix {
                           0.999699,-0.020680,-0.013161, 0.000000,
                           0.018563, 0.288066, 0.957431, 0.000000,
                          -0.016009,-0.957387, 0.288363, 0.000000,
                          -0.000002, 6.408993,-0.000013, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandRing3 {
                          FrameTransformMatrix {
                             0.999791, 0.020413,-0.001321, 0.000000,
                            -0.014997, 0.775388, 0.631307, 0.000000,
                             0.013911,-0.631155, 0.775532, 0.000000,
                            -0.000012, 6.149982,-0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandRing4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000003, 6.146004,-0.000011, 1.000000;;
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
                         7.059700, 6.093994, 4.396996, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandThumb2 {
                        FrameTransformMatrix {
                           0.951153, 0.004347, 0.308690, 0.000000,
                           0.056044, 0.980856,-0.186498, 0.000000,
                          -0.303591, 0.194688, 0.932700, 0.000000,
                           0.000004, 7.536305, 0.000009, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandThumb3 {
                          FrameTransformMatrix {
                             0.927041, 0.226906,-0.298510, 0.000000,
                            -0.296507, 0.930930,-0.213196, 0.000000,
                             0.229516, 0.286152, 0.930290, 0.000000,
                             0.000000, 7.512697, 0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000001, 0.000002, 0.000000,
                               0.000001, 1.000000, 0.000001, 0.000000,
                              -0.000002,-0.000001, 1.000000, 0.000000,
                               0.000001,10.212727,-0.000008, 1.000000;;
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
      0;4;-0.998137,-0.045078,-0.035922, 0.020022;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-1.358885,76.556389,18.094240;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.904930, 0.417738,-0.067788, 0.044738;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,13.784792, 0.064402;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.999113, 0.037821,-0.015961,-0.009347;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,12.024302, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.999313, 0.033064,-0.013057,-0.010507;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,17.815805,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.997997,-0.032395, 0.025421,-0.048016;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,39.117603,11.977011;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.959925,-0.232684, 0.073573,-0.137799;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,14.552505,15.664102;;;
    }
  }
  Animation {
    {Armature_mixamorig_HeadTop_End}
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
      0;3; 0.000000,15.601690, 7.553701;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftEye}
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
      0;3; 3.528699, 2.462099,12.838201;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightEye}
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
      0;3;-3.528698, 2.462097,12.838200;;;
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
      0;3; 0.000000,-2.317796, 3.620697;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.692645, 0.527210, 0.417065,-0.261435;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;17.399500,24.614202, 1.157905;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.852796, 0.193870,-0.433734,-0.216861;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000007,19.910402, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.865726, 0.155656,-0.344675, 0.327855;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000002,49.301292, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.911930, 0.048593, 0.022113, 0.406859;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,31.604702, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.959565, 0.110569, 0.077482, 0.246993;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-7.059612, 6.094493, 4.397202;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.983499, 0.101251, 0.042035,-0.143913;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000008, 7.536491,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.890005, 0.130273, 0.436926,-0.004015;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 7.512296,-0.000004;;;
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
      0;3;-0.000015,10.212384,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.941498, 0.330522,-0.017322, 0.063537;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-6.192904,21.271091, 0.498707;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.932392, 0.359376, 0.013826, 0.036090;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000002, 7.536501,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.998346, 0.054944, 0.001060,-0.016911;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000003, 7.512299, 0.000024;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
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
      0;3; 0.000004,10.212393,-0.000021;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.942603, 0.333362, 0.000666, 0.019199;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.016500,23.334391, 0.008598;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.902545, 0.428452, 0.017924, 0.038993;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000007, 6.996590, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.986882, 0.160826, 0.002706,-0.013873;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000010, 7.016022, 0.000001;;;
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
      0;3; 0.000004, 7.721603, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.854279, 0.519784,-0.005607, 0.001046;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 6.516899,22.686600, 0.103598;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.925419, 0.378771,-0.003734, 0.010888;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 6.408607, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.990596, 0.136412,-0.001915,-0.010397;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001, 6.150303,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
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
      0;3; 0.000016, 6.145401, 0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.893105, 0.444450,-0.025376, 0.064685;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;11.443203,18.881197, 0.461807;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.802054, 0.597251, 0.000030, 0.001175;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000005, 4.919599,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.967136, 0.254259, 0.000000, 0.000494;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000005, 5.232990, 0.000008;;;
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
      0;3; 0.000007, 5.571705, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.707439, 0.408591,-0.533467, 0.219082;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-17.399498,24.614307, 1.157911;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.948414, 0.218397, 0.228865, 0.020845;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000004,19.910406,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.938343, 0.092602, 0.173877,-0.284084;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,49.301300, 0.000019;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.986309, 0.019613,-0.018279,-0.162712;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,31.604996,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.880697, 0.461236,-0.107833,-0.002330;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 7.059700, 6.093994, 4.396996;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.982943,-0.096950,-0.155727,-0.013149;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000004, 7.536305, 0.000009;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.973173,-0.128278, 0.135646, 0.134461;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 7.512697, 0.000004;;;
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
      0;3; 0.000001,10.212727,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.859332, 0.510740, 0.014099, 0.022250;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 6.192900,21.270996, 0.499001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.835148, 0.548662,-0.021102,-0.032456;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000012, 7.535998, 0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.868290, 0.495770,-0.012686, 0.011160;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 7.512978,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
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
      0;3; 0.000000,10.212009,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.827539, 0.561301, 0.009658,-0.005203;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.016500,23.333992, 0.009003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.739551, 0.671716,-0.028230,-0.032636;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000017, 6.996989, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.959454, 0.281525,-0.004263, 0.013211;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000011, 7.016007,-0.000007;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle4}
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
      0;3;-0.000005, 7.720989,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.769967, 0.636768, 0.019998, 0.035746;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-6.516909,22.686001, 0.103996;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.802516, 0.596504,-0.000887,-0.012225;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002, 6.408993,-0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.942166, 0.334989, 0.004042, 0.009396;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000012, 6.149982,-0.000001;;;
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
      0;3;-0.000003, 6.146004,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.726236, 0.686556, 0.024775,-0.024667;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-11.443209,18.881001, 0.461998;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.889352, 0.457222, 0.000001,-0.000885;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002, 4.919998,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky3}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.974703, 0.223503,-0.000000,-0.000433;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000006, 5.232988,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
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
      0;3;-0.000006, 5.570999, 0.000008;;;
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
      0;3;-1.467300, 5.012924,-18.471138;;;
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
      0;3; 3.884902,-9.462713,-18.584900;;;
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
      0;3;-0.000000,11.039507, 0.000008;;;
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
      0;3;-2.648905,-11.494600,22.195297;;;
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
      0;3; 0.000006,11.039505, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.138747, 0.230362, 0.675666, 0.686410;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000001, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;19.899096,-7.885103,-3.429498;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.114925,-0.986925, 0.073171, 0.086126;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000004,38.282917,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.972268, 0.232530,-0.009996,-0.022893;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000003,32.683979,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.920050, 0.357759, 0.159213,-0.012923;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,27.100002, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
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
      0;3;-0.000002,16.631998, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.024350,-0.181945, 0.970053, 0.159062;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 0.999999, 0.999999;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-19.899097,-7.885004,-3.429499;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.232579,-0.941203,-0.206372, 0.132119;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001,38.282898, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.920318, 0.220309, 0.116452, 0.301527;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,32.684071,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.904872, 0.424602, 0.030309, 0.000966;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,27.100014,-0.000004;;;
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
      0;3; 0.000002,16.631945,-0.000003;;;
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
      0;3; 0.000000,-19.940710,22.170204;;;
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
      0;3; 0.000000,10.763301, 0.000003;;;
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
      0;3; 0.000000,13.749506,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth4}
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
      0;3;-0.000000,14.182598, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.707106,-0.000000, 0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,-5.419201,-29.327002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth2}
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
      0;3;15.308602, 0.000001,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth3}
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
      0;3;17.777102, 0.000002,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth4}
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
      0;3;15.545403, 0.000002, 0.000000;;;
    }
  }
} // End of AnimationSet Global
