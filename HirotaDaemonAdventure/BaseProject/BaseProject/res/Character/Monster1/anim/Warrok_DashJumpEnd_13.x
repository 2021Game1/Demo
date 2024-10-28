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
         0.996436, 0.017676, 0.082480, 0.000000,
        -0.005586, 0.989480,-0.144563, 0.000000,
        -0.084168, 0.143587, 0.986052, 0.000000,
         2.872797,77.483727, 8.460092, 1.000000;;
      }
      Frame Armature_mixamorig_BackCloth1 {
        FrameTransformMatrix {
          -0.000002,-1.000000,-0.000000, 0.000000,
           1.000000,-0.000002,-0.000000, 0.000000,
           0.000000,-0.000000, 1.000000, 0.000000,
          -0.000000,-5.419198,-29.326998, 1.000000;;
        }
        Frame Armature_mixamorig_BackCloth2 {
          FrameTransformMatrix {
             1.000000,-0.000000,-0.000000, 0.000000,
            -0.000000, 1.000000,-0.000000, 0.000000,
            -0.000000, 0.000000, 1.000000, 0.000000,
            15.308598, 0.000000,-0.000003, 1.000000;;
          }
          Frame Armature_mixamorig_BackCloth3 {
            FrameTransformMatrix {
               1.000000,-0.000000,-0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
              -0.000000, 0.000000, 1.000000, 0.000000,
              17.777100, 0.000002, 0.000000, 1.000000;;
            }
            Frame Armature_mixamorig_BackCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                -0.000000, 1.000000,-0.000000, 0.000000,
                -0.000000, 0.000000, 1.000000, 0.000000,
                15.545401, 0.000002, 0.000000, 1.000000;;
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
          -0.000000,-19.940701,22.170204, 1.000000;;
        }
        Frame Armature_mixamorig_FrontCloth2 {
          FrameTransformMatrix {
            -1.000000, 0.000000, 0.000000, 0.000000,
            -0.000000, 1.000000, 0.000000, 0.000000,
            -0.000000, 0.000000,-1.000000, 0.000000,
            -0.000000,10.763294,-0.000000, 1.000000;;
          }
          Frame Armature_mixamorig_FrontCloth3 {
            FrameTransformMatrix {
              -1.000000, 0.000000,-0.000000, 0.000000,
              -0.000000, 1.000000,-0.000000, 0.000000,
               0.000000,-0.000000,-1.000000, 0.000000,
              -0.000000,13.749505, 0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_FrontCloth4 {
              FrameTransformMatrix {
                 1.000000,-0.000000,-0.000000, 0.000000,
                 0.000000, 1.000000,-0.000000, 0.000000,
                 0.000000, 0.000000, 1.000000, 0.000000,
                 0.000000,14.182597, 0.000002, 1.000000;;
              }
            } // End of Armature_mixamorig_FrontCloth4
          } // End of Armature_mixamorig_FrontCloth3
        } // End of Armature_mixamorig_FrontCloth2
      } // End of Armature_mixamorig_FrontCloth1
      Frame Armature_mixamorig_LeftUpLeg {
        FrameTransformMatrix {
          -0.981833,-0.170593, 0.083081, 0.000000,
           0.160547,-0.513485, 0.842947, 0.000000,
          -0.101140, 0.840971, 0.531545, 0.000000,
          19.899096,-7.885092,-3.429498, 1.000000;;
        }
        Frame Armature_mixamorig_LeftLeg {
          FrameTransformMatrix {
             0.979334,-0.121172,-0.161935, 0.000000,
            -0.072463, 0.537290,-0.840279, 0.000000,
             0.188824, 0.834648, 0.517405, 0.000000,
             0.000002,38.282917, 0.000002, 1.000000;;
          }
          Frame Armature_mixamorig_LeftFoot {
            FrameTransformMatrix {
               0.960980,-0.275457,-0.025312, 0.000000,
               0.231913, 0.752416, 0.616511, 0.000000,
              -0.150777,-0.598325, 0.786939, 0.000000,
               0.000000,32.683987,-0.000005, 1.000000;;
            }
            Frame Armature_mixamorig_LeftToeBase {
              FrameTransformMatrix {
                 0.947207, 0.154062, 0.281183, 0.000000,
                -0.319390, 0.376551, 0.869597, 0.000000,
                 0.028092,-0.913496, 0.405878, 0.000000,
                -0.000003,27.100010, 0.000006, 1.000000;;
              }
              Frame Armature_mixamorig_LeftToe_End {
                FrameTransformMatrix {
                   1.000000, 0.000000, 0.000000, 0.000000,
                  -0.000000, 1.000000, 0.000000, 0.000000,
                  -0.000000, 0.000000, 1.000000, 0.000000,
                  -0.000004,16.631996,-0.000000, 1.000000;;
                }
              } // End of Armature_mixamorig_LeftToe_End
            } // End of Armature_mixamorig_LeftToeBase
          } // End of Armature_mixamorig_LeftFoot
        } // End of Armature_mixamorig_LeftLeg
      } // End of Armature_mixamorig_LeftUpLeg
      Frame Armature_mixamorig_RightUpLeg {
        FrameTransformMatrix {
          -0.996364,-0.082532,-0.021166, 0.000000,
           0.005428,-0.309405, 0.950913, 0.000000,
          -0.085030, 0.947341, 0.308725, 0.000000,
          -19.899099,-7.884994,-3.429499, 1.000000;;
        }
        Frame Armature_mixamorig_RightLeg {
          FrameTransformMatrix {
             0.973082, 0.109865, 0.202586, 0.000000,
             0.090885, 0.624867,-0.775423, 0.000000,
            -0.211781, 0.772962, 0.598062, 0.000000,
            -0.000001,38.282913,-0.000003, 1.000000;;
          }
          Frame Armature_mixamorig_RightFoot {
            FrameTransformMatrix {
               0.981617, 0.174982, 0.076216, 0.000000,
              -0.184506, 0.767815, 0.613529, 0.000000,
               0.048837,-0.616313, 0.785986, 0.000000,
               0.000000,32.684063, 0.000002, 1.000000;;
            }
            Frame Armature_mixamorig_RightToeBase {
              FrameTransformMatrix {
                 0.999704, 0.004220, 0.023984, 0.000000,
                -0.021790, 0.594763, 0.803606, 0.000000,
                -0.010874,-0.803890, 0.594678, 0.000000,
                -0.000001,27.100010, 0.000003, 1.000000;;
              }
              Frame Armature_mixamorig_RightToe_End {
                FrameTransformMatrix {
                   1.000000,-0.000000, 0.000000, 0.000000,
                   0.000000, 1.000000, 0.000000, 0.000000,
                   0.000000,-0.000000, 1.000000, 0.000000,
                   0.000002,16.631943, 0.000002, 1.000000;;
                }
              } // End of Armature_mixamorig_RightToe_End
            } // End of Armature_mixamorig_RightToeBase
          } // End of Armature_mixamorig_RightFoot
        } // End of Armature_mixamorig_RightLeg
      } // End of Armature_mixamorig_RightUpLeg
      Frame Armature_mixamorig_Spine {
        FrameTransformMatrix {
           0.999873, 0.015696, 0.002853, 0.000000,
          -0.015923, 0.992960, 0.117372, 0.000000,
          -0.000990,-0.117403, 0.993084, 0.000000,
          -0.000000,13.784798, 0.064401, 1.000000;;
        }
        Frame Armature_mixamorig_Spine1 {
          FrameTransformMatrix {
             0.999683, 0.021493, 0.013130, 0.000000,
            -0.023292, 0.987273, 0.157320, 0.000000,
            -0.009582,-0.157576, 0.987460, 0.000000,
             0.000000,12.024287,-0.000001, 1.000000;;
          }
          Frame Armature_mixamorig_Spine2 {
            FrameTransformMatrix {
               0.999683, 0.021366, 0.013336, 0.000000,
              -0.023054, 0.989460, 0.142958, 0.000000,
              -0.010141,-0.143220, 0.989639, 0.000000,
               0.000000,17.815804, 0.000001, 1.000000;;
            }
            Frame Armature_mixamorig_LeftShoulder {
              FrameTransformMatrix {
                 0.290384,-0.002595,-0.956907, 0.000000,
                 0.956684,-0.020940, 0.290374, 0.000000,
                -0.020791,-0.999777,-0.003598, 0.000000,
                17.399500,24.614185, 1.157894, 1.000000;;
              }
              Frame Armature_mixamorig_LeftArm {
                FrameTransformMatrix {
                   0.982417,-0.171149, 0.074596, 0.000000,
                   0.066450, 0.693928, 0.716972, 0.000000,
                  -0.174473,-0.699409, 0.693099, 0.000000,
                   0.000000,19.910404,-0.000010, 1.000000;;
                }
                Frame Armature_mixamorig_LeftForeArm {
                  FrameTransformMatrix {
                     0.629132, 0.775822,-0.047889, 0.000000,
                    -0.716016, 0.602407, 0.352742, 0.000000,
                     0.302514,-0.187632, 0.934494, 0.000000,
                     0.000002,49.301304, 0.000003, 1.000000;;
                  }
                  Frame Armature_mixamorig_LeftHand {
                    FrameTransformMatrix {
                       0.968623, 0.247305, 0.024710, 0.000000,
                      -0.167848, 0.724238,-0.668809, 0.000000,
                      -0.183296, 0.643676, 0.743023, 0.000000,
                       0.000000,31.604698,-0.000002, 1.000000;;
                    }
                    Frame Armature_mixamorig_LeftHandIndex1 {
                      FrameTransformMatrix {
                         0.979841, 0.196549, 0.035775, 0.000000,
                        -0.199758, 0.966419, 0.161650, 0.000000,
                        -0.002802,-0.165538, 0.986199, 0.000000,
                        -6.192904,21.271086, 0.498702, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandIndex2 {
                        FrameTransformMatrix {
                           0.999955, 0.001218, 0.009364, 0.000000,
                          -0.005045, 0.907137, 0.420806, 0.000000,
                          -0.007982,-0.420834, 0.907102, 0.000000,
                          -0.000001, 7.536500,-0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandIndex3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000,-0.000000, 0.000000,
                            -0.000000, 1.000000, 0.000000, 0.000000,
                            -0.000000,-0.000000, 1.000000, 0.000000,
                             0.000005, 7.512295, 0.000008, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandIndex4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000002,10.212399, 0.000015, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandIndex4
                        } // End of Armature_mixamorig_LeftHandIndex3
                      } // End of Armature_mixamorig_LeftHandIndex2
                    } // End of Armature_mixamorig_LeftHandIndex1
                    Frame Armature_mixamorig_LeftHandMiddle1 {
                      FrameTransformMatrix {
                         0.999955,-0.008472, 0.004167, 0.000000,
                         0.007194, 0.969523, 0.244894, 0.000000,
                        -0.006115,-0.244853, 0.969541, 0.000000,
                         0.016499,23.334385, 0.008603, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandMiddle2 {
                        FrameTransformMatrix {
                           0.999746, 0.020120, 0.010180, 0.000000,
                          -0.022313, 0.947916, 0.317737, 0.000000,
                          -0.003257,-0.317884, 0.948124, 0.000000,
                           0.000004, 6.996595, 0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandMiddle3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000, 0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000002, 7.016009, 0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000004, 7.721601, 0.000008, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandMiddle4
                        } // End of Armature_mixamorig_LeftHandMiddle3
                      } // End of Armature_mixamorig_LeftHandMiddle2
                    } // End of Armature_mixamorig_LeftHandMiddle1
                    Frame Armature_mixamorig_LeftHandPinky1 {
                      FrameTransformMatrix {
                         0.879150,-0.464486,-0.106530, 0.000000,
                         0.471020, 0.813022, 0.342251, 0.000000,
                        -0.072360,-0.351068, 0.933550, 0.000000,
                        11.443205,18.881195, 0.461808, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandPinky2 {
                        FrameTransformMatrix {
                           0.994917, 0.100551, 0.005362, 0.000000,
                          -0.089268, 0.856140, 0.508975, 0.000000,
                           0.046587,-0.506867, 0.860765, 0.000000,
                           0.000002, 4.919593, 0.000002, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandPinky3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000,-0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000004, 5.232996,-0.000010, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandPinky4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000,-0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000010, 5.571697,-0.000013, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandPinky4
                        } // End of Armature_mixamorig_LeftHandPinky3
                      } // End of Armature_mixamorig_LeftHandPinky2
                    } // End of Armature_mixamorig_LeftHandPinky1
                    Frame Armature_mixamorig_LeftHandRing1 {
                      FrameTransformMatrix {
                         0.965294,-0.254852,-0.057067, 0.000000,
                         0.256286, 0.882345, 0.394694, 0.000000,
                        -0.050236,-0.395622, 0.917039, 0.000000,
                         6.516901,22.686594, 0.103598, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandRing2 {
                        FrameTransformMatrix {
                           0.999312, 0.037020, 0.002160, 0.000000,
                          -0.035485, 0.937705, 0.345616, 0.000000,
                           0.010769,-0.345455, 0.938373, 0.000000,
                          -0.000002, 6.408600,-0.000006, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandRing3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000, 0.000000, 0.000000,
                             0.000000,-0.000000, 1.000000, 0.000000,
                            -0.000002, 6.150301,-0.000010, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandRing4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000002, 6.145398,-0.000011, 1.000000;;
                            }
                          } // End of Armature_mixamorig_LeftHandRing4
                        } // End of Armature_mixamorig_LeftHandRing3
                      } // End of Armature_mixamorig_LeftHandRing2
                    } // End of Armature_mixamorig_LeftHandRing1
                    Frame Armature_mixamorig_LeftHandThumb1 {
                      FrameTransformMatrix {
                         0.743398, 0.665717, 0.064658, 0.000000,
                        -0.638525, 0.677593, 0.364902, 0.000000,
                         0.199110,-0.312553, 0.928798, 0.000000,
                        -7.059603, 6.094490, 4.397205, 1.000000;;
                      }
                      Frame Armature_mixamorig_LeftHandThumb2 {
                        FrameTransformMatrix {
                           0.893908, 0.005880,-0.448211, 0.000000,
                           0.091987, 0.976227, 0.196264, 0.000000,
                           0.438710,-0.216671, 0.872117, 0.000000,
                           0.000001, 7.536500, 0.000000, 1.000000;;
                        }
                        Frame Armature_mixamorig_LeftHandThumb3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000,-0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000006, 7.512298, 0.000001, 1.000000;;
                          }
                          Frame Armature_mixamorig_LeftHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000, 0.000000, 0.000000,
                              -0.000000,-0.000000, 1.000000, 0.000000,
                               0.000000,10.212399, 0.000010, 1.000000;;
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
                 0.990252,-0.094319,-0.102493, 0.000000,
                 0.104018, 0.990141, 0.093811, 0.000000,
                 0.092634,-0.103558, 0.990300, 0.000000,
                 0.000000,39.117603,11.976996, 1.000000;;
              }
              Frame Armature_mixamorig_Head {
                FrameTransformMatrix {
                   0.996632, 0.076880, 0.028517, 0.000000,
                  -0.074802, 0.994883,-0.067911, 0.000000,
                  -0.033592, 0.065550, 0.997284, 0.000000,
                   0.000000,14.552487,15.664096, 1.000000;;
                }
                Frame Armature_mixamorig_HeadTop_End {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                     0.000000,15.601693, 7.553701, 1.000000;;
                  }
                } // End of Armature_mixamorig_HeadTop_End
                Frame Armature_mixamorig_Jaw {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                    -0.000000,-0.587429, 0.809276, 0.000000,
                    -0.000000,-0.809276,-0.587429, 0.000000,
                    -0.000000,-2.317812, 3.620700, 1.000000;;
                  }
                } // End of Armature_mixamorig_Jaw
                Frame Armature_mixamorig_LeftEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                     3.528700, 2.462087,12.838205, 1.000000;;
                  }
                } // End of Armature_mixamorig_LeftEye
                Frame Armature_mixamorig_RightEye {
                  FrameTransformMatrix {
                     1.000000,-0.000000, 0.000000, 0.000000,
                     0.000000, 1.000000,-0.000000, 0.000000,
                     0.000000,-0.000000, 1.000000, 0.000000,
                    -3.528700, 2.462075,12.838204, 1.000000;;
                  }
                } // End of Armature_mixamorig_RightEye
              } // End of Armature_mixamorig_Head
            } // End of Armature_mixamorig_Neck
            Frame Armature_mixamorig_RightShoulder {
              FrameTransformMatrix {
                 0.196192,-0.021136, 0.980338, 0.000000,
                -0.972832, 0.121116, 0.197301, 0.000000,
                -0.122905,-0.992413, 0.003200, 0.000000,
                -17.399504,24.614294, 1.157894, 1.000000;;
              }
              Frame Armature_mixamorig_RightArm {
                FrameTransformMatrix {
                   0.955047, 0.291062,-0.056281, 0.000000,
                  -0.079631, 0.434742, 0.897027, 0.000000,
                   0.285558,-0.852222, 0.438377, 0.000000,
                   0.000000,19.910408, 0.000005, 1.000000;;
                }
                Frame Armature_mixamorig_RightArmour1 {
                  FrameTransformMatrix {
                    -0.000000,-1.000000,-0.000001, 0.000000,
                    -0.000000, 0.000001,-1.000000, 0.000000,
                     1.000000,-0.000000,-0.000000, 0.000000,
                    -1.467303, 5.012918,-18.471128, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightArmour2 {
                    FrameTransformMatrix {
                      -0.915901, 0.232054,-0.327534, 0.000000,
                      -0.183487,-0.967759,-0.172553, 0.000000,
                      -0.357018,-0.097943, 0.928950, 0.000000,
                       3.884894,-9.462709,-18.584900, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour3 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                        -0.000002,11.039502, 0.000003, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour3
                  } // End of Armature_mixamorig_RightArmour2
                  Frame Armature_mixamorig_RightArmour4 {
                    FrameTransformMatrix {
                       0.708033,-0.251874, 0.659734, 0.000000,
                      -0.431906,-0.893578, 0.122374, 0.000000,
                       0.558701,-0.371588,-0.741469, 0.000000,
                      -2.648917,-11.494611,22.195301, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightArmour5 {
                      FrameTransformMatrix {
                         1.000000, 0.000000, 0.000000, 0.000000,
                        -0.000000, 1.000000, 0.000000, 0.000000,
                        -0.000000,-0.000000, 1.000000, 0.000000,
                         0.000002,11.039495,-0.000003, 1.000000;;
                      }
                    } // End of Armature_mixamorig_RightArmour5
                  } // End of Armature_mixamorig_RightArmour4
                } // End of Armature_mixamorig_RightArmour1
                Frame Armature_mixamorig_RightForeArm {
                  FrameTransformMatrix {
                     0.664093,-0.745171, 0.060841, 0.000000,
                     0.710327, 0.654238, 0.259632, 0.000000,
                    -0.233274,-0.129203, 0.963789, 0.000000,
                    -0.000002,49.301300, 0.000025, 1.000000;;
                  }
                  Frame Armature_mixamorig_RightHand {
                    FrameTransformMatrix {
                       0.955049,-0.212143, 0.207068, 0.000000,
                       0.282533, 0.862861,-0.419102, 0.000000,
                      -0.089761, 0.458767, 0.884011, 0.000000,
                      -0.000004,31.604996, 0.000005, 1.000000;;
                    }
                    Frame Armature_mixamorig_RightHandIndex1 {
                      FrameTransformMatrix {
                         0.965226,-0.252763,-0.066701, 0.000000,
                         0.260194, 0.953556, 0.151755, 0.000000,
                         0.025245,-0.163833, 0.986165, 0.000000,
                         6.192900,21.270994, 0.499002, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandIndex2 {
                        FrameTransformMatrix {
                           0.999920, 0.011300,-0.005640, 0.000000,
                          -0.008242, 0.922249, 0.386509, 0.000000,
                           0.009569,-0.386432, 0.922268, 0.000000,
                          -0.000002, 7.535992,-0.000000, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandIndex3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000, 0.000000, 0.000000,
                             0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000008, 7.513003,-0.000002, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandIndex4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                               0.000000, 1.000000,-0.000000, 0.000000,
                               0.000000, 0.000000, 1.000000, 0.000000,
                              -0.000002,10.212006, 0.000000, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandIndex4
                        } // End of Armature_mixamorig_RightHandIndex3
                      } // End of Armature_mixamorig_RightHandIndex2
                    } // End of Armature_mixamorig_RightHandIndex1
                    Frame Armature_mixamorig_RightHandMiddle1 {
                      FrameTransformMatrix {
                         0.999610, 0.015544,-0.023203, 0.000000,
                        -0.009407, 0.969642, 0.244348, 0.000000,
                         0.026297,-0.244034, 0.969410, 0.000000,
                        -0.016499,23.333988, 0.008986, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandMiddle2 {
                        FrameTransformMatrix {
                           0.999914,-0.010318,-0.008157, 0.000000,
                           0.012201, 0.959242, 0.282323, 0.000000,
                           0.004911,-0.282398, 0.959285, 0.000000,
                           0.000000, 6.996987, 0.000004, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandMiddle3 {
                          FrameTransformMatrix {
                             1.000000, 0.000000, 0.000000, 0.000000,
                            -0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                             0.000008, 7.016010,-0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandMiddle4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000004, 7.720990,-0.000004, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandMiddle4
                        } // End of Armature_mixamorig_RightHandMiddle3
                      } // End of Armature_mixamorig_RightHandMiddle2
                    } // End of Armature_mixamorig_RightHandMiddle1
                    Frame Armature_mixamorig_RightHandPinky1 {
                      FrameTransformMatrix {
                         0.949189, 0.300552, 0.093323, 0.000000,
                        -0.314611, 0.898895, 0.304972, 0.000000,
                         0.007773,-0.318837, 0.947778, 0.000000,
                        -11.443201,18.880999, 0.461998, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandPinky2 {
                        FrameTransformMatrix {
                           0.991953,-0.126098,-0.011332, 0.000000,
                           0.116567, 0.874703, 0.470433, 0.000000,
                          -0.049409,-0.467968, 0.882363, 0.000000,
                           0.000001, 4.920002,-0.000007, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandPinky3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000, 0.000000, 0.000000,
                             0.000000, 1.000000, 0.000000, 0.000000,
                            -0.000000,-0.000000, 1.000000, 0.000000,
                             0.000000, 5.232999, 0.000003, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandPinky4 {
                            FrameTransformMatrix {
                               1.000000,-0.000000,-0.000000, 0.000000,
                              -0.000000, 1.000000,-0.000000, 0.000000,
                              -0.000000, 0.000000, 1.000000, 0.000000,
                               0.000002, 5.570992,-0.000016, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandPinky4
                        } // End of Armature_mixamorig_RightHandPinky3
                      } // End of Armature_mixamorig_RightHandPinky2
                    } // End of Armature_mixamorig_RightHandPinky1
                    Frame Armature_mixamorig_RightHandRing1 {
                      FrameTransformMatrix {
                         0.984568, 0.169351, 0.044105, 0.000000,
                        -0.173896, 0.918512, 0.355099, 0.000000,
                         0.019626,-0.357289, 0.933788, 0.000000,
                        -6.516901,22.686003, 0.103991, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandRing2 {
                        FrameTransformMatrix {
                           0.999154,-0.041067,-0.002212, 0.000000,
                           0.039746, 0.950425, 0.308403, 0.000000,
                          -0.010563,-0.308230, 0.951253, 0.000000,
                          -0.000001, 6.408999, 0.000008, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandRing3 {
                          FrameTransformMatrix {
                             1.000000,-0.000000,-0.000000, 0.000000,
                             0.000000, 1.000000,-0.000000, 0.000000,
                            -0.000000, 0.000000, 1.000000, 0.000000,
                            -0.000001, 6.149994, 0.000009, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandRing4 {
                            FrameTransformMatrix {
                               1.000000, 0.000000, 0.000000, 0.000000,
                              -0.000000, 1.000000, 0.000000, 0.000000,
                               0.000000,-0.000000, 1.000000, 0.000000,
                              -0.000002, 6.145993, 0.000000, 1.000000;;
                            }
                          } // End of Armature_mixamorig_RightHandRing4
                        } // End of Armature_mixamorig_RightHandRing3
                      } // End of Armature_mixamorig_RightHandRing2
                    } // End of Armature_mixamorig_RightHandRing1
                    Frame Armature_mixamorig_RightHandThumb1 {
                      FrameTransformMatrix {
                         0.824042,-0.517407,-0.230749, 0.000000,
                         0.562074, 0.695698, 0.447300, 0.000000,
                        -0.070904,-0.498292, 0.864105, 0.000000,
                         7.059708, 6.093992, 4.396989, 1.000000;;
                      }
                      Frame Armature_mixamorig_RightHandThumb2 {
                        FrameTransformMatrix {
                           0.706592, 0.010836, 0.707538, 0.000000,
                           0.060649, 0.995276,-0.075810, 0.000000,
                          -0.705017, 0.096478, 0.702597, 0.000000,
                           0.000002, 7.536302, 0.000003, 1.000000;;
                        }
                        Frame Armature_mixamorig_RightHandThumb3 {
                          FrameTransformMatrix {
                             1.000000, 0.000001,-0.000002, 0.000000,
                            -0.000001, 1.000000,-0.000002, 0.000000,
                             0.000002, 0.000002, 1.000000, 0.000000,
                            -0.000004, 7.512698,-0.000004, 1.000000;;
                          }
                          Frame Armature_mixamorig_RightHandThumb4 {
                            FrameTransformMatrix {
                               1.000000,-0.000001, 0.000002, 0.000000,
                               0.000001, 1.000000, 0.000001, 0.000000,
                              -0.000002,-0.000001, 1.000000, 0.000000,
                              -0.000005,10.212723,-0.000004, 1.000000;;
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
      14;
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
      13;4;-0.707107, 0.707107, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
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
      13;3; 0.100000, 0.100000, 0.100000;;;
    }
    AnimationKey { // Position
      2;
      14;
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
      13;3; 0.000000, 0.000000, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Hips}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.996490,-0.072291,-0.041809, 0.005836;;,
      1;4;-0.997925, 0.043522,-0.036681, 0.030111;;,
      2;4;-0.996641, 0.066911,-0.035068, 0.031611;;,
      3;4;-0.995668, 0.081638,-0.031083, 0.031856;;,
      4;4;-0.995236, 0.089027,-0.025406, 0.030562;;,
      5;4;-0.995329, 0.090421,-0.020064, 0.027252;;,
      6;4;-0.995844, 0.087058,-0.015773, 0.021614;;,
      7;4;-0.996617, 0.080097,-0.012010, 0.013988;;,
      8;4;-0.997449, 0.070716,-0.009029, 0.003701;;,
      9;4;-0.998144, 0.060067,-0.005837,-0.008134;;,
      10;4;-0.998591, 0.049362,-0.001713,-0.019383;;,
      11;4;-0.998792, 0.039862, 0.003259,-0.028557;;,
      12;4;-0.998778, 0.032809, 0.008333,-0.036016;;,
      13;4;-0.998549, 0.029410, 0.013275,-0.043111;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 2.872797,77.483727, 8.460092;;,
      1;3; 2.664668,70.355667,11.143808;;,
      2;3; 2.761837,66.020287,11.164450;;,
      3;3; 2.894834,63.751266,10.342712;;,
      4;3; 2.933397,63.480637, 8.914997;;,
      5;3; 2.831317,65.013382, 6.682457;;,
      6;3; 2.662378,67.783081, 4.243152;;,
      7;3; 2.526769,70.774986, 2.113616;;,
      8;3; 2.345728,72.706467, 0.890046;;,
      9;3; 2.061924,72.989334, 0.311502;;,
      10;3; 1.509013,73.672981,-0.161082;;,
      11;3; 0.672938,75.090500,-0.393055;;,
      12;3;-0.167651,76.984634,-0.042143;;,
      13;3;-0.473963,79.115776, 1.172587;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.998238, 0.058797,-0.000962, 0.007919;;,
      1;4;-0.998866, 0.047574,-0.000679, 0.001376;;,
      2;4;-0.998891, 0.047074, 0.000650, 0.000579;;,
      3;4;-0.998888, 0.047145, 0.000277,-0.000571;;,
      4;4;-0.998860, 0.047703,-0.001213,-0.001526;;,
      5;4;-0.998812, 0.048651,-0.001805,-0.001838;;,
      6;4;-0.998754, 0.049896,-0.000793,-0.001060;;,
      7;4;-0.998680, 0.051351, 0.001202, 0.000800;;,
      8;4;-0.998578, 0.052926, 0.004434, 0.004665;;,
      9;4;-0.998434, 0.054535, 0.007670, 0.009847;;,
      10;4;-0.998270, 0.056098, 0.009858, 0.014579;;,
      11;4;-0.998128, 0.057552, 0.010875, 0.017623;;,
      12;4;-0.998011, 0.058830, 0.011461, 0.019520;;,
      13;4;-0.997896, 0.059854, 0.011904, 0.021893;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000000,13.784798, 0.064401;;,
      1;3; 0.000001,13.784814, 0.064400;;,
      2;3;-0.000000,13.784795, 0.064399;;,
      3;3; 0.000000,13.784788, 0.064400;;,
      4;3; 0.000000,13.784791, 0.064400;;,
      5;3;-0.000000,13.784800, 0.064400;;,
      6;3;-0.000001,13.784789, 0.064401;;,
      7;3;-0.000000,13.784781, 0.064403;;,
      8;3; 0.000000,13.784803, 0.064399;;,
      9;3;-0.000000,13.784807, 0.064400;;,
      10;3;-0.000000,13.784797, 0.064400;;,
      11;3; 0.000000,13.784800, 0.064400;;,
      12;3;-0.000000,13.784784, 0.064400;;,
      13;3;-0.000000,13.784798, 0.064400;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.996797, 0.078977,-0.005696, 0.011232;;,
      1;4;-0.998295, 0.056560,-0.012958,-0.006364;;,
      2;4;-0.998339, 0.055582,-0.012107,-0.009083;;,
      3;4;-0.998339, 0.055732,-0.010448,-0.010230;;,
      4;4;-0.998300, 0.056841,-0.008134,-0.010023;;,
      5;4;-0.998222, 0.058731,-0.005292,-0.008680;;,
      6;4;-0.998101, 0.061223,-0.002033,-0.006424;;,
      7;4;-0.997934, 0.064140, 0.001539,-0.003474;;,
      8;4;-0.997718, 0.067308, 0.005322,-0.000052;;,
      9;4;-0.997458, 0.070563, 0.009212, 0.003619;;,
      10;4;-0.997164, 0.073748, 0.013097, 0.007319;;,
      11;4;-0.996852, 0.076715, 0.016861, 0.010828;;,
      12;4;-0.996543, 0.079327, 0.020382, 0.013926;;,
      13;4;-0.996264, 0.081455, 0.023534, 0.016422;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,12.024287,-0.000001;;,
      1;3; 0.000001,12.024294, 0.000002;;,
      2;3;-0.000000,12.024295,-0.000000;;,
      3;3;-0.000000,12.024293, 0.000000;;,
      4;3;-0.000001,12.024293,-0.000001;;,
      5;3; 0.000001,12.024307,-0.000004;;,
      6;3;-0.000000,12.024302, 0.000001;;,
      7;3;-0.000000,12.024304, 0.000002;;,
      8;3; 0.000000,12.024295, 0.000001;;,
      9;3;-0.000000,12.024302,-0.000001;;,
      10;3; 0.000000,12.024286, 0.000001;;,
      11;3; 0.000000,12.024292, 0.000000;;,
      12;3; 0.000000,12.024291,-0.000001;;,
      13;3;-0.000001,12.024303,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.997344, 0.071735,-0.005885, 0.011135;;,
      1;4;-0.998679, 0.049308,-0.012849,-0.006582;;,
      2;4;-0.998717, 0.048329,-0.011952,-0.009286;;,
      3;4;-0.998717, 0.048479,-0.010273,-0.010405;;,
      4;4;-0.998686, 0.049588,-0.007963,-0.010159;;,
      5;4;-0.998622, 0.051479,-0.005145,-0.008769;;,
      6;4;-0.998520, 0.053972,-0.001925,-0.006457;;,
      7;4;-0.998373, 0.056890, 0.001597,-0.003447;;,
      8;4;-0.998181, 0.060060, 0.005322, 0.000038;;,
      9;4;-0.997944, 0.063317, 0.009149, 0.003774;;,
      10;4;-0.997673, 0.066503, 0.012972, 0.007540;;,
      11;4;-0.997383, 0.069473, 0.016676, 0.011111;;,
      12;4;-0.997093, 0.072087, 0.020144, 0.014268;;,
      13;4;-0.996829, 0.074217, 0.023253, 0.016817;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,17.815804, 0.000001;;,
      1;3;-0.000000,17.815788, 0.000002;;,
      2;3;-0.000000,17.815798, 0.000007;;,
      3;3; 0.000000,17.815805,-0.000004;;,
      4;3; 0.000001,17.815800,-0.000007;;,
      5;3;-0.000000,17.815800, 0.000003;;,
      6;3; 0.000001,17.815807, 0.000001;;,
      7;3; 0.000000,17.815807, 0.000001;;,
      8;3; 0.000000,17.815800, 0.000009;;,
      9;3; 0.000001,17.815796,-0.000001;;,
      10;3;-0.000000,17.815796, 0.000004;;,
      11;3;-0.000000,17.815800, 0.000002;;,
      12;3; 0.000000,17.815804, 0.000004;;,
      13;3; 0.000000,17.815809, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.996330, 0.049524, 0.048961,-0.049767;;,
      1;4;-0.998031,-0.006446, 0.046876,-0.041168;;,
      2;4;-0.997176,-0.036234, 0.048056,-0.044921;;,
      3;4;-0.995367,-0.062553, 0.051387,-0.051868;;,
      4;4;-0.995204,-0.056737, 0.056547,-0.056141;;,
      5;4;-0.995906,-0.038532, 0.059532,-0.056068;;,
      6;4;-0.996560,-0.028126, 0.056799,-0.053399;;,
      7;4;-0.996997,-0.034948, 0.047535,-0.050162;;,
      8;4;-0.997134,-0.049940, 0.033596,-0.045828;;,
      9;4;-0.996949,-0.065345, 0.017540,-0.038925;;,
      10;4;-0.996876,-0.073437, 0.001997,-0.029019;;,
      11;4;-0.997586,-0.066149,-0.011110,-0.017974;;,
      12;4;-0.997693,-0.063953,-0.021176,-0.008409;;,
      13;4;-0.997485,-0.065244,-0.027631,-0.001991;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,39.117603,11.976996;;,
      1;3;-0.000000,39.117596,11.977012;;,
      2;3; 0.000000,39.117619,11.977004;;,
      3;3;-0.000000,39.117607,11.977003;;,
      4;3; 0.000000,39.117619,11.977001;;,
      5;3; 0.000000,39.117584,11.976999;;,
      6;3; 0.000001,39.117603,11.976999;;,
      7;3; 0.000000,39.117603,11.977002;;,
      8;3; 0.000000,39.117611,11.976998;;,
      9;3; 0.000000,39.117611,11.977006;;,
      10;3;-0.000000,39.117599,11.977004;;,
      11;3;-0.000001,39.117596,11.977015;;,
      12;3;-0.000001,39.117596,11.976999;;,
      13;3; 0.000001,39.117599,11.976996;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.998599,-0.033412,-0.015549, 0.037974;;,
      1;4;-0.994726,-0.089543,-0.007079, 0.049522;;,
      2;4;-0.994309,-0.094531,-0.001796, 0.049104;;,
      3;4;-0.995984,-0.076480, 0.005790, 0.046186;;,
      4;4;-0.997749,-0.048965, 0.014020, 0.043620;;,
      5;4;-0.998640,-0.025620, 0.018785, 0.041338;;,
      6;4;-0.998996,-0.020379, 0.027579, 0.028818;;,
      7;4;-0.998769,-0.042247, 0.010797, 0.023637;;,
      8;4;-0.996680,-0.081229,-0.000199, 0.005482;;,
      9;4;-0.992485,-0.120716,-0.014521,-0.013824;;,
      10;4;-0.988653,-0.144198,-0.030734,-0.028765;;,
      11;4;-0.989372,-0.132791,-0.045980,-0.037358;;,
      12;4;-0.989730,-0.123997,-0.059279,-0.039320;;,
      13;4;-0.989712,-0.119447,-0.069248,-0.037522;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,14.552487,15.664096;;,
      1;3;-0.000000,14.552522,15.664099;;,
      2;3;-0.000000,14.552495,15.664099;;,
      3;3; 0.000000,14.552499,15.664104;;,
      4;3; 0.000000,14.552497,15.664104;;,
      5;3;-0.000001,14.552503,15.664101;;,
      6;3; 0.000000,14.552497,15.664100;;,
      7;3; 0.000000,14.552499,15.664095;;,
      8;3;-0.000001,14.552513,15.664104;;,
      9;3;-0.000000,14.552487,15.664107;;,
      10;3;-0.000000,14.552522,15.664108;;,
      11;3;-0.000000,14.552504,15.664105;;,
      12;3; 0.000000,14.552520,15.664098;;,
      13;3;-0.000000,14.552490,15.664104;;;
    }
  }
  Animation {
    {Armature_mixamorig_HeadTop_End}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,15.601693, 7.553701;;,
      1;3; 0.000001,15.601715, 7.553698;;,
      2;3;-0.000000,15.601711, 7.553705;;,
      3;3;-0.000000,15.601701, 7.553707;;,
      4;3; 0.000001,15.601672, 7.553698;;,
      5;3;-0.000001,15.601698, 7.553705;;,
      6;3; 0.000000,15.601681, 7.553709;;,
      7;3; 0.000000,15.601704, 7.553702;;,
      8;3; 0.000001,15.601669, 7.553704;;,
      9;3; 0.000002,15.601688, 7.553713;;,
      10;3; 0.000001,15.601686, 7.553702;;,
      11;3; 0.000000,15.601697, 7.553699;;,
      12;3; 0.000000,15.601680, 7.553697;;,
      13;3; 0.000002,15.601710, 7.553703;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftEye}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 3.528700, 2.462087,12.838205;;,
      1;3; 3.528701, 2.462111,12.838189;;,
      2;3; 3.528700, 2.462111,12.838214;;,
      3;3; 3.528701, 2.462099,12.838206;;,
      4;3; 3.528701, 2.462084,12.838201;;,
      5;3; 3.528700, 2.462089,12.838206;;,
      6;3; 3.528700, 2.462073,12.838203;;,
      7;3; 3.528700, 2.462110,12.838203;;,
      8;3; 3.528701, 2.462084,12.838200;;,
      9;3; 3.528702, 2.462083,12.838212;;,
      10;3; 3.528701, 2.462075,12.838202;;,
      11;3; 3.528701, 2.462086,12.838203;;,
      12;3; 3.528699, 2.462083,12.838200;;,
      13;3; 3.528702, 2.462090,12.838210;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightEye}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-3.528700, 2.462075,12.838204;;,
      1;3;-3.528700, 2.462112,12.838200;;,
      2;3;-3.528700, 2.462121,12.838206;;,
      3;3;-3.528700, 2.462102,12.838202;;,
      4;3;-3.528700, 2.462078,12.838209;;,
      5;3;-3.528700, 2.462080,12.838205;;,
      6;3;-3.528700, 2.462082,12.838208;;,
      7;3;-3.528700, 2.462093,12.838203;;,
      8;3;-3.528700, 2.462083,12.838206;;,
      9;3;-3.528699, 2.462079,12.838212;;,
      10;3;-3.528700, 2.462092,12.838205;;,
      11;3;-3.528700, 2.462102,12.838200;;,
      12;3;-3.528700, 2.462089,12.838196;;,
      13;3;-3.528699, 2.462104,12.838202;;;
    }
  }
  Animation {
    {Armature_mixamorig_Jaw}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      1;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      2;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      3;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      4;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      5;4;-0.454186, 0.890907,-0.000000,-0.000000;;,
      6;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      7;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      8;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      9;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      10;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      11;4;-0.454186, 0.890907, 0.000000, 0.000000;;,
      12;4;-0.454186, 0.890907,-0.000000, 0.000000;;,
      13;4;-0.454186, 0.890907, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000000,-2.317812, 3.620700;;,
      1;3;-0.000000,-2.317795, 3.620694;;,
      2;3; 0.000000,-2.317765, 3.620704;;,
      3;3; 0.000000,-2.317778, 3.620698;;,
      4;3; 0.000001,-2.317815, 3.620699;;,
      5;3; 0.000000,-2.317802, 3.620696;;,
      6;3;-0.000000,-2.317820, 3.620706;;,
      7;3;-0.000000,-2.317794, 3.620703;;,
      8;3; 0.000001,-2.317814, 3.620697;;,
      9;3; 0.000002,-2.317810, 3.620705;;,
      10;3; 0.000002,-2.317804, 3.620700;;,
      11;3;-0.000000,-2.317786, 3.620699;;,
      12;3; 0.000000,-2.317816, 3.620694;;,
      13;3; 0.000002,-2.317794, 3.620701;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.562549, 0.573350, 0.416015,-0.426309;;,
      1;4;-0.570503, 0.569638, 0.419022,-0.417683;;,
      2;4;-0.575100, 0.565877, 0.422552,-0.412908;;,
      3;4;-0.577480, 0.560742, 0.428261,-0.410704;;,
      4;4;-0.576674, 0.555949, 0.434419,-0.411883;;,
      5;4;-0.573301, 0.553090, 0.439007,-0.415560;;,
      6;4;-0.568846, 0.551789, 0.442148,-0.420056;;,
      7;4;-0.564612, 0.549718, 0.446327,-0.424047;;,
      8;4;-0.561271, 0.544401, 0.454215,-0.426954;;,
      9;4;-0.558907, 0.535104, 0.466385,-0.428685;;,
      10;4;-0.557258, 0.523378, 0.480793,-0.429391;;,
      11;4;-0.556049, 0.512055, 0.494128,-0.429472;;,
      12;4;-0.555165, 0.503571, 0.503776,-0.429439;;,
      13;4;-0.554560, 0.498764, 0.509068,-0.429590;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;17.399500,24.614185, 1.157894;;,
      1;3;17.399500,24.614201, 1.157907;;,
      2;3;17.399500,24.614212, 1.157902;;,
      3;3;17.399502,24.614199, 1.157899;;,
      4;3;17.399502,24.614208, 1.157896;;,
      5;3;17.399500,24.614183, 1.157895;;,
      6;3;17.399498,24.614199, 1.157904;;,
      7;3;17.399496,24.614195, 1.157900;;,
      8;3;17.399500,24.614206, 1.157906;;,
      9;3;17.399498,24.614189, 1.157908;;,
      10;3;17.399500,24.614202, 1.157903;;,
      11;3;17.399500,24.614201, 1.157902;;,
      12;3;17.399500,24.614210, 1.157895;;,
      13;3;17.399502,24.614202, 1.157898;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.917802, 0.385808,-0.067844,-0.064720;;,
      1;4;-0.913290, 0.395926,-0.095362,-0.007087;;,
      2;4;-0.908042, 0.399210,-0.121050, 0.037926;;,
      3;4;-0.898463, 0.408053,-0.142153, 0.077781;;,
      4;4;-0.886496, 0.425761,-0.151137, 0.100055;;,
      5;4;-0.874058, 0.452352,-0.146382, 0.099865;;,
      6;4;-0.860474, 0.486397,-0.128963, 0.079818;;,
      7;4;-0.842860, 0.526881,-0.099985, 0.044558;;,
      8;4;-0.818555, 0.571094,-0.061715,-0.003159;;,
      9;4;-0.788175, 0.612123,-0.019453,-0.060887;;,
      10;4;-0.757045, 0.641495, 0.019459,-0.122424;;,
      11;4;-0.732527, 0.655303, 0.049263,-0.177641;;,
      12;4;-0.718891, 0.656612, 0.068135,-0.217746;;,
      13;4;-0.714949, 0.651935, 0.077594,-0.240434;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,19.910404,-0.000010;;,
      1;3; 0.000001,19.910400, 0.000006;;,
      2;3; 0.000006,19.910400, 0.000004;;,
      3;3; 0.000000,19.910398,-0.000024;;,
      4;3;-0.000005,19.910400,-0.000002;;,
      5;3;-0.000001,19.910397, 0.000003;;,
      6;3; 0.000002,19.910398,-0.000004;;,
      7;3; 0.000003,19.910397, 0.000001;;,
      8;3;-0.000002,19.910400, 0.000012;;,
      9;3;-0.000004,19.910404,-0.000006;;,
      10;3;-0.000010,19.910398,-0.000002;;,
      11;3; 0.000002,19.910398,-0.000017;;,
      12;3; 0.000001,19.910397, 0.000003;;,
      13;3;-0.000001,19.910398, 0.000026;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.889668, 0.151847, 0.098464, 0.419212;;,
      1;4;-0.900158, 0.139729, 0.128503, 0.392018;;,
      2;4;-0.898469, 0.137458, 0.136621, 0.393946;;,
      3;4;-0.889205, 0.142588, 0.136064, 0.412880;;,
      4;4;-0.871642, 0.152851, 0.128592, 0.447596;;,
      5;4;-0.847696, 0.159558, 0.120523, 0.491351;;,
      6;4;-0.821357, 0.153366, 0.118381, 0.536505;;,
      7;4;-0.794576, 0.131961, 0.123009, 0.579744;;,
      8;4;-0.765082, 0.103766, 0.127180, 0.622661;;,
      9;4;-0.731952, 0.082724, 0.120867, 0.665427;;,
      10;4;-0.698380, 0.075081, 0.102720, 0.704327;;,
      11;4;-0.665975, 0.074562, 0.082880, 0.737597;;,
      12;4;-0.635984, 0.072713, 0.071723, 0.764914;;,
      13;4;-0.612309, 0.068559, 0.069944, 0.784529;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002,49.301304, 0.000003;;,
      1;3;-0.000002,49.301300, 0.000008;;,
      2;3; 0.000005,49.301304, 0.000002;;,
      3;3;-0.000001,49.301292, 0.000011;;,
      4;3;-0.000001,49.301304, 0.000000;;,
      5;3;-0.000002,49.301300,-0.000004;;,
      6;3; 0.000000,49.301296, 0.000005;;,
      7;3; 0.000000,49.301304,-0.000002;;,
      8;3; 0.000002,49.301300, 0.000004;;,
      9;3;-0.000011,49.301292,-0.000007;;,
      10;3;-0.000009,49.301315,-0.000001;;,
      11;3; 0.000002,49.301304,-0.000006;;,
      12;3; 0.000010,49.301285,-0.000005;;,
      13;3; 0.000010,49.301296, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.926807,-0.354034,-0.056108, 0.111985;;,
      1;4;-0.925810,-0.349047,-0.018547, 0.143867;;,
      2;4;-0.927615,-0.341004,-0.005650, 0.152365;;,
      3;4;-0.931123,-0.329786,-0.000220, 0.155730;;,
      4;4;-0.935506,-0.316643, 0.000113, 0.156736;;,
      5;4;-0.940747,-0.300405, 0.000582, 0.157325;;,
      6;4;-0.947775,-0.276993, 0.006373, 0.157975;;,
      7;4;-0.956649,-0.243278, 0.020123, 0.158851;;,
      8;4;-0.965567,-0.200697, 0.040763, 0.160436;;,
      9;4;-0.972351,-0.154318, 0.063867, 0.163218;;,
      10;4;-0.976306,-0.109083, 0.083588, 0.167153;;,
      11;4;-0.978179,-0.067972, 0.095596, 0.171488;;,
      12;4;-0.978957,-0.033086, 0.099261, 0.175201;;,
      13;4;-0.979247,-0.006403, 0.097386, 0.177626;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,31.604698,-0.000002;;,
      1;3; 0.000009,31.604708, 0.000006;;,
      2;3;-0.000006,31.604704, 0.000002;;,
      3;3; 0.000001,31.604713, 0.000006;;,
      4;3;-0.000002,31.604710,-0.000002;;,
      5;3;-0.000006,31.604710,-0.000004;;,
      6;3; 0.000004,31.604717,-0.000014;;,
      7;3; 0.000006,31.604713,-0.000001;;,
      8;3;-0.000010,31.604696, 0.000003;;,
      9;3; 0.000007,31.604698, 0.000001;;,
      10;3; 0.000003,31.604713, 0.000004;;,
      11;3; 0.000008,31.604712, 0.000003;;,
      12;3; 0.000005,31.604706,-0.000002;;,
      13;3; 0.000006,31.604704, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.915121, 0.185072, 0.036731, 0.356303;;,
      1;4;-0.912772, 0.191175, 0.036347, 0.359137;;,
      2;4;-0.911652, 0.196117, 0.036505, 0.359298;;,
      3;4;-0.910609, 0.202151, 0.036912, 0.358558;;,
      4;4;-0.909762, 0.208575, 0.037520, 0.356963;;,
      5;4;-0.909205, 0.214940, 0.038267, 0.354516;;,
      6;4;-0.908937, 0.221471, 0.039132, 0.351074;;,
      7;4;-0.908867, 0.228641, 0.040125, 0.346517;;,
      8;4;-0.908892, 0.236427, 0.041218, 0.341056;;,
      9;4;-0.908945, 0.244068, 0.042306, 0.335350;;,
      10;4;-0.909011, 0.250493, 0.043229, 0.330279;;,
      11;4;-0.909090, 0.254937, 0.043863, 0.326554;;,
      12;4;-0.909171, 0.257315, 0.044190, 0.324414;;,
      13;4;-0.909228, 0.258148, 0.044293, 0.323576;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-7.059603, 6.094490, 4.397205;;,
      1;3;-7.059602, 6.094493, 4.397207;;,
      2;3;-7.059597, 6.094491, 4.397206;;,
      3;3;-7.059609, 6.094488, 4.397205;;,
      4;3;-7.059598, 6.094490, 4.397202;;,
      5;3;-7.059598, 6.094486, 4.397212;;,
      6;3;-7.059608, 6.094488, 4.397214;;,
      7;3;-7.059606, 6.094489, 4.397206;;,
      8;3;-7.059600, 6.094491, 4.397216;;,
      9;3;-7.059599, 6.094487, 4.397212;;,
      10;3;-7.059606, 6.094486, 4.397213;;,
      11;3;-7.059598, 6.094486, 4.397223;;,
      12;3;-7.059599, 6.094489, 4.397205;;,
      13;3;-7.059591, 6.094491, 4.397208;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.967245, 0.106730, 0.229239,-0.022256;;,
      1;4;-0.972505, 0.101986, 0.208108,-0.022883;;,
      2;4;-0.976159, 0.096425, 0.192093,-0.030255;;,
      3;4;-0.980107, 0.089463, 0.172624,-0.039834;;,
      4;4;-0.983701, 0.081852, 0.151931,-0.050484;;,
      5;4;-0.986652, 0.073781, 0.131608,-0.061262;;,
      6;4;-0.989073, 0.064560, 0.111112,-0.072250;;,
      7;4;-0.991042, 0.053478, 0.088932,-0.084063;;,
      8;4;-0.992352, 0.040833, 0.064967,-0.096693;;,
      9;4;-0.992781, 0.028082, 0.041448,-0.108995;;,
      10;4;-0.992481, 0.017077, 0.021714,-0.119244;;,
      11;4;-0.991929, 0.009155, 0.008173,-0.126196;;,
      12;4;-0.991533, 0.004652, 0.001055,-0.129765;;,
      13;4;-0.991390, 0.002900,-0.001351,-0.130906;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000001, 7.536500, 0.000000;;,
      1;3; 0.000004, 7.536492, 0.000006;;,
      2;3; 0.000004, 7.536490,-0.000010;;,
      3;3; 0.000008, 7.536497, 0.000002;;,
      4;3; 0.000004, 7.536499, 0.000006;;,
      5;3;-0.000002, 7.536493,-0.000002;;,
      6;3; 0.000001, 7.536494, 0.000004;;,
      7;3; 0.000003, 7.536496,-0.000002;;,
      8;3;-0.000001, 7.536495, 0.000002;;,
      9;3;-0.000006, 7.536498,-0.000006;;,
      10;3; 0.000003, 7.536495,-0.000006;;,
      11;3; 0.000005, 7.536494,-0.000006;;,
      12;3; 0.000004, 7.536497,-0.000002;;,
      13;3; 0.000000, 7.536496, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
    AnimationKey { // Rotation
      0;
      14;
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
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000006, 7.512298, 0.000001;;,
      1;3; 0.000010, 7.512299, 0.000004;;,
      2;3;-0.000006, 7.512304,-0.000006;;,
      3;3;-0.000006, 7.512297, 0.000004;;,
      4;3; 0.000004, 7.512294, 0.000000;;,
      5;3; 0.000000, 7.512294,-0.000006;;,
      6;3; 0.000003, 7.512299,-0.000008;;,
      7;3; 0.000006, 7.512291,-0.000001;;,
      8;3; 0.000002, 7.512296,-0.000002;;,
      9;3; 0.000003, 7.512300,-0.000004;;,
      10;3; 0.000005, 7.512300,-0.000004;;,
      11;3; 0.000002, 7.512296, 0.000002;;,
      12;3;-0.000006, 7.512297, 0.000001;;,
      13;3; 0.000010, 7.512297, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb4}
    AnimationKey { // Rotation
      0;
      14;
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
      13;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,10.212399, 0.000010;;,
      1;3; 0.000000,10.212404, 0.000001;;,
      2;3; 0.000002,10.212405, 0.000003;;,
      3;3; 0.000000,10.212396,-0.000002;;,
      4;3; 0.000006,10.212400, 0.000000;;,
      5;3; 0.000000,10.212407, 0.000004;;,
      6;3; 0.000000,10.212402,-0.000005;;,
      7;3;-0.000001,10.212404,-0.000008;;,
      8;3;-0.000003,10.212404, 0.000000;;,
      9;3; 0.000005,10.212402, 0.000000;;,
      10;3; 0.000000,10.212404,-0.000003;;,
      11;3; 0.000006,10.212401, 0.000002;;,
      12;3; 0.000002,10.212399, 0.000004;;,
      13;3;-0.000004,10.212399, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.991522, 0.082497,-0.009727, 0.099924;;,
      1;4;-0.988162, 0.116935,-0.012196, 0.098555;;,
      2;4;-0.983684, 0.151116,-0.014155, 0.096585;;,
      3;4;-0.976159, 0.195038,-0.016434, 0.093830;;,
      4;4;-0.965537, 0.243278,-0.018567, 0.090602;;,
      5;4;-0.952103, 0.292457,-0.019882, 0.087027;;,
      6;4;-0.935004, 0.344219,-0.019813, 0.082998;;,
      7;4;-0.912264, 0.401603,-0.018154, 0.078485;;,
      8;4;-0.882989, 0.463315,-0.015113, 0.073767;;,
      9;4;-0.849712, 0.522544,-0.011225, 0.069364;;,
      10;4;-0.818258, 0.571027,-0.007204, 0.065798;;,
      11;4;-0.794566, 0.603848,-0.003796, 0.063394;;,
      12;4;-0.781153, 0.621237,-0.001537, 0.062141;;,
      13;4;-0.776242, 0.627387,-0.000397, 0.061916;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-6.192904,21.271086, 0.498702;;,
      1;3;-6.192901,21.271086, 0.498711;;,
      2;3;-6.192895,21.271080, 0.498709;;,
      3;3;-6.192907,21.271088, 0.498704;;,
      4;3;-6.192898,21.271090, 0.498702;;,
      5;3;-6.192898,21.271090, 0.498710;;,
      6;3;-6.192905,21.271080, 0.498715;;,
      7;3;-6.192901,21.271088, 0.498710;;,
      8;3;-6.192900,21.271095, 0.498715;;,
      9;3;-6.192901,21.271091, 0.498713;;,
      10;3;-6.192909,21.271090, 0.498713;;,
      11;3;-6.192902,21.271090, 0.498723;;,
      12;3;-6.192904,21.271086, 0.498702;;,
      13;3;-6.192892,21.271090, 0.498708;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.976498, 0.215474,-0.004441, 0.001603;;,
      1;4;-0.965591, 0.259911,-0.005514, 0.007095;;,
      2;4;-0.955439, 0.294898,-0.006422, 0.011443;;,
      3;4;-0.941390, 0.336825,-0.007341, 0.016751;;,
      4;4;-0.924457, 0.380540,-0.008101, 0.022434;;,
      5;4;-0.905736, 0.422823,-0.008826, 0.028026;;,
      6;4;-0.884579, 0.465075,-0.009751, 0.033604;;,
      7;4;-0.859109, 0.510147,-0.010901, 0.039544;;,
      8;4;-0.828823, 0.557493,-0.012031, 0.045918;;,
      9;4;-0.796499, 0.602246,-0.012882, 0.052181;;,
      10;4;-0.767403, 0.638446,-0.013417, 0.057439;;,
      11;4;-0.746284, 0.662681,-0.013777, 0.061026;;,
      12;4;-0.734672, 0.675356,-0.014065, 0.062878;;,
      13;4;-0.730555, 0.679747,-0.014185, 0.063504;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000001, 7.536500,-0.000004;;,
      1;3;-0.000006, 7.536494, 0.000010;;,
      2;3;-0.000000, 7.536490, 0.000008;;,
      3;3; 0.000000, 7.536491,-0.000002;;,
      4;3;-0.000001, 7.536495,-0.000002;;,
      5;3; 0.000001, 7.536494, 0.000006;;,
      6;3; 0.000005, 7.536502, 0.000002;;,
      7;3; 0.000003, 7.536501,-0.000001;;,
      8;3; 0.000003, 7.536499, 0.000005;;,
      9;3;-0.000003, 7.536495, 0.000000;;,
      10;3; 0.000004, 7.536501,-0.000003;;,
      11;3;-0.000003, 7.536500,-0.000000;;,
      12;3; 0.000012, 7.536503, 0.000002;;,
      13;3; 0.000001, 7.536511, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000005, 7.512295, 0.000008;;,
      1;3;-0.000004, 7.512297, 0.000004;;,
      2;3;-0.000003, 7.512289,-0.000002;;,
      3;3;-0.000002, 7.512295, 0.000001;;,
      4;3;-0.000000, 7.512296, 0.000011;;,
      5;3;-0.000007, 7.512299,-0.000010;;,
      6;3; 0.000001, 7.512300, 0.000010;;,
      7;3; 0.000002, 7.512294,-0.000005;;,
      8;3;-0.000000, 7.512293, 0.000003;;,
      9;3; 0.000001, 7.512285, 0.000002;;,
      10;3; 0.000001, 7.512286, 0.000003;;,
      11;3;-0.000007, 7.512292,-0.000002;;,
      12;3; 0.000005, 7.512300, 0.000004;;,
      13;3; 0.000001, 7.512294,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002,10.212399, 0.000015;;,
      1;3;-0.000001,10.212401, 0.000000;;,
      2;3; 0.000002,10.212399, 0.000008;;,
      3;3; 0.000003,10.212399, 0.000011;;,
      4;3; 0.000001,10.212398, 0.000004;;,
      5;3;-0.000004,10.212396,-0.000005;;,
      6;3; 0.000002,10.212385, 0.000003;;,
      7;3; 0.000002,10.212399,-0.000003;;,
      8;3; 0.000003,10.212400,-0.000000;;,
      9;3; 0.000000,10.212395, 0.000000;;,
      10;3; 0.000005,10.212404,-0.000003;;,
      11;3;-0.000012,10.212401, 0.000001;;,
      12;3; 0.000009,10.212402, 0.000000;;,
      13;3;-0.000007,10.212399, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.992348, 0.123381,-0.002590,-0.003947;;,
      1;4;-0.987545, 0.157302,-0.003154,-0.000522;;,
      2;4;-0.981607, 0.190855,-0.003701, 0.002886;;,
      3;4;-0.972238, 0.233839,-0.004382, 0.007285;;,
      4;4;-0.959649, 0.280893,-0.005088, 0.012150;;,
      5;4;-0.944258, 0.328709,-0.005799, 0.017143;;,
      6;4;-0.925146, 0.378892,-0.006565, 0.022430;;,
      7;4;-0.900253, 0.434381,-0.007425, 0.028337;;,
      8;4;-0.868786, 0.493897,-0.008327, 0.034764;;,
      9;4;-0.833535, 0.550865,-0.009156, 0.041031;;,
      10;4;-0.800555, 0.597392,-0.009817, 0.046242;;,
      11;4;-0.775870, 0.628840,-0.010271, 0.049806;;,
      12;4;-0.761941, 0.645495,-0.010540, 0.051685;;,
      13;4;-0.756851, 0.651400,-0.010636, 0.052354;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.016499,23.334385, 0.008603;;,
      1;3; 0.016499,23.334381, 0.008611;;,
      2;3; 0.016503,23.334375, 0.008608;;,
      3;3; 0.016490,23.334381, 0.008607;;,
      4;3; 0.016500,23.334377, 0.008600;;,
      5;3; 0.016505,23.334377, 0.008611;;,
      6;3; 0.016497,23.334383, 0.008609;;,
      7;3; 0.016500,23.334377, 0.008607;;,
      8;3; 0.016505,23.334381, 0.008617;;,
      9;3; 0.016499,23.334381, 0.008610;;,
      10;3; 0.016493,23.334379, 0.008613;;,
      11;3; 0.016503,23.334383, 0.008623;;,
      12;3; 0.016501,23.334379, 0.008605;;,
      13;3; 0.016508,23.334381, 0.008608;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.986887, 0.161017,-0.003404, 0.010749;;,
      1;4;-0.978409, 0.206045,-0.003624, 0.015771;;,
      2;4;-0.970172, 0.241585,-0.003786, 0.019717;;,
      3;4;-0.958418, 0.284289,-0.003929, 0.024462;;,
      4;4;-0.943877, 0.328955,-0.004029, 0.029464;;,
      5;4;-0.927472, 0.372290,-0.004105, 0.034350;;,
      6;4;-0.908637, 0.415714,-0.004192, 0.039268;;,
      7;4;-0.885655, 0.462180,-0.004287, 0.044560;;,
      8;4;-0.857987, 0.511195,-0.004342, 0.050181;;,
      9;4;-0.828132, 0.557756,-0.004325, 0.055570;;,
      10;4;-0.801026, 0.595600,-0.004262, 0.059992;;,
      11;4;-0.781242, 0.621028,-0.004207, 0.062995;;,
      12;4;-0.770334, 0.634346,-0.004187, 0.064598;;,
      13;4;-0.766467, 0.638961,-0.004240, 0.065116;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000004, 6.996595, 0.000003;;,
      1;3;-0.000006, 6.996592,-0.000004;;,
      2;3; 0.000004, 6.996597,-0.000011;;,
      3;3;-0.000005, 6.996597,-0.000004;;,
      4;3; 0.000000, 6.996595,-0.000006;;,
      5;3;-0.000002, 6.996598,-0.000017;;,
      6;3; 0.000000, 6.996596, 0.000000;;,
      7;3; 0.000001, 6.996593, 0.000005;;,
      8;3;-0.000003, 6.996592, 0.000004;;,
      9;3;-0.000008, 6.996592, 0.000001;;,
      10;3; 0.000000, 6.996589,-0.000003;;,
      11;3; 0.000007, 6.996598,-0.000001;;,
      12;3;-0.000003, 6.996586, 0.000000;;,
      13;3; 0.000004, 6.996596, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002, 7.016009, 0.000004;;,
      1;3;-0.000006, 7.016002,-0.000010;;,
      2;3; 0.000000, 7.016003,-0.000005;;,
      3;3; 0.000004, 7.016003,-0.000005;;,
      4;3;-0.000001, 7.016002, 0.000005;;,
      5;3;-0.000001, 7.016003, 0.000002;;,
      6;3;-0.000008, 7.016005,-0.000006;;,
      7;3;-0.000003, 7.015997, 0.000001;;,
      8;3; 0.000001, 7.016015,-0.000003;;,
      9;3;-0.000005, 7.016003, 0.000000;;,
      10;3;-0.000007, 7.016005, 0.000003;;,
      11;3;-0.000010, 7.016007,-0.000002;;,
      12;3; 0.000005, 7.016009,-0.000000;;,
      13;3;-0.000005, 7.016007, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000004, 7.721601, 0.000008;;,
      1;3;-0.000001, 7.721607,-0.000010;;,
      2;3; 0.000006, 7.721603, 0.000003;;,
      3;3; 0.000002, 7.721596, 0.000000;;,
      4;3;-0.000002, 7.721602,-0.000003;;,
      5;3; 0.000003, 7.721605, 0.000000;;,
      6;3;-0.000001, 7.721611,-0.000008;;,
      7;3;-0.000007, 7.721607, 0.000000;;,
      8;3;-0.000005, 7.721596, 0.000000;;,
      9;3;-0.000008, 7.721607,-0.000004;;,
      10;3; 0.000004, 7.721608,-0.000005;;,
      11;3;-0.000004, 7.721603,-0.000001;;,
      12;3; 0.000009, 7.721604,-0.000001;;,
      13;3;-0.000001, 7.721602, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.970139, 0.203661, 0.001760,-0.131718;;,
      1;4;-0.960445, 0.249575, 0.000663,-0.123520;;,
      2;4;-0.951320, 0.285625,-0.000942,-0.115790;;,
      3;4;-0.938434, 0.328829,-0.003101,-0.105842;;,
      4;4;-0.922595, 0.373891,-0.005629,-0.094831;;,
      5;4;-0.904814, 0.417433,-0.008825,-0.083564;;,
      6;4;-0.884476, 0.460834,-0.013350,-0.071798;;,
      7;4;-0.859702, 0.507011,-0.019561,-0.058901;;,
      8;4;-0.829903, 0.555431,-0.027020,-0.045030;;,
      9;4;-0.797785, 0.601118,-0.034667,-0.031528;;,
      10;4;-0.768665, 0.637989,-0.041378,-0.020271;;,
      11;4;-0.747428, 0.662602,-0.046386,-0.012588;;,
      12;4;-0.735715, 0.675432,-0.049414,-0.008599;;,
      13;4;-0.731550, 0.679860,-0.050711,-0.007305;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 6.516901,22.686594, 0.103598;;,
      1;3; 6.516903,22.686598, 0.103605;;,
      2;3; 6.516907,22.686592, 0.103600;;,
      3;3; 6.516898,22.686598, 0.103603;;,
      4;3; 6.516901,22.686592, 0.103594;;,
      5;3; 6.516903,22.686596, 0.103603;;,
      6;3; 6.516896,22.686586, 0.103603;;,
      7;3; 6.516899,22.686592, 0.103603;;,
      8;3; 6.516903,22.686588, 0.103611;;,
      9;3; 6.516903,22.686590, 0.103611;;,
      10;3; 6.516898,22.686588, 0.103611;;,
      11;3; 6.516903,22.686590, 0.103621;;,
      12;3; 6.516896,22.686586, 0.103597;;,
      13;3; 6.516905,22.686594, 0.103604;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.984301, 0.175523, 0.002187, 0.018415;;,
      1;4;-0.974971, 0.221302, 0.002505, 0.021238;;,
      2;4;-0.966016, 0.257403, 0.002736, 0.023447;;,
      3;4;-0.953344, 0.300744, 0.002983, 0.026073;;,
      4;4;-0.937776, 0.346033, 0.003196, 0.028777;;,
      5;4;-0.920306, 0.389924, 0.003387, 0.031363;;,
      6;4;-0.900338, 0.433852, 0.003603, 0.033932;;,
      7;4;-0.876063, 0.480786, 0.003852, 0.036654;;,
      8;4;-0.846937, 0.530210, 0.004095, 0.039469;;,
      9;4;-0.815602, 0.577066, 0.004288, 0.042067;;,
      10;4;-0.787221, 0.615075, 0.004423, 0.044118;;,
      11;4;-0.766540, 0.640569, 0.004518, 0.045472;;,
      12;4;-0.755149, 0.653909, 0.004581, 0.046184;;,
      13;4;-0.751112, 0.658524, 0.004615, 0.046441;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002, 6.408600,-0.000006;;,
      1;3; 0.000005, 6.408600,-0.000006;;,
      2;3;-0.000003, 6.408601, 0.000010;;,
      3;3; 0.000003, 6.408601, 0.000000;;,
      4;3; 0.000004, 6.408598, 0.000004;;,
      5;3; 0.000000, 6.408592,-0.000005;;,
      6;3;-0.000006, 6.408604, 0.000006;;,
      7;3; 0.000006, 6.408594,-0.000001;;,
      8;3; 0.000001, 6.408597, 0.000000;;,
      9;3; 0.000002, 6.408600,-0.000002;;,
      10;3; 0.000004, 6.408601, 0.000001;;,
      11;3; 0.000000, 6.408592,-0.000003;;,
      12;3;-0.000011, 6.408597, 0.000002;;,
      13;3; 0.000008, 6.408602, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002, 6.150301,-0.000010;;,
      1;3; 0.000001, 6.150301,-0.000007;;,
      2;3; 0.000004, 6.150295,-0.000013;;,
      3;3; 0.000003, 6.150299,-0.000001;;,
      4;3; 0.000000, 6.150296,-0.000005;;,
      5;3;-0.000006, 6.150295,-0.000006;;,
      6;3;-0.000002, 6.150301, 0.000003;;,
      7;3; 0.000000, 6.150295,-0.000002;;,
      8;3;-0.000003, 6.150300, 0.000004;;,
      9;3; 0.000003, 6.150296, 0.000001;;,
      10;3;-0.000003, 6.150299,-0.000003;;,
      11;3; 0.000002, 6.150296,-0.000003;;,
      12;3;-0.000010, 6.150294, 0.000007;;,
      13;3;-0.000002, 6.150298,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002, 6.145398,-0.000011;;,
      1;3;-0.000003, 6.145401, 0.000001;;,
      2;3;-0.000001, 6.145393, 0.000007;;,
      3;3; 0.000002, 6.145407,-0.000004;;,
      4;3; 0.000000, 6.145394,-0.000001;;,
      5;3;-0.000002, 6.145395, 0.000005;;,
      6;3;-0.000006, 6.145399,-0.000003;;,
      7;3; 0.000000, 6.145394,-0.000001;;,
      8;3;-0.000003, 6.145401, 0.000004;;,
      9;3;-0.000004, 6.145398,-0.000001;;,
      10;3; 0.000001, 6.145402, 0.000002;;,
      11;3; 0.000006, 6.145403,-0.000007;;,
      12;3; 0.000000, 6.145396, 0.000004;;,
      13;3; 0.000003, 6.145397,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.952066, 0.182056, 0.008973,-0.245651;;,
      1;4;-0.943613, 0.234501, 0.007943,-0.233542;;,
      2;4;-0.935396, 0.275569, 0.005636,-0.221506;;,
      3;4;-0.923126, 0.324792, 0.002332,-0.205775;;,
      4;4;-0.907272, 0.376102,-0.001760,-0.188155;;,
      5;4;-0.888829, 0.425510,-0.007331,-0.169913;;,
      6;4;-0.867163, 0.474419,-0.015680,-0.150693;;,
      7;4;-0.840104, 0.526003,-0.027461,-0.129583;;,
      8;4;-0.806801, 0.579562,-0.041797,-0.106924;;,
      9;4;-0.770259, 0.629509,-0.056622,-0.084928;;,
      10;4;-0.736720, 0.669284,-0.069735,-0.066636;;,
      11;4;-0.712061, 0.695485,-0.079576,-0.054195;;,
      12;4;-0.698386, 0.708986,-0.085531,-0.047764;;,
      13;4;-0.693463, 0.713590,-0.088238,-0.045954;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;11.443205,18.881195, 0.461808;;,
      1;3;11.443203,18.881193, 0.461810;;,
      2;3;11.443205,18.881186, 0.461809;;,
      3;3;11.443195,18.881195, 0.461807;;,
      4;3;11.443203,18.881191, 0.461802;;,
      5;3;11.443205,18.881191, 0.461817;;,
      6;3;11.443200,18.881186, 0.461813;;,
      7;3;11.443200,18.881191, 0.461810;;,
      8;3;11.443200,18.881191, 0.461821;;,
      9;3;11.443202,18.881191, 0.461817;;,
      10;3;11.443194,18.881187, 0.461818;;,
      11;3;11.443205,18.881186, 0.461828;;,
      12;3;11.443197,18.881187, 0.461808;;,
      13;3;11.443206,18.881189, 0.461808;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.963304, 0.263635, 0.010699, 0.049262;;,
      1;4;-0.950077, 0.307750, 0.012596, 0.049843;;,
      2;4;-0.938101, 0.342403, 0.014122, 0.050262;;,
      3;4;-0.921869, 0.383851, 0.015832, 0.050648;;,
      4;4;-0.902662, 0.426973, 0.017472, 0.050890;;,
      5;4;-0.881746, 0.468575, 0.019040, 0.050990;;,
      6;4;-0.858402, 0.510013, 0.020722, 0.051028;;,
      7;4;-0.830607, 0.554059, 0.022597, 0.050994;;,
      8;4;-0.797886, 0.600168, 0.024495, 0.050757;;,
      9;4;-0.763261, 0.643602, 0.026123, 0.050265;;,
      10;4;-0.732306, 0.678614, 0.027321, 0.049650;;,
      11;4;-0.709944, 0.701979, 0.028116, 0.049143;;,
      12;4;-0.697687, 0.714162, 0.028592, 0.048877;;,
      13;4;-0.693349, 0.718371, 0.028791, 0.048797;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002, 4.919593, 0.000002;;,
      1;3;-0.000004, 4.919600, 0.000008;;,
      2;3; 0.000005, 4.919596, 0.000008;;,
      3;3; 0.000000, 4.919597, 0.000012;;,
      4;3;-0.000002, 4.919600,-0.000001;;,
      5;3; 0.000000, 4.919598, 0.000014;;,
      6;3; 0.000002, 4.919596,-0.000002;;,
      7;3; 0.000004, 4.919600,-0.000003;;,
      8;3; 0.000000, 4.919608, 0.000005;;,
      9;3;-0.000002, 4.919597,-0.000000;;,
      10;3;-0.000002, 4.919601, 0.000000;;,
      11;3;-0.000007, 4.919598, 0.000000;;,
      12;3;-0.000008, 4.919593, 0.000005;;,
      13;3;-0.000003, 4.919597, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000004, 5.232996,-0.000010;;,
      1;3; 0.000004, 5.232994,-0.000007;;,
      2;3;-0.000002, 5.233002, 0.000009;;,
      3;3;-0.000004, 5.232997,-0.000005;;,
      4;3; 0.000004, 5.233006,-0.000002;;,
      5;3;-0.000002, 5.232994, 0.000002;;,
      6;3; 0.000000, 5.232999, 0.000003;;,
      7;3; 0.000002, 5.233001,-0.000010;;,
      8;3; 0.000000, 5.233000, 0.000004;;,
      9;3;-0.000004, 5.232999,-0.000001;;,
      10;3; 0.000003, 5.233000,-0.000003;;,
      11;3; 0.000003, 5.232992,-0.000001;;,
      12;3;-0.000002, 5.232998,-0.000000;;,
      13;3;-0.000006, 5.233005, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000010, 5.571697,-0.000013;;,
      1;3;-0.000001, 5.571703,-0.000010;;,
      2;3; 0.000003, 5.571700, 0.000002;;,
      3;3; 0.000003, 5.571700, 0.000002;;,
      4;3; 0.000004, 5.571697, 0.000002;;,
      5;3; 0.000004, 5.571709, 0.000005;;,
      6;3; 0.000004, 5.571700, 0.000001;;,
      7;3;-0.000002, 5.571702, 0.000004;;,
      8;3; 0.000003, 5.571705,-0.000001;;,
      9;3;-0.000001, 5.571695,-0.000005;;,
      10;3; 0.000002, 5.571697, 0.000002;;,
      11;3; 0.000000, 5.571694, 0.000005;;,
      12;3;-0.000002, 5.571703,-0.000003;;,
      13;3; 0.000001, 5.571697,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.574567, 0.517657,-0.480032, 0.414093;;,
      1;4;-0.562954, 0.527723,-0.471202, 0.427270;;,
      2;4;-0.559144, 0.528722,-0.470855, 0.431401;;,
      3;4;-0.556218, 0.527069,-0.473315, 0.434503;;,
      4;4;-0.553931, 0.524518,-0.476631, 0.436880;;,
      5;4;-0.552642, 0.522774,-0.478827, 0.438200;;,
      6;4;-0.553069, 0.522316,-0.479298, 0.437691;;,
      7;4;-0.555731, 0.522340,-0.478921, 0.434694;;,
      8;4;-0.560422, 0.521722,-0.478976, 0.429319;;,
      9;4;-0.566050, 0.520073,-0.480010, 0.422731;;,
      10;4;-0.571051, 0.518025,-0.481545, 0.416732;;,
      11;4;-0.574202, 0.516625,-0.482661, 0.412831;;,
      12;4;-0.575242, 0.516445,-0.482790, 0.411455;;,
      13;4;-0.574821, 0.517239,-0.482069, 0.411892;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-17.399504,24.614294, 1.157894;;,
      1;3;-17.399500,24.614311, 1.157903;;,
      2;3;-17.399500,24.614313, 1.157902;;,
      3;3;-17.399502,24.614304, 1.157897;;,
      4;3;-17.399502,24.614317, 1.157899;;,
      5;3;-17.399502,24.614294, 1.157895;;,
      6;3;-17.399502,24.614305, 1.157900;;,
      7;3;-17.399500,24.614302, 1.157896;;,
      8;3;-17.399500,24.614307, 1.157903;;,
      9;3;-17.399504,24.614309, 1.157906;;,
      10;3;-17.399502,24.614309, 1.157905;;,
      11;3;-17.399502,24.614307, 1.157908;;,
      12;3;-17.399504,24.614311, 1.157893;;,
      13;3;-17.399504,24.614307, 1.157895;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.840858, 0.520079, 0.101634, 0.110213;;,
      1;4;-0.829303, 0.541664, 0.098190, 0.095997;;,
      2;4;-0.821605, 0.556215, 0.102274, 0.071619;;,
      3;4;-0.812489, 0.571442, 0.104787, 0.048328;;,
      4;4;-0.804203, 0.584081, 0.103489, 0.037376;;,
      5;4;-0.799423, 0.591139, 0.097941, 0.043412;;,
      6;4;-0.798970, 0.591601, 0.087432, 0.063332;;,
      7;4;-0.801246, 0.587218, 0.071167, 0.090086;;,
      8;4;-0.803633, 0.581416, 0.050507, 0.116524;;,
      9;4;-0.804334, 0.577354, 0.029809, 0.137188;;,
      10;4;-0.803233, 0.576576, 0.014390, 0.148896;;,
      11;4;-0.801400, 0.578652, 0.007309, 0.151216;;,
      12;4;-0.799957, 0.581820, 0.007741, 0.146607;;,
      13;4;-0.799348, 0.584376, 0.012099, 0.139288;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,19.910408, 0.000005;;,
      1;3;-0.000008,19.910406,-0.000003;;,
      2;3; 0.000003,19.910408,-0.000005;;,
      3;3;-0.000000,19.910404,-0.000003;;,
      4;3;-0.000001,19.910402,-0.000001;;,
      5;3;-0.000004,19.910402,-0.000007;;,
      6;3; 0.000006,19.910404, 0.000001;;,
      7;3;-0.000002,19.910404, 0.000003;;,
      8;3; 0.000002,19.910408,-0.000003;;,
      9;3;-0.000005,19.910404,-0.000004;;,
      10;3; 0.000005,19.910408, 0.000008;;,
      11;3; 0.000004,19.910402, 0.000007;;,
      12;3;-0.000005,19.910410,-0.000006;;,
      13;3; 0.000008,19.910408, 0.000015;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.905831, 0.107314,-0.081173,-0.401702;;,
      1;4;-0.908541, 0.112733,-0.112125,-0.386357;;,
      2;4;-0.906809, 0.114606,-0.124685,-0.386027;;,
      3;4;-0.902309, 0.115318,-0.133958,-0.393186;;,
      4;4;-0.894620, 0.114068,-0.139250,-0.408965;;,
      5;4;-0.883222, 0.110745,-0.141022,-0.433322;;,
      6;4;-0.867357, 0.106129,-0.139760,-0.465720;;,
      7;4;-0.846484, 0.101560,-0.133666,-0.505255;;,
      8;4;-0.820905, 0.097733,-0.119170,-0.549874;;,
      9;4;-0.791945, 0.093007,-0.095285,-0.595898;;,
      10;4;-0.762291, 0.084140,-0.066726,-0.638263;;,
      11;4;-0.736615, 0.070548,-0.040880,-0.671379;;,
      12;4;-0.719596, 0.056811,-0.021952,-0.691717;;,
      13;4;-0.712064, 0.048523,-0.009651,-0.700369;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002,49.301300, 0.000025;;,
      1;3;-0.000003,49.301308, 0.000027;;,
      2;3; 0.000003,49.301292, 0.000020;;,
      3;3; 0.000000,49.301300, 0.000021;;,
      4;3; 0.000002,49.301311, 0.000016;;,
      5;3; 0.000004,49.301308, 0.000024;;,
      6;3; 0.000000,49.301311, 0.000020;;,
      7;3; 0.000002,49.301304, 0.000019;;,
      8;3;-0.000000,49.301300, 0.000014;;,
      9;3; 0.000001,49.301304, 0.000028;;,
      10;3; 0.000001,49.301311, 0.000011;;,
      11;3; 0.000003,49.301311, 0.000022;;,
      12;3; 0.000001,49.301292, 0.000013;;,
      13;3;-0.000002,49.301311, 0.000014;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.962019,-0.228132,-0.077137,-0.128551;;,
      1;4;-0.968491,-0.197926,-0.097711,-0.115337;;,
      2;4;-0.974643,-0.167575,-0.100965,-0.108610;;,
      3;4;-0.980190,-0.133780,-0.101241,-0.105270;;,
      4;4;-0.983779,-0.105356,-0.101146,-0.104159;;,
      5;4;-0.985927,-0.086412,-0.100886,-0.101505;;,
      6;4;-0.987900,-0.074163,-0.098130,-0.094463;;,
      7;4;-0.990428,-0.062901,-0.090216,-0.083410;;,
      8;4;-0.993333,-0.048995,-0.076186,-0.071311;;,
      9;4;-0.995924,-0.032573,-0.057524,-0.061358;;,
      10;4;-0.997655,-0.015864,-0.037439,-0.055055;;,
      11;4;-0.998458,-0.000888,-0.019342,-0.052031;;,
      12;4;-0.998615, 0.011407,-0.005559,-0.051054;;,
      13;4;-0.998478, 0.020777, 0.003258,-0.050988;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000004,31.604996, 0.000005;;,
      1;3;-0.000002,31.605003,-0.000002;;,
      2;3; 0.000000,31.604996, 0.000009;;,
      3;3; 0.000000,31.604992,-0.000004;;,
      4;3; 0.000002,31.604992, 0.000001;;,
      5;3; 0.000002,31.604988, 0.000000;;,
      6;3;-0.000004,31.605000, 0.000004;;,
      7;3; 0.000004,31.604988,-0.000003;;,
      8;3;-0.000004,31.605000, 0.000006;;,
      9;3; 0.000000,31.604998, 0.000003;;,
      10;3;-0.000005,31.605000,-0.000008;;,
      11;3;-0.000009,31.604992, 0.000003;;,
      12;3; 0.000002,31.604988,-0.000007;;,
      13;3;-0.000008,31.605000, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.919761, 0.257021, 0.043447,-0.293413;;,
      1;4;-0.919295, 0.257831, 0.037669,-0.294960;;,
      2;4;-0.919240, 0.258851, 0.031462,-0.294963;;,
      3;4;-0.919280, 0.260239, 0.023279,-0.294377;;,
      4;4;-0.919375, 0.261843, 0.014084,-0.293238;;,
      5;4;-0.919485, 0.263608, 0.004487,-0.291612;;,
      6;4;-0.919558, 0.265667,-0.005855,-0.289483;;,
      7;4;-0.919521, 0.268174,-0.017600,-0.286799;;,
      8;4;-0.919310, 0.271067,-0.030601,-0.283648;;,
      9;4;-0.918921, 0.274015,-0.043524,-0.280367;;,
      10;4;-0.918447, 0.276581,-0.054511,-0.277463;;,
      11;4;-0.918031, 0.278439,-0.062200,-0.275359;;,
      12;4;-0.917766, 0.279500,-0.066369,-0.274191;;,
      13;4;-0.917657, 0.279918,-0.067861,-0.273763;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 7.059708, 6.093992, 4.396989;;,
      1;3; 7.059700, 6.094002, 4.396990;;,
      2;3; 7.059698, 6.093996, 4.396995;;,
      3;3; 7.059698, 6.093998, 4.396991;;,
      4;3; 7.059702, 6.093999, 4.396979;;,
      5;3; 7.059702, 6.093999, 4.396991;;,
      6;3; 7.059700, 6.093998, 4.396995;;,
      7;3; 7.059706, 6.093997, 4.396992;;,
      8;3; 7.059706, 6.094000, 4.396992;;,
      9;3; 7.059700, 6.093997, 4.396980;;,
      10;3; 7.059696, 6.093994, 4.396995;;,
      11;3; 7.059711, 6.093995, 4.396993;;,
      12;3; 7.059698, 6.093996, 4.396982;;,
      13;3; 7.059689, 6.094004, 4.396989;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.922560,-0.046687,-0.382782,-0.013499;;,
      1;4;-0.934866,-0.039301,-0.352685,-0.009708;;,
      2;4;-0.943938,-0.032290,-0.328458,-0.007323;;,
      3;4;-0.954076,-0.023668,-0.298594,-0.004588;;,
      4;4;-0.963762,-0.014772,-0.266342,-0.002351;;,
      5;4;-0.972254,-0.007445,-0.233801, 0.002123;;,
      6;4;-0.979760,-0.002601,-0.199742, 0.012898;;,
      7;4;-0.986415, 0.000256,-0.161651, 0.029244;;,
      8;4;-0.991604, 0.001813,-0.119605, 0.049126;;,
      9;4;-0.994573, 0.002487,-0.077737, 0.069104;;,
      10;4;-0.995409, 0.002330,-0.042101, 0.085929;;,
      11;4;-0.995067, 0.001433,-0.017181, 0.097695;;,
      12;4;-0.994550, 0.000250,-0.003725, 0.104195;;,
      13;4;-0.994296,-0.000646, 0.001038, 0.106653;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002, 7.536302, 0.000003;;,
      1;3; 0.000002, 7.536306,-0.000006;;,
      2;3;-0.000006, 7.536303,-0.000006;;,
      3;3;-0.000001, 7.536304, 0.000003;;,
      4;3; 0.000004, 7.536304, 0.000002;;,
      5;3;-0.000002, 7.536310,-0.000003;;,
      6;3; 0.000002, 7.536306, 0.000003;;,
      7;3;-0.000002, 7.536295,-0.000002;;,
      8;3;-0.000001, 7.536299, 0.000003;;,
      9;3;-0.000005, 7.536303,-0.000008;;,
      10;3; 0.000003, 7.536301, 0.000002;;,
      11;3; 0.000002, 7.536308, 0.000005;;,
      12;3;-0.000008, 7.536303,-0.000006;;,
      13;3; 0.000001, 7.536307,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb3}
    AnimationKey { // Rotation
      0;
      14;
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
      13;4;-1.000000,-0.000001, 0.000001, 0.000001;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000004, 7.512698,-0.000004;;,
      1;3; 0.000002, 7.512695, 0.000006;;,
      2;3; 0.000002, 7.512700,-0.000002;;,
      3;3; 0.000001, 7.512695, 0.000002;;,
      4;3; 0.000002, 7.512695, 0.000006;;,
      5;3; 0.000003, 7.512699, 0.000004;;,
      6;3; 0.000005, 7.512695,-0.000006;;,
      7;3; 0.000005, 7.512695, 0.000001;;,
      8;3;-0.000005, 7.512695,-0.000002;;,
      9;3;-0.000001, 7.512703, 0.000001;;,
      10;3;-0.000002, 7.512697, 0.000004;;,
      11;3;-0.000002, 7.512691,-0.000002;;,
      12;3;-0.000006, 7.512699, 0.000009;;,
      13;3; 0.000000, 7.512701, 0.000009;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb4}
    AnimationKey { // Rotation
      0;
      14;
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
      13;4;-1.000000, 0.000001,-0.000001,-0.000001;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000005,10.212723,-0.000004;;,
      1;3; 0.000002,10.212729,-0.000004;;,
      2;3;-0.000005,10.212727, 0.000006;;,
      3;3;-0.000004,10.212725,-0.000001;;,
      4;3; 0.000000,10.212725, 0.000005;;,
      5;3;-0.000003,10.212723,-0.000008;;,
      6;3; 0.000002,10.212723,-0.000005;;,
      7;3; 0.000004,10.212723,-0.000001;;,
      8;3; 0.000002,10.212725,-0.000002;;,
      9;3; 0.000004,10.212730,-0.000002;;,
      10;3;-0.000010,10.212723,-0.000001;;,
      11;3;-0.000000,10.212725,-0.000003;;,
      12;3; 0.000006,10.212725,-0.000003;;,
      13;3; 0.000001,10.212727, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.988047, 0.079851, 0.023265,-0.129791;;,
      1;4;-0.986000, 0.112170, 0.024846,-0.120851;;,
      2;4;-0.982822, 0.144183, 0.025460,-0.112358;;,
      3;4;-0.977082, 0.185378, 0.025897,-0.101362;;,
      4;4;-0.968582, 0.230730, 0.025804,-0.089144;;,
      5;4;-0.957476, 0.277072, 0.024134,-0.076739;;,
      6;4;-0.943007, 0.325936, 0.019618,-0.064170;;,
      7;4;-0.923435, 0.380170, 0.011673,-0.051015;;,
      8;4;-0.897931, 0.438540, 0.000931,-0.037442;;,
      9;4;-0.868696, 0.494611,-0.011012,-0.024611;;,
      10;4;-0.840889, 0.540564,-0.022243,-0.014183;;,
      11;4;-0.819830, 0.571713,-0.031123,-0.007349;;,
      12;4;-0.807850, 0.588228,-0.036734,-0.004103;;,
      13;4;-0.803447, 0.594074,-0.039223,-0.003315;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 6.192900,21.270994, 0.499002;;,
      1;3; 6.192900,21.271000, 0.498997;;,
      2;3; 6.192902,21.270992, 0.499005;;,
      3;3; 6.192896,21.270996, 0.499004;;,
      4;3; 6.192900,21.270994, 0.498991;;,
      5;3; 6.192902,21.270998, 0.499000;;,
      6;3; 6.192898,21.270996, 0.499004;;,
      7;3; 6.192907,21.270998, 0.498999;;,
      8;3; 6.192907,21.270998, 0.499006;;,
      9;3; 6.192900,21.270996, 0.498987;;,
      10;3; 6.192900,21.270988, 0.499002;;,
      11;3; 6.192907,21.270988, 0.499001;;,
      12;3; 6.192892,21.270996, 0.498995;;,
      13;3; 6.192892,21.270996, 0.499004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.980362, 0.197106, 0.003879, 0.004983;;,
      1;4;-0.972807, 0.231565, 0.004804, 0.001522;;,
      2;4;-0.964078, 0.265550, 0.005747,-0.001907;;,
      3;4;-0.951040, 0.308928, 0.006727,-0.006392;;,
      4;4;-0.934312, 0.356191, 0.007544,-0.011447;;,
      5;4;-0.914579, 0.403978, 0.008359,-0.016676;;,
      6;4;-0.890743, 0.453869, 0.009484,-0.022126;;,
      7;4;-0.860424, 0.508685, 0.010948,-0.028104;;,
      8;4;-0.822904, 0.566987, 0.012405,-0.034651;;,
      9;4;-0.781634, 0.622226, 0.013495,-0.041238;;,
      10;4;-0.743566, 0.666864, 0.014191,-0.046911;;,
      11;4;-0.715337, 0.696774, 0.014665,-0.050836;;,
      12;4;-0.699484, 0.712534, 0.015026,-0.052840;;,
      13;4;-0.693694, 0.718123, 0.015264,-0.053443;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002, 7.535992,-0.000000;;,
      1;3; 0.000004, 7.535995, 0.000006;;,
      2;3;-0.000004, 7.535995, 0.000002;;,
      3;3; 0.000000, 7.536002, 0.000006;;,
      4;3; 0.000000, 7.535995,-0.000004;;,
      5;3; 0.000000, 7.535995, 0.000002;;,
      6;3; 0.000000, 7.536005, 0.000002;;,
      7;3; 0.000002, 7.536002,-0.000001;;,
      8;3; 0.000002, 7.535995,-0.000002;;,
      9;3; 0.000002, 7.536002,-0.000001;;,
      10;3;-0.000002, 7.535995, 0.000002;;,
      11;3; 0.000004, 7.536002, 0.000005;;,
      12;3; 0.000011, 7.535994,-0.000001;;,
      13;3; 0.000008, 7.535990, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000008, 7.513003,-0.000002;;,
      1;3; 0.000004, 7.512997, 0.000003;;,
      2;3; 0.000000, 7.513004,-0.000006;;,
      3;3; 0.000000, 7.513002, 0.000002;;,
      4;3; 0.000002, 7.513001, 0.000004;;,
      5;3;-0.000006, 7.513000, 0.000001;;,
      6;3; 0.000002, 7.512995,-0.000004;;,
      7;3; 0.000004, 7.513003,-0.000004;;,
      8;3; 0.000006, 7.513003,-0.000002;;,
      9;3; 0.000000, 7.512999, 0.000003;;,
      10;3;-0.000002, 7.513002, 0.000007;;,
      11;3; 0.000004, 7.513003, 0.000000;;,
      12;3;-0.000009, 7.512998,-0.000004;;,
      13;3; 0.000003, 7.513003, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002,10.212006, 0.000000;;,
      1;3; 0.000006,10.212006,-0.000007;;,
      2;3;-0.000002,10.212006, 0.000003;;,
      3;3; 0.000005,10.212006,-0.000007;;,
      4;3; 0.000002,10.212003, 0.000001;;,
      5;3; 0.000003,10.212012, 0.000004;;,
      6;3;-0.000001,10.212006,-0.000002;;,
      7;3; 0.000004,10.212002,-0.000001;;,
      8;3; 0.000009,10.212010,-0.000004;;,
      9;3;-0.000002,10.212004, 0.000002;;,
      10;3;-0.000004,10.212003,-0.000003;;,
      11;3;-0.000004,10.212006,-0.000002;;,
      12;3;-0.000004,10.212004,-0.000005;;,
      13;3; 0.000001,10.212004,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.992303, 0.123043, 0.012471, 0.006286;;,
      1;4;-0.987759, 0.155400, 0.012535, 0.005140;;,
      2;4;-0.982200, 0.187382, 0.012546, 0.003608;;,
      3;4;-0.973493, 0.228369, 0.012546, 0.001544;;,
      4;4;-0.961857, 0.273271, 0.012384,-0.000825;;,
      5;4;-0.947691, 0.318946, 0.012007,-0.003411;;,
      6;4;-0.930153, 0.366942, 0.011345,-0.006403;;,
      7;4;-0.907362, 0.420105, 0.010300,-0.010025;;,
      8;4;-0.878593, 0.477280, 0.008911,-0.014139;;,
      9;4;-0.846385, 0.532208, 0.007343,-0.018224;;,
      10;4;-0.816257, 0.577251, 0.005803,-0.021715;;,
      11;4;-0.793704, 0.607805, 0.004628,-0.024184;;,
      12;4;-0.780979, 0.624022, 0.003971,-0.025559;;,
      13;4;-0.776331, 0.629775, 0.003753,-0.026082;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.016499,23.333988, 0.008986;;,
      1;3;-0.016502,23.333996, 0.008991;;,
      2;3;-0.016502,23.333988, 0.009002;;,
      3;3;-0.016502,23.333994, 0.008995;;,
      4;3;-0.016499,23.333990, 0.008988;;,
      5;3;-0.016504,23.333994, 0.008992;;,
      6;3;-0.016502,23.333990, 0.008999;;,
      7;3;-0.016499,23.333994, 0.008991;;,
      8;3;-0.016499,23.333994, 0.008999;;,
      9;3;-0.016497,23.333984, 0.008980;;,
      10;3;-0.016506,23.333984, 0.008997;;,
      11;3;-0.016495,23.333990, 0.008995;;,
      12;3;-0.016506,23.333994, 0.008984;;,
      13;3;-0.016504,23.333990, 0.008995;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.989752, 0.142642, 0.003301,-0.005688;;,
      1;4;-0.984075, 0.177504, 0.003477,-0.008790;;,
      2;4;-0.977201, 0.211953, 0.003647,-0.011869;;,
      3;4;-0.966530, 0.256035, 0.003816,-0.015838;;,
      4;4;-0.952380, 0.304215, 0.003940,-0.020223;;,
      5;4;-0.935255, 0.353087, 0.004040,-0.024719;;,
      6;4;-0.914155, 0.404271, 0.004163,-0.029466;;,
      7;4;-0.886856, 0.460717, 0.004312,-0.034749;;,
      8;4;-0.852553, 0.521052, 0.004435,-0.040487;;,
      9;4;-0.814322, 0.578564, 0.004488,-0.046083;;,
      10;4;-0.778699, 0.625326, 0.004490,-0.050745;;,
      11;4;-0.752113, 0.656808, 0.004485,-0.053942;;,
      12;4;-0.737137, 0.673434, 0.004485,-0.055647;;,
      13;4;-0.731668, 0.679326, 0.004560,-0.056185;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000, 6.996987, 0.000004;;,
      1;3; 0.000001, 6.996996, 0.000010;;,
      2;3;-0.000003, 6.996995,-0.000014;;,
      3;3;-0.000003, 6.996994,-0.000001;;,
      4;3; 0.000000, 6.996994,-0.000005;;,
      5;3;-0.000002, 6.996990,-0.000002;;,
      6;3; 0.000000, 6.996993,-0.000009;;,
      7;3; 0.000002, 6.996989, 0.000007;;,
      8;3; 0.000008, 6.996993, 0.000000;;,
      9;3;-0.000006, 6.996997, 0.000000;;,
      10;3; 0.000000, 6.996993, 0.000001;;,
      11;3; 0.000000, 6.996992, 0.000003;;,
      12;3; 0.000007, 6.996995, 0.000001;;,
      13;3; 0.000004, 6.996998, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000008, 7.016010,-0.000004;;,
      1;3; 0.000002, 7.016008, 0.000005;;,
      2;3; 0.000001, 7.016006,-0.000003;;,
      3;3;-0.000007, 7.016007, 0.000007;;,
      4;3; 0.000000, 7.016008,-0.000006;;,
      5;3; 0.000006, 7.016010,-0.000004;;,
      6;3; 0.000004, 7.016003,-0.000003;;,
      7;3; 0.000002, 7.016010,-0.000004;;,
      8;3; 0.000006, 7.016004, 0.000002;;,
      9;3;-0.000006, 7.016012,-0.000003;;,
      10;3; 0.000000, 7.016010,-0.000005;;,
      11;3; 0.000010, 7.016015,-0.000002;;,
      12;3;-0.000003, 7.016012,-0.000003;;,
      13;3; 0.000006, 7.016007,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000004, 7.720990,-0.000004;;,
      1;3;-0.000001, 7.720998, 0.000005;;,
      2;3; 0.000000, 7.720996,-0.000008;;,
      3;3; 0.000001, 7.720994, 0.000003;;,
      4;3; 0.000000, 7.720997,-0.000001;;,
      5;3; 0.000004, 7.720992, 0.000004;;,
      6;3; 0.000000, 7.720991,-0.000001;;,
      7;3;-0.000003, 7.720996,-0.000004;;,
      8;3;-0.000004, 7.720988,-0.000002;;,
      9;3;-0.000007, 7.720995, 0.000000;;,
      10;3;-0.000004, 7.720990,-0.000002;;,
      11;3; 0.000007, 7.721001, 0.000001;;,
      12;3; 0.000003, 7.720995, 0.000003;;,
      13;3;-0.000004, 7.720997, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.979396, 0.181844,-0.006248, 0.087617;;,
      1;4;-0.973249, 0.214253,-0.004267, 0.082848;;,
      2;4;-0.966074, 0.246229,-0.002132, 0.077892;;,
      3;4;-0.955237, 0.287107, 0.000676, 0.071347;;,
      4;4;-0.941190, 0.331749, 0.003865, 0.063952;;,
      5;4;-0.924482, 0.376988, 0.007410, 0.056199;;,
      6;4;-0.904171, 0.424322, 0.011663, 0.047850;;,
      7;4;-0.878174, 0.476496, 0.016935, 0.038420;;,
      8;4;-0.845789, 0.532282, 0.023022, 0.028048;;,
      9;4;-0.809941, 0.585516, 0.029167, 0.017796;;,
      10;4;-0.776699, 0.628862, 0.034468, 0.009139;;,
      11;4;-0.751962, 0.658086, 0.038291, 0.003132;;,
      12;4;-0.738050, 0.673531, 0.040479,-0.000089;;,
      13;4;-0.732967, 0.679003, 0.041385,-0.001126;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-6.516901,22.686003, 0.103991;;,
      1;3;-6.516903,22.686001, 0.103989;;,
      2;3;-6.516905,22.686001, 0.104001;;,
      3;3;-6.516903,22.686005, 0.103993;;,
      4;3;-6.516903,22.686003, 0.103985;;,
      5;3;-6.516901,22.686005, 0.103988;;,
      6;3;-6.516905,22.685999, 0.103997;;,
      7;3;-6.516899,22.686005, 0.103993;;,
      8;3;-6.516899,22.686003, 0.103994;;,
      9;3;-6.516899,22.686001, 0.103979;;,
      10;3;-6.516907,22.685997, 0.103994;;,
      11;3;-6.516895,22.685995, 0.103992;;,
      12;3;-6.516912,22.686003, 0.103987;;,
      13;3;-6.516909,22.686003, 0.103997;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.987526, 0.156105,-0.002114,-0.020458;;,
      1;4;-0.981233, 0.191372,-0.002341,-0.023539;;,
      2;4;-0.973715, 0.226201,-0.002549,-0.026569;;,
      3;4;-0.962169, 0.270737,-0.002780,-0.030419;;,
      4;4;-0.946993, 0.319372,-0.002981,-0.034583;;,
      5;4;-0.928754, 0.368652,-0.003169,-0.038765;;,
      6;4;-0.906403, 0.420195,-0.003393,-0.043114;;,
      7;4;-0.877621, 0.476945,-0.003662,-0.047870;;,
      8;4;-0.841604, 0.537486,-0.003925,-0.052878;;,
      9;4;-0.801606, 0.595063,-0.004128,-0.057542;;,
      10;4;-0.764440, 0.641766,-0.004260,-0.061240;;,
      11;4;-0.736755, 0.673140,-0.004345,-0.063680;;,
      12;4;-0.721179, 0.689683,-0.004392,-0.064954;;,
      13;4;-0.715495, 0.695533,-0.004432,-0.065426;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000001, 6.408999, 0.000008;;,
      1;3;-0.000002, 6.409000, 0.000000;;,
      2;3;-0.000008, 6.408997, 0.000001;;,
      3;3; 0.000001, 6.408999,-0.000001;;,
      4;3; 0.000007, 6.408997, 0.000006;;,
      5;3;-0.000003, 6.409000,-0.000004;;,
      6;3;-0.000003, 6.408994,-0.000003;;,
      7;3; 0.000000, 6.409004, 0.000000;;,
      8;3;-0.000006, 6.408992, 0.000001;;,
      9;3; 0.000000, 6.409000, 0.000002;;,
      10;3; 0.000004, 6.408996,-0.000003;;,
      11;3;-0.000002, 6.408998, 0.000000;;,
      12;3; 0.000004, 6.408998, 0.000000;;,
      13;3;-0.000005, 6.408994,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000001, 6.149994, 0.000009;;,
      1;3; 0.000001, 6.149989,-0.000010;;,
      2;3; 0.000001, 6.149989,-0.000002;;,
      3;3;-0.000004, 6.149992, 0.000001;;,
      4;3;-0.000001, 6.149994,-0.000004;;,
      5;3;-0.000001, 6.149993,-0.000001;;,
      6;3; 0.000000, 6.149992,-0.000001;;,
      7;3; 0.000000, 6.149998,-0.000002;;,
      8;3; 0.000000, 6.149997, 0.000000;;,
      9;3; 0.000000, 6.150000,-0.000011;;,
      10;3; 0.000008, 6.149994,-0.000005;;,
      11;3;-0.000002, 6.149999, 0.000000;;,
      12;3;-0.000002, 6.150002, 0.000001;;,
      13;3;-0.000004, 6.149997, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002, 6.145993, 0.000000;;,
      1;3;-0.000004, 6.145998,-0.000005;;,
      2;3; 0.000002, 6.145995,-0.000002;;,
      3;3;-0.000001, 6.145999,-0.000006;;,
      4;3;-0.000004, 6.145998,-0.000001;;,
      5;3;-0.000002, 6.146003,-0.000000;;,
      6;3; 0.000000, 6.145993, 0.000001;;,
      7;3; 0.000000, 6.145999, 0.000005;;,
      8;3; 0.000000, 6.145996, 0.000007;;,
      9;3;-0.000002, 6.145998, 0.000001;;,
      10;3; 0.000004, 6.145998,-0.000008;;,
      11;3;-0.000003, 6.145996,-0.000001;;,
      12;3;-0.000009, 6.145996, 0.000004;;,
      13;3;-0.000002, 6.145999, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.974149, 0.160091,-0.021955, 0.157872;;,
      1;4;-0.967876, 0.200462,-0.018212, 0.150662;;,
      2;4;-0.960014, 0.240218,-0.014084, 0.143073;;,
      3;4;-0.947421, 0.290931,-0.008542, 0.132962;;,
      4;4;-0.930301, 0.346107,-0.002108, 0.121433;;,
      5;4;-0.909228, 0.401687, 0.005144, 0.109206;;,
      6;4;-0.882957, 0.459348, 0.013872, 0.095887;;,
      7;4;-0.848639, 0.522191, 0.024702, 0.080742;;,
      8;4;-0.805186, 0.588374, 0.037257, 0.064054;;,
      9;4;-0.756533, 0.650302, 0.050012, 0.047578;;,
      10;4;-0.711119, 0.699604, 0.061062, 0.033702;;,
      11;4;-0.677225, 0.732133, 0.069044, 0.024115;;,
      12;4;-0.658144, 0.749042, 0.073633, 0.019013;;,
      13;4;-0.651159, 0.754996, 0.075310, 0.017375;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-11.443201,18.880999, 0.461998;;,
      1;3;-11.443207,18.881002, 0.461996;;,
      2;3;-11.443205,18.881001, 0.462006;;,
      3;3;-11.443203,18.881004, 0.462008;;,
      4;3;-11.443205,18.881001, 0.461993;;,
      5;3;-11.443205,18.880999, 0.462000;;,
      6;3;-11.443205,18.880997, 0.462004;;,
      7;3;-11.443203,18.880999, 0.461999;;,
      8;3;-11.443199,18.881001, 0.462008;;,
      9;3;-11.443201,18.881001, 0.461987;;,
      10;3;-11.443205,18.880999, 0.462005;;,
      11;3;-11.443197,18.881001, 0.462007;;,
      12;3;-11.443213,18.881002, 0.461995;;,
      13;3;-11.443211,18.881001, 0.462003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.968119, 0.242326,-0.009833,-0.062664;;,
      1;4;-0.958765, 0.276406,-0.011351,-0.065123;;,
      2;4;-0.948265, 0.309956,-0.012848,-0.067489;;,
      3;4;-0.932971, 0.352705,-0.014607,-0.070365;;,
      4;4;-0.913788, 0.399190,-0.016354,-0.073293;;,
      5;4;-0.891577, 0.446067,-0.018109,-0.076076;;,
      6;4;-0.865165, 0.494837,-0.020109,-0.078879;;,
      7;4;-0.832028, 0.548207,-0.022443,-0.081822;;,
      8;4;-0.791520, 0.604745,-0.024845,-0.084630;;,
      9;4;-0.747424, 0.658099,-0.026927,-0.086818;;,
      10;4;-0.707076, 0.701040,-0.028488,-0.088175;;,
      11;4;-0.677326, 0.729694,-0.029538,-0.088899;;,
      12;4;-0.660679, 0.744729,-0.030160,-0.089290;;,
      13;4;-0.654612, 0.750031,-0.030449,-0.089495;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000001, 4.920002,-0.000007;;,
      1;3;-0.000001, 4.919998, 0.000003;;,
      2;3; 0.000003, 4.920000,-0.000003;;,
      3;3;-0.000006, 4.919991, 0.000002;;,
      4;3;-0.000003, 4.920002, 0.000001;;,
      5;3; 0.000001, 4.920001,-0.000004;;,
      6;3; 0.000000, 4.919992,-0.000004;;,
      7;3; 0.000004, 4.919998, 0.000004;;,
      8;3;-0.000006, 4.919999, 0.000002;;,
      9;3; 0.000000, 4.919998, 0.000001;;,
      10;3;-0.000002, 4.920001, 0.000002;;,
      11;3; 0.000006, 4.920001,-0.000004;;,
      12;3; 0.000000, 4.919995,-0.000002;;,
      13;3; 0.000004, 4.919998,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000, 5.232999, 0.000003;;,
      1;3;-0.000003, 5.232999,-0.000006;;,
      2;3; 0.000004, 5.233000, 0.000002;;,
      3;3; 0.000002, 5.233003,-0.000004;;,
      4;3; 0.000001, 5.232996,-0.000001;;,
      5;3; 0.000001, 5.233007,-0.000005;;,
      6;3; 0.000004, 5.232998,-0.000006;;,
      7;3; 0.000000, 5.233001,-0.000005;;,
      8;3;-0.000002, 5.233006,-0.000009;;,
      9;3; 0.000000, 5.233003,-0.000003;;,
      10;3; 0.000000, 5.233000, 0.000007;;,
      11;3;-0.000004, 5.232999,-0.000003;;,
      12;3;-0.000003, 5.233009, 0.000002;;,
      13;3; 0.000002, 5.233007, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002, 5.570992,-0.000016;;,
      1;3;-0.000005, 5.570999,-0.000004;;,
      2;3; 0.000002, 5.570998,-0.000004;;,
      3;3; 0.000000, 5.571000,-0.000004;;,
      4;3;-0.000001, 5.570995,-0.000001;;,
      5;3; 0.000002, 5.571002, 0.000002;;,
      6;3;-0.000004, 5.570999,-0.000003;;,
      7;3; 0.000001, 5.571002, 0.000002;;,
      8;3; 0.000003, 5.570998, 0.000005;;,
      9;3; 0.000003, 5.570996,-0.000008;;,
      10;3;-0.000004, 5.570998,-0.000011;;,
      11;3;-0.000004, 5.570992,-0.000007;;,
      12;3; 0.000004, 5.571007,-0.000001;;,
      13;3; 0.000003, 5.571011, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour1}
    AnimationKey { // Rotation
      0;
      14;
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
      13;4;-0.500000,-0.500000, 0.500000,-0.500000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-1.467303, 5.012918,-18.471128;;,
      1;3;-1.467304, 5.012932,-18.471130;;,
      2;3;-1.467298, 5.012919,-18.471134;;,
      3;3;-1.467299, 5.012924,-18.471134;;,
      4;3;-1.467299, 5.012937,-18.471140;;,
      5;3;-1.467300, 5.012922,-18.471130;;,
      6;3;-1.467300, 5.012938,-18.471132;;,
      7;3;-1.467294, 5.012931,-18.471128;;,
      8;3;-1.467298, 5.012916,-18.471144;;,
      9;3;-1.467301, 5.012918,-18.471125;;,
      10;3;-1.467302, 5.012928,-18.471148;;,
      11;3;-1.467303, 5.012928,-18.471134;;,
      12;3;-1.467298, 5.012922,-18.471142;;,
      13;3;-1.467311, 5.012930,-18.471146;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      1;4;-0.106406,-0.175293,-0.069270, 0.976295;;,
      2;4;-0.106406,-0.175293,-0.069271, 0.976295;;,
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
      13;4;-0.106406,-0.175293,-0.069270, 0.976295;;;
    }
    AnimationKey { // Scale
      1;
      14;
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
      13;3; 1.000001, 1.000000, 1.000001;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 3.884894,-9.462709,-18.584900;;,
      1;3; 3.884891,-9.462714,-18.584900;;,
      2;3; 3.884916,-9.462713,-18.584900;;,
      3;3; 3.884896,-9.462716,-18.584894;;,
      4;3; 3.884896,-9.462715,-18.584896;;,
      5;3; 3.884892,-9.462719,-18.584894;;,
      6;3; 3.884915,-9.462703,-18.584908;;,
      7;3; 3.884912,-9.462713,-18.584904;;,
      8;3; 3.884902,-9.462699,-18.584898;;,
      9;3; 3.884896,-9.462716,-18.584900;;,
      10;3; 3.884895,-9.462718,-18.584894;;,
      11;3; 3.884893,-9.462715,-18.584898;;,
      12;3; 3.884897,-9.462711,-18.584896;;,
      13;3; 3.884899,-9.462718,-18.584900;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour3}
    AnimationKey { // Rotation
      0;
      14;
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
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000002,11.039502, 0.000003;;,
      1;3;-0.000006,11.039503, 0.000005;;,
      2;3;-0.000004,11.039501, 0.000006;;,
      3;3;-0.000005,11.039500,-0.000010;;,
      4;3;-0.000005,11.039501,-0.000005;;,
      5;3; 0.000002,11.039507,-0.000002;;,
      6;3; 0.000007,11.039506,-0.000001;;,
      7;3;-0.000008,11.039501, 0.000005;;,
      8;3; 0.000002,11.039491, 0.000007;;,
      9;3;-0.000004,11.039503, 0.000015;;,
      10;3;-0.000000,11.039498,-0.000002;;,
      11;3; 0.000002,11.039499, 0.000010;;,
      12;3; 0.000005,11.039497, 0.000009;;,
      13;3;-0.000001,11.039501,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      1;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      2;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      3;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      4;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      5;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      6;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      7;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      8;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      9;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      10;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      11;4;-0.135080, 0.914204,-0.186988, 0.333195;;,
      12;4;-0.135080, 0.914205,-0.186988, 0.333195;;,
      13;4;-0.135080, 0.914205,-0.186988, 0.333195;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-2.648917,-11.494611,22.195301;;,
      1;3;-2.648909,-11.494598,22.195301;;,
      2;3;-2.648897,-11.494609,22.195299;;,
      3;3;-2.648911,-11.494606,22.195301;;,
      4;3;-2.648911,-11.494603,22.195301;;,
      5;3;-2.648906,-11.494603,22.195303;;,
      6;3;-2.648899,-11.494593,22.195295;;,
      7;3;-2.648899,-11.494603,22.195303;;,
      8;3;-2.648909,-11.494593,22.195301;;,
      9;3;-2.648912,-11.494609,22.195309;;,
      10;3;-2.648909,-11.494609,22.195309;;,
      11;3;-2.648911,-11.494607,22.195301;;,
      12;3;-2.648903,-11.494600,22.195299;;,
      13;3;-2.648909,-11.494610,22.195297;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArmour5}
    AnimationKey { // Rotation
      0;
      14;
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
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002,11.039495,-0.000003;;,
      1;3; 0.000002,11.039514,-0.000001;;,
      2;3; 0.000004,11.039494, 0.000005;;,
      3;3; 0.000006,11.039506, 0.000007;;,
      4;3;-0.000010,11.039520, 0.000010;;,
      5;3;-0.000006,11.039505, 0.000000;;,
      6;3;-0.000002,11.039508,-0.000010;;,
      7;3;-0.000006,11.039496, 0.000000;;,
      8;3;-0.000001,11.039501,-0.000006;;,
      9;3;-0.000005,11.039499, 0.000000;;,
      10;3;-0.000000,11.039499, 0.000005;;,
      11;3;-0.000006,11.039508,-0.000016;;,
      12;3; 0.000005,11.039486,-0.000004;;,
      13;3; 0.000002,11.039495,-0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.095168, 0.005190,-0.483943,-0.869894;;,
      1;4;-0.075268, 0.027363,-0.641594,-0.762852;;,
      2;4;-0.074958, 0.025283,-0.691066,-0.718450;;,
      3;4;-0.078589, 0.005818,-0.709977,-0.699802;;,
      4;4;-0.087872,-0.000631,-0.698425,-0.710268;;,
      5;4;-0.092003, 0.000055,-0.662644,-0.743262;;,
      6;4;-0.092206,-0.000158,-0.614709,-0.783346;;,
      7;4;-0.093681, 0.001415,-0.568745,-0.817160;;,
      8;4;-0.099844, 0.009470,-0.550298,-0.828923;;,
      9;4;-0.103705, 0.019375,-0.553676,-0.826022;;,
      10;4;-0.107823, 0.026499,-0.542924,-0.832409;;,
      11;4;-0.085864, 0.020262,-0.520695,-0.849172;;,
      12;4;-0.029863,-0.008511,-0.494399,-0.868680;;,
      13;4; 0.024919,-0.048057,-0.460830,-0.885836;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000001, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;19.899096,-7.885092,-3.429498;;,
      1;3;19.899097,-7.885083,-3.429501;;,
      2;3;19.899096,-7.885101,-3.429501;;,
      3;3;19.899096,-7.885106,-3.429500;;,
      4;3;19.899097,-7.885099,-3.429500;;,
      5;3;19.899097,-7.885098,-3.429501;;,
      6;3;19.899096,-7.885104,-3.429500;;,
      7;3;19.899096,-7.885111,-3.429499;;,
      8;3;19.899097,-7.885087,-3.429501;;,
      9;3;19.899094,-7.885089,-3.429501;;,
      10;3;19.899094,-7.885093,-3.429500;;,
      11;3;19.899096,-7.885092,-3.429500;;,
      12;3;19.899096,-7.885109,-3.429500;;,
      13;3;19.899096,-7.885098,-3.429500;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.870923,-0.480791, 0.100686,-0.013982;;,
      1;4;-0.776935,-0.622178, 0.091479,-0.029969;;,
      2;4;-0.688714,-0.717069, 0.095493,-0.048648;;,
      3;4;-0.632230,-0.767312, 0.092029,-0.055209;;,
      4;4;-0.586720,-0.804217, 0.077224,-0.055053;;,
      5;4;-0.573898,-0.813363, 0.074700,-0.059178;;,
      6;4;-0.586881,-0.804514, 0.070684,-0.057720;;,
      7;4;-0.593797,-0.800497, 0.058178,-0.056788;;,
      8;4;-0.572976,-0.816562, 0.031723,-0.062606;;,
      9;4;-0.530013,-0.845035,-0.011296,-0.069817;;,
      10;4;-0.453109,-0.887095,-0.057454,-0.066744;;,
      11;4;-0.383091,-0.919151,-0.085911,-0.031969;;,
      12;4;-0.342188,-0.934386,-0.089563, 0.042533;;,
      13;4;-0.356152,-0.924649,-0.068658, 0.116050;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002,38.282917, 0.000002;;,
      1;3;-0.000002,38.282909,-0.000002;;,
      2;3; 0.000002,38.282909,-0.000000;;,
      3;3;-0.000003,38.282913, 0.000002;;,
      4;3;-0.000003,38.282913,-0.000008;;,
      5;3; 0.000001,38.282917,-0.000003;;,
      6;3;-0.000004,38.282909,-0.000006;;,
      7;3; 0.000002,38.282913, 0.000002;;,
      8;3;-0.000002,38.282913, 0.000001;;,
      9;3; 0.000000,38.282917, 0.000001;;,
      10;3;-0.000001,38.282909, 0.000000;;,
      11;3; 0.000000,38.282921,-0.000001;;,
      12;3;-0.000001,38.282909,-0.000000;;,
      13;3; 0.000001,38.282913,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.935459, 0.324663,-0.033530,-0.135594;;,
      1;4;-0.923353, 0.359766,-0.036021,-0.129188;;,
      2;4;-0.901701, 0.416306,-0.033591,-0.111788;;,
      3;4;-0.883063, 0.459472,-0.021409,-0.092881;;,
      4;4;-0.843300, 0.531212,-0.009311,-0.081073;;,
      5;4;-0.804823, 0.589632,-0.008534,-0.067238;;,
      6;4;-0.786750, 0.615176,-0.008290,-0.050135;;,
      7;4;-0.781690, 0.622672,-0.002496,-0.035122;;,
      8;4;-0.821517, 0.569659, 0.009693,-0.022480;;,
      9;4;-0.884698, 0.464787, 0.031499, 0.017040;;,
      10;4;-0.884398, 0.460720, 0.047335, 0.057765;;,
      11;4;-0.857071, 0.506703, 0.050245, 0.078470;;,
      12;4;-0.824660, 0.560055, 0.034864, 0.071122;;,
      13;4;-0.813918, 0.578553, 0.008972, 0.052281;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,32.683987,-0.000005;;,
      1;3;-0.000000,32.683987,-0.000004;;,
      2;3; 0.000001,32.683987,-0.000000;;,
      3;3; 0.000002,32.683987,-0.000002;;,
      4;3; 0.000003,32.683987, 0.000003;;,
      5;3; 0.000000,32.683990, 0.000001;;,
      6;3; 0.000001,32.683987,-0.000002;;,
      7;3;-0.000001,32.683987,-0.000001;;,
      8;3; 0.000002,32.683983,-0.000000;;,
      9;3; 0.000003,32.683990,-0.000001;;,
      10;3; 0.000001,32.683983, 0.000002;;,
      11;3; 0.000002,32.683983,-0.000006;;,
      12;3; 0.000000,32.683987, 0.000002;;,
      13;3; 0.000001,32.683987,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.826081, 0.539624,-0.076594, 0.143283;;,
      1;4;-0.865603, 0.475861,-0.073980, 0.137164;;,
      2;4;-0.870004, 0.478392,-0.081365, 0.087261;;,
      3;4;-0.857786, 0.505193,-0.093655, 0.014559;;,
      4;4;-0.866711, 0.491347,-0.085856,-0.004305;;,
      5;4;-0.869389, 0.484133,-0.098729, 0.005553;;,
      6;4;-0.856485, 0.501013,-0.117389, 0.040492;;,
      7;4;-0.823219, 0.547956,-0.122194, 0.084405;;,
      8;4;-0.784032, 0.603563,-0.102459, 0.102508;;,
      9;4;-0.729355, 0.673671,-0.100791, 0.063646;;,
      10;4;-0.776993, 0.623308,-0.088117, 0.002037;;,
      11;4;-0.837765, 0.526303,-0.118814,-0.083890;;,
      12;4;-0.867435, 0.486593,-0.069927,-0.076780;;,
      13;4;-0.876506, 0.477248,-0.038678,-0.049760;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000003,27.100010, 0.000006;;,
      1;3;-0.000001,27.100004, 0.000000;;,
      2;3; 0.000000,27.100010,-0.000000;;,
      3;3;-0.000000,27.100006, 0.000003;;,
      4;3; 0.000001,27.100002, 0.000006;;,
      5;3;-0.000000,27.100002, 0.000001;;,
      6;3; 0.000001,27.100006, 0.000001;;,
      7;3; 0.000001,27.100002, 0.000001;;,
      8;3; 0.000003,27.100004, 0.000002;;,
      9;3; 0.000000,27.100002, 0.000000;;,
      10;3; 0.000001,27.100004, 0.000000;;,
      11;3; 0.000000,27.100002,-0.000000;;,
      12;3;-0.000001,27.099998, 0.000002;;,
      13;3; 0.000000,27.100006, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      1;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      5;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000, 0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000004,16.631996,-0.000000;;,
      1;3; 0.000000,16.632002,-0.000000;;,
      2;3; 0.000002,16.631996,-0.000000;;,
      3;3;-0.000000,16.631992, 0.000001;;,
      4;3; 0.000000,16.631990, 0.000000;;,
      5;3; 0.000001,16.631987, 0.000001;;,
      6;3;-0.000001,16.631996,-0.000000;;,
      7;3; 0.000001,16.631996, 0.000000;;,
      8;3; 0.000001,16.631996,-0.000000;;,
      9;3;-0.000001,16.631994,-0.000000;;,
      10;3; 0.000000,16.631998, 0.000000;;,
      11;3;-0.000002,16.631994,-0.000000;;,
      12;3; 0.000000,16.631998, 0.000001;;,
      13;3;-0.000000,16.631996,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.027176, 0.032831,-0.586993,-0.808469;;,
      1;4;-0.015751, 0.026301,-0.717925,-0.695445;;,
      2;4;-0.015150, 0.027909,-0.754359,-0.655693;;,
      3;4;-0.026210, 0.031533,-0.766746,-0.640640;;,
      4;4;-0.018671, 0.040825,-0.766944,-0.640141;;,
      5;4;-0.008338, 0.034952,-0.757546,-0.651793;;,
      6;4; 0.004951, 0.016079,-0.728220,-0.685137;;,
      7;4; 0.011063,-0.011421,-0.686867,-0.726609;;,
      8;4; 0.009402,-0.034141,-0.644922,-0.763427;;,
      9;4; 0.003590,-0.040872,-0.609426,-0.791780;;,
      10;4;-0.009496,-0.028212,-0.560005,-0.827955;;,
      11;4;-0.026674,-0.001198,-0.490434,-0.871069;;,
      12;4;-0.044577, 0.030338,-0.401515,-0.914264;;,
      13;4;-0.060017, 0.055696,-0.291095,-0.953184;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 0.999999, 0.999999;;,
      1;3; 1.000000, 0.999998, 0.999999;;,
      2;3; 1.000000, 0.999997, 1.000000;;,
      3;3; 1.000000, 0.999997, 1.000000;;,
      4;3; 1.000000, 0.999997, 1.000000;;,
      5;3; 1.000000, 0.999997, 1.000000;;,
      6;3; 1.000000, 0.999998, 0.999999;;,
      7;3; 1.000000, 0.999998, 0.999999;;,
      8;3; 1.000000, 0.999998, 0.999999;;,
      9;3; 1.000000, 0.999998, 0.999999;;,
      10;3; 1.000000, 0.999999, 0.999998;;,
      11;3; 1.000000, 0.999999, 0.999998;;,
      12;3; 1.000000, 0.999999, 0.999997;;,
      13;3; 1.000000, 1.000000, 0.999997;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-19.899099,-7.884994,-3.429499;;,
      1;3;-19.899094,-7.884985,-3.429501;;,
      2;3;-19.899097,-7.885004,-3.429501;;,
      3;3;-19.899097,-7.885010,-3.429500;;,
      4;3;-19.899097,-7.885001,-3.429501;;,
      5;3;-19.899096,-7.884997,-3.429501;;,
      6;3;-19.899097,-7.885005,-3.429501;;,
      7;3;-19.899097,-7.885013,-3.429498;;,
      8;3;-19.899096,-7.884989,-3.429501;;,
      9;3;-19.899097,-7.884988,-3.429501;;,
      10;3;-19.899097,-7.884996,-3.429500;;,
      11;3;-19.899097,-7.884992,-3.429501;;,
      12;3;-19.899097,-7.885010,-3.429501;;,
      13;3;-19.899096,-7.884999,-3.429500;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.893870,-0.433057,-0.115891, 0.005308;;,
      1;4;-0.818720,-0.562612,-0.112529, 0.022410;;,
      2;4;-0.775139,-0.623080,-0.100556, 0.028616;;,
      3;4;-0.758244,-0.642889,-0.103887, 0.031099;;,
      4;4;-0.752654,-0.647747,-0.105696, 0.052574;;,
      5;4;-0.715983,-0.689075,-0.094052, 0.060819;;,
      6;4;-0.701469,-0.707271,-0.067584, 0.056041;;,
      7;4;-0.695368,-0.716520,-0.034817, 0.043017;;,
      8;4;-0.678973,-0.733672,-0.003954, 0.026545;;,
      9;4;-0.646728,-0.762390, 0.012786, 0.018489;;,
      10;4;-0.626682,-0.778856, 0.021569, 0.013752;;,
      11;4;-0.626628,-0.778966, 0.022421, 0.006807;;,
      12;4;-0.647911,-0.761578, 0.012565,-0.007263;;,
      13;4;-0.697921,-0.715876, 0.001308,-0.020658;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000001,38.282913,-0.000003;;,
      1;3;-0.000001,38.282909, 0.000000;;,
      2;3; 0.000001,38.282913,-0.000001;;,
      3;3;-0.000000,38.282909, 0.000002;;,
      4;3; 0.000000,38.282909,-0.000002;;,
      5;3; 0.000002,38.282909,-0.000005;;,
      6;3; 0.000002,38.282909,-0.000001;;,
      7;3;-0.000001,38.282906,-0.000002;;,
      8;3; 0.000000,38.282913, 0.000002;;,
      9;3;-0.000000,38.282909,-0.000002;;,
      10;3;-0.000001,38.282913, 0.000000;;,
      11;3; 0.000001,38.282909, 0.000007;;,
      12;3; 0.000001,38.282909,-0.000003;;,
      13;3;-0.000000,38.282909, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.940135, 0.327039,-0.007281, 0.095595;;,
      1;4;-0.928183, 0.365461, 0.000039, 0.070111;;,
      2;4;-0.936725, 0.346177, 0.000762, 0.052038;;,
      3;4;-0.961245, 0.275488, 0.000177, 0.010709;;,
      4;4;-0.976884, 0.212210,-0.000523,-0.025762;;,
      5;4;-0.958332, 0.280513,-0.001834,-0.053931;;,
      6;4;-0.935205, 0.350503,-0.000148,-0.050398;;,
      7;4;-0.908954, 0.414790, 0.001184,-0.041835;;,
      8;4;-0.881709, 0.470831,-0.000023,-0.030128;;,
      9;4;-0.855691, 0.517200, 0.000684,-0.017214;;,
      10;4;-0.827522, 0.561282,-0.000876,-0.013003;;,
      11;4;-0.795261, 0.606181,-0.002519,-0.009962;;,
      12;4;-0.761137, 0.648564,-0.003220,-0.004985;;,
      13;4;-0.725911, 0.687672,-0.006457,-0.010926;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,32.684063, 0.000002;;,
      1;3; 0.000001,32.684067,-0.000001;;,
      2;3;-0.000002,32.684067,-0.000003;;,
      3;3;-0.000003,32.684059,-0.000002;;,
      4;3;-0.000001,32.684063,-0.000001;;,
      5;3; 0.000003,32.684067, 0.000007;;,
      6;3;-0.000001,32.684067,-0.000001;;,
      7;3; 0.000001,32.684067,-0.000000;;,
      8;3; 0.000001,32.684059, 0.000002;;,
      9;3;-0.000001,32.684067,-0.000001;;,
      10;3;-0.000000,32.684067,-0.000002;;,
      11;3;-0.000001,32.684067,-0.000002;;,
      12;3;-0.000001,32.684063, 0.000001;;,
      13;3;-0.000001,32.684055,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.892909, 0.450073,-0.009759, 0.007282;;,
      1;4;-0.885667, 0.463623,-0.017589, 0.018387;;,
      2;4;-0.881673, 0.470734,-0.021730, 0.024276;;,
      3;4;-0.877455, 0.477992,-0.026019, 0.030311;;,
      4;4;-0.873036, 0.485339,-0.030450, 0.036432;;,
      5;4;-0.868439, 0.492721,-0.035014, 0.042583;;,
      6;4;-0.863694, 0.500085,-0.039700, 0.048707;;,
      7;4;-0.858830, 0.507380,-0.044490, 0.054750;;,
      8;4;-0.853882, 0.514558,-0.049368, 0.060659;;,
      9;4;-0.848885, 0.521573,-0.054310, 0.066383;;,
      10;4;-0.843879, 0.528382,-0.059292, 0.071872;;,
      11;4;-0.838905, 0.534943,-0.064286, 0.077081;;,
      12;4;-0.834007, 0.541219,-0.069262, 0.081962;;,
      13;4;-0.829229, 0.547172,-0.074188, 0.086473;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000001,27.100010, 0.000003;;,
      1;3;-0.000001,27.100012,-0.000001;;,
      2;3;-0.000002,27.100014, 0.000005;;,
      3;3; 0.000002,27.100006, 0.000003;;,
      4;3; 0.000002,27.100016, 0.000002;;,
      5;3; 0.000001,27.100012,-0.000002;;,
      6;3;-0.000001,27.100008, 0.000000;;,
      7;3; 0.000000,27.100010, 0.000003;;,
      8;3; 0.000000,27.100010, 0.000001;;,
      9;3; 0.000001,27.100010, 0.000001;;,
      10;3;-0.000003,27.100008, 0.000000;;,
      11;3;-0.000001,27.100010,-0.000001;;,
      12;3; 0.000002,27.100010, 0.000001;;,
      13;3;-0.000000,27.100008,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToe_End}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      4;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      5;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      11;4;-1.000000, 0.000000,-0.000000,-0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000, 0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000002,16.631943, 0.000002;;,
      1;3;-0.000001,16.631945,-0.000006;;,
      2;3; 0.000002,16.631943,-0.000002;;,
      3;3; 0.000001,16.631956,-0.000000;;,
      4;3; 0.000000,16.631948,-0.000000;;,
      5;3; 0.000002,16.631948,-0.000000;;,
      6;3;-0.000000,16.631950,-0.000000;;,
      7;3; 0.000000,16.631943, 0.000001;;,
      8;3; 0.000005,16.631948,-0.000000;;,
      9;3; 0.000001,16.631943, 0.000000;;,
      10;3;-0.000002,16.631943, 0.000000;;,
      11;3;-0.000000,16.631941, 0.000000;;,
      12;3;-0.000001,16.631943, 0.000000;;,
      13;3; 0.000002,16.631945, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth1}
    AnimationKey { // Rotation
      0;
      14;
      0;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      1;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      2;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      3;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      4;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      5;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      6;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      7;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      8;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      9;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      10;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      11;4; 0.000000, 1.000000,-0.000001,-0.000000;;,
      12;4;-0.000000, 1.000000,-0.000001,-0.000000;;,
      13;4;-0.000000, 1.000000,-0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000000,-19.940701,22.170204;;,
      1;3; 0.000000,-19.940693,22.170202;;,
      2;3;-0.000000,-19.940710,22.170200;;,
      3;3; 0.000000,-19.940714,22.170200;;,
      4;3; 0.000000,-19.940708,22.170200;;,
      5;3;-0.000000,-19.940704,22.170200;;,
      6;3;-0.000000,-19.940716,22.170200;;,
      7;3;-0.000000,-19.940720,22.170202;;,
      8;3; 0.000000,-19.940697,22.170200;;,
      9;3;-0.000000,-19.940697,22.170200;;,
      10;3;-0.000000,-19.940704,22.170198;;,
      11;3;-0.000000,-19.940697,22.170202;;,
      12;3; 0.000000,-19.940718,22.170202;;,
      13;3; 0.000000,-19.940706,22.170198;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth2}
    AnimationKey { // Rotation
      0;
      14;
      0;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      1;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      2;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      3;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      4;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      5;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      6;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      7;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      8;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      9;4; 0.000000,-0.000000, 1.000000, 0.000000;;,
      10;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      11;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      12;4; 0.000000, 0.000000, 1.000000, 0.000000;;,
      13;4; 0.000000, 0.000000, 1.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000000,10.763294,-0.000000;;,
      1;3;-0.000000,10.763303,-0.000003;;,
      2;3; 0.000000,10.763294,-0.000001;;,
      3;3; 0.000001,10.763293,-0.000001;;,
      4;3; 0.000000,10.763296, 0.000003;;,
      5;3;-0.000001,10.763301, 0.000001;;,
      6;3; 0.000000,10.763298,-0.000001;;,
      7;3;-0.000000,10.763299,-0.000002;;,
      8;3;-0.000000,10.763302, 0.000001;;,
      9;3;-0.000000,10.763294,-0.000001;;,
      10;3;-0.000000,10.763304, 0.000000;;,
      11;3; 0.000000,10.763297, 0.000001;;,
      12;3; 0.000000,10.763300,-0.000000;;,
      13;3; 0.000000,10.763303,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      1;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      2;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      3;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      4;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      5;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      6;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      7;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      8;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      9;4;-0.000000,-0.000000, 1.000000,-0.000000;;,
      10;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      11;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      12;4;-0.000000, 0.000000, 1.000000,-0.000000;;,
      13;4;-0.000000,-0.000000, 1.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000000,13.749505, 0.000002;;,
      1;3; 0.000000,13.749516,-0.000001;;,
      2;3; 0.000000,13.749512,-0.000000;;,
      3;3;-0.000000,13.749508, 0.000001;;,
      4;3; 0.000000,13.749507,-0.000001;;,
      5;3;-0.000000,13.749506, 0.000001;;,
      6;3; 0.000000,13.749508, 0.000002;;,
      7;3; 0.000000,13.749512,-0.000001;;,
      8;3;-0.000000,13.749507, 0.000001;;,
      9;3;-0.000000,13.749510,-0.000001;;,
      10;3;-0.000000,13.749510, 0.000001;;,
      11;3; 0.000000,13.749517,-0.000002;;,
      12;3; 0.000000,13.749509, 0.000004;;,
      13;3; 0.000000,13.749511, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      2;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      3;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      5;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      6;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      7;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      9;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      11;4;-1.000000,-0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      13;4;-1.000000,-0.000000, 0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3; 0.000000,14.182597, 0.000002;;,
      1;3; 0.000001,14.182600, 0.000001;;,
      2;3;-0.000001,14.182600,-0.000001;;,
      3;3;-0.000000,14.182600,-0.000002;;,
      4;3; 0.000000,14.182600, 0.000003;;,
      5;3;-0.000000,14.182596,-0.000000;;,
      6;3; 0.000000,14.182598,-0.000003;;,
      7;3;-0.000000,14.182598, 0.000001;;,
      8;3;-0.000000,14.182599, 0.000000;;,
      9;3;-0.000000,14.182596,-0.000001;;,
      10;3;-0.000000,14.182597, 0.000002;;,
      11;3; 0.000000,14.182600, 0.000000;;,
      12;3;-0.000000,14.182601,-0.000001;;,
      13;3; 0.000000,14.182600,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      1;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      2;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      3;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      4;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      5;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      6;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      7;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      8;4;-0.707106, 0.000000,-0.000000,-0.707107;;,
      9;4;-0.707106,-0.000000, 0.000000,-0.707107;;,
      10;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      11;4;-0.707106, 0.000000, 0.000000,-0.707107;;,
      12;4;-0.707106,-0.000000,-0.000000,-0.707107;;,
      13;4;-0.707106, 0.000000, 0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;-0.000000,-5.419198,-29.326998;;,
      1;3; 0.000001,-5.419188,-29.327000;;,
      2;3;-0.000001,-5.419200,-29.327002;;,
      3;3;-0.000000,-5.419205,-29.327002;;,
      4;3; 0.000000,-5.419196,-29.327002;;,
      5;3;-0.000000,-5.419197,-29.326998;;,
      6;3;-0.000000,-5.419201,-29.327000;;,
      7;3; 0.000000,-5.419209,-29.326998;;,
      8;3; 0.000000,-5.419190,-29.327002;;,
      9;3;-0.000000,-5.419181,-29.326998;;,
      10;3;-0.000000,-5.419192,-29.326998;;,
      11;3;-0.000000,-5.419188,-29.326998;;,
      12;3; 0.000000,-5.419208,-29.327000;;,
      13;3; 0.000000,-5.419202,-29.326998;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth2}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;15.308598, 0.000000,-0.000003;;,
      1;3;15.308597, 0.000000, 0.000000;;,
      2;3;15.308597, 0.000001, 0.000002;;,
      3;3;15.308599, 0.000001, 0.000001;;,
      4;3;15.308598, 0.000000, 0.000000;;,
      5;3;15.308599, 0.000001,-0.000001;;,
      6;3;15.308599, 0.000001, 0.000003;;,
      7;3;15.308610, 0.000001,-0.000002;;,
      8;3;15.308606, 0.000001,-0.000000;;,
      9;3;15.308601, 0.000001, 0.000001;;,
      10;3;15.308604, 0.000001,-0.000001;;,
      11;3;15.308599, 0.000001,-0.000001;;,
      12;3;15.308602, 0.000000, 0.000001;;,
      13;3;15.308592, 0.000001,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth3}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;17.777100, 0.000002, 0.000000;;,
      1;3;17.777100, 0.000001, 0.000003;;,
      2;3;17.777098, 0.000001, 0.000002;;,
      3;3;17.777096, 0.000002, 0.000000;;,
      4;3;17.777098, 0.000002, 0.000002;;,
      5;3;17.777100, 0.000001,-0.000000;;,
      6;3;17.777102, 0.000002, 0.000000;;,
      7;3;17.777100, 0.000002,-0.000000;;,
      8;3;17.777100, 0.000002,-0.000002;;,
      9;3;17.777098, 0.000002,-0.000003;;,
      10;3;17.777102, 0.000002, 0.000002;;,
      11;3;17.777102, 0.000002, 0.000000;;,
      12;3;17.777102, 0.000001, 0.000002;;,
      13;3;17.777102, 0.000002,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth4}
    AnimationKey { // Rotation
      0;
      14;
      0;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      1;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      2;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      3;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      4;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      5;4;-1.000000,-0.000000,-0.000000, 0.000000;;,
      6;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      7;4;-1.000000,-0.000000,-0.000000,-0.000000;;,
      8;4;-1.000000,-0.000000, 0.000000,-0.000000;;,
      9;4;-1.000000, 0.000000, 0.000000,-0.000000;;,
      10;4;-1.000000, 0.000000,-0.000000, 0.000000;;,
      11;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      12;4;-1.000000, 0.000000, 0.000000, 0.000000;;,
      13;4;-1.000000,-0.000000,-0.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      14;
      0;3; 1.000000, 1.000000, 1.000000;;,
      1;3; 1.000000, 1.000000, 1.000000;;,
      2;3; 1.000000, 1.000000, 1.000000;;,
      3;3; 1.000000, 1.000000, 1.000000;;,
      4;3; 1.000000, 1.000000, 1.000000;;,
      5;3; 1.000000, 1.000000, 1.000000;;,
      6;3; 1.000000, 1.000000, 1.000000;;,
      7;3; 1.000000, 1.000000, 1.000000;;,
      8;3; 1.000000, 1.000000, 1.000000;;,
      9;3; 1.000000, 1.000000, 1.000000;;,
      10;3; 1.000000, 1.000000, 1.000000;;,
      11;3; 1.000000, 1.000000, 1.000000;;,
      12;3; 1.000000, 1.000000, 1.000000;;,
      13;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      14;
      0;3;15.545401, 0.000002, 0.000000;;,
      1;3;15.545401, 0.000002,-0.000001;;,
      2;3;15.545400, 0.000002,-0.000001;;,
      3;3;15.545397, 0.000002,-0.000002;;,
      4;3;15.545398, 0.000002, 0.000002;;,
      5;3;15.545397, 0.000001, 0.000000;;,
      6;3;15.545398, 0.000001,-0.000001;;,
      7;3;15.545400, 0.000002, 0.000002;;,
      8;3;15.545402, 0.000002,-0.000001;;,
      9;3;15.545398, 0.000002,-0.000002;;,
      10;3;15.545396, 0.000002,-0.000004;;,
      11;3;15.545401, 0.000002,-0.000001;;,
      12;3;15.545397, 0.000001,-0.000000;;,
      13;3;15.545395, 0.000002,-0.000002;;;
    }
  }
} // End of AnimationSet Global
