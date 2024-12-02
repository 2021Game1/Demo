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
      0;4;-0.996490,-0.072291,-0.041809, 0.005836;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 2.872797,77.483727, 8.460092;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.998238, 0.058797,-0.000962, 0.007919;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,13.784798, 0.064401;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.996797, 0.078977,-0.005696, 0.011232;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,12.024287,-0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_Spine2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.997344, 0.071735,-0.005885, 0.011135;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,17.815804, 0.000001;;;
    }
  }
  Animation {
    {Armature_mixamorig_Neck}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.996330, 0.049524, 0.048961,-0.049767;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,39.117603,11.976996;;;
    }
  }
  Animation {
    {Armature_mixamorig_Head}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.998599,-0.033412,-0.015549, 0.037974;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,14.552487,15.664096;;;
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
      0;3; 0.000000,15.601693, 7.553701;;;
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
      0;3; 3.528700, 2.462087,12.838205;;;
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
      0;3;-3.528700, 2.462075,12.838204;;;
    }
  }
  Animation {
    {Armature_mixamorig_Jaw}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.454186, 0.890907,-0.000000,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,-2.317812, 3.620700;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftShoulder}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.562549, 0.573350, 0.416015,-0.426309;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;17.399500,24.614185, 1.157894;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.917802, 0.385808,-0.067844,-0.064720;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,19.910404,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftForeArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.889668, 0.151847, 0.098464, 0.419212;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000002,49.301304, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHand}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.926807,-0.354034,-0.056108, 0.111985;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,31.604698,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.915121, 0.185072, 0.036731, 0.356303;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-7.059603, 6.094490, 4.397205;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.967245, 0.106730, 0.229239,-0.022256;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001, 7.536500, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandThumb3}
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
      0;3;-0.000006, 7.512298, 0.000001;;;
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
      0;3; 0.000000,10.212399, 0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.991522, 0.082497,-0.009727, 0.099924;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-6.192904,21.271086, 0.498702;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.976498, 0.215474,-0.004441, 0.001603;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001, 7.536500,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex3}
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
      0;3; 0.000005, 7.512295, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandIndex4}
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
      0;3;-0.000002,10.212399, 0.000015;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.992348, 0.123381,-0.002590,-0.003947;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.016499,23.334385, 0.008603;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.986887, 0.161017,-0.003404, 0.010749;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000004, 6.996595, 0.000003;;;
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
      0;3;-0.000002, 7.016009, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandMiddle4}
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
      0;3;-0.000004, 7.721601, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.970139, 0.203661, 0.001760,-0.131718;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 6.516901,22.686594, 0.103598;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.984301, 0.175523, 0.002187, 0.018415;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002, 6.408600,-0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing3}
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
      0;3;-0.000002, 6.150301,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandRing4}
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
      0;3; 0.000002, 6.145398,-0.000011;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.952066, 0.182056, 0.008973,-0.245651;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;11.443205,18.881195, 0.461808;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.963304, 0.263635, 0.010699, 0.049262;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000002, 4.919593, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky3}
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
      0;3;-0.000004, 5.232996,-0.000010;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftHandPinky4}
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
      0;3;-0.000010, 5.571697,-0.000013;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightShoulder}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.574567, 0.517657,-0.480032, 0.414093;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-17.399504,24.614294, 1.157894;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.840858, 0.520079, 0.101634, 0.110213;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,19.910408, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightForeArm}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.905831, 0.107314,-0.081173,-0.401702;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002,49.301300, 0.000025;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHand}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.962019,-0.228132,-0.077137,-0.128551;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000004,31.604996, 0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.919761, 0.257021, 0.043447,-0.293413;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 7.059708, 6.093992, 4.396989;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandThumb2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.922560,-0.046687,-0.382782,-0.013499;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000002, 7.536302, 0.000003;;;
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
      0;3;-0.000004, 7.512698,-0.000004;;;
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
      0;3;-0.000005,10.212723,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.988047, 0.079851, 0.023265,-0.129791;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 6.192900,21.270994, 0.499002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.980362, 0.197106, 0.003879, 0.004983;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000002, 7.535992,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex3}
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
      0;3;-0.000008, 7.513003,-0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandIndex4}
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
      0;3;-0.000002,10.212006, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.992303, 0.123043, 0.012471, 0.006286;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.016499,23.333988, 0.008986;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.989752, 0.142642, 0.003301,-0.005688;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000, 6.996987, 0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandMiddle3}
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
      0;3; 0.000008, 7.016010,-0.000004;;;
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
      0;3; 0.000004, 7.720990,-0.000004;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.979396, 0.181844,-0.006248, 0.087617;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-6.516901,22.686003, 0.103991;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.987526, 0.156105,-0.002114,-0.020458;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001, 6.408999, 0.000008;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing3}
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
      0;3;-0.000001, 6.149994, 0.000009;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandRing4}
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
      0;3;-0.000002, 6.145993, 0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.974149, 0.160091,-0.021955, 0.157872;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-11.443201,18.880999, 0.461998;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky2}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.968119, 0.242326,-0.009833,-0.062664;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000001, 4.920002,-0.000007;;;
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
      0;3; 0.000000, 5.232999, 0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightHandPinky4}
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
      0;3; 0.000002, 5.570992,-0.000016;;;
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
      0;3;-1.467303, 5.012918,-18.471128;;;
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
      0;3; 3.884894,-9.462709,-18.584900;;;
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
      0;3;-0.000002,11.039502, 0.000003;;;
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
      0;3;-2.648917,-11.494611,22.195301;;;
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
      0;3; 0.000002,11.039495,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftUpLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.095168, 0.005190,-0.483943,-0.869894;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;19.899096,-7.885092,-3.429498;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.870923,-0.480791, 0.100686,-0.013982;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000002,38.282917, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftFoot}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.935459, 0.324663,-0.033530,-0.135594;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,32.683987,-0.000005;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToeBase}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.826081, 0.539624,-0.076594, 0.143283;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000003,27.100010, 0.000006;;;
    }
  }
  Animation {
    {Armature_mixamorig_LeftToe_End}
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
      0;3;-0.000004,16.631996,-0.000000;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightUpLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.027176, 0.032831,-0.586993,-0.808469;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 0.999999, 0.999999;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-19.899099,-7.884994,-3.429499;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightLeg}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.893870,-0.433057,-0.115891, 0.005308;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001,38.282913,-0.000003;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightFoot}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.940135, 0.327039,-0.007281, 0.095595;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3; 0.000000,32.684063, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_RightToeBase}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.892909, 0.450073,-0.009759, 0.007282;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000001,27.100010, 0.000003;;;
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
      0;3; 0.000002,16.631943, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth1}
    AnimationKey { // Rotation
      0;
      1;
      0;4; 0.000000, 1.000000,-0.000001,-0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,-19.940701,22.170204;;;
    }
  }
  Animation {
    {Armature_mixamorig_FrontCloth2}
    AnimationKey { // Rotation
      0;
      1;
      0;4; 0.000000,-0.000000, 1.000000, 0.000000;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,10.763294,-0.000000;;;
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
      0;3;-0.000000,13.749505, 0.000002;;;
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
      0;3; 0.000000,14.182597, 0.000002;;;
    }
  }
  Animation {
    {Armature_mixamorig_BackCloth1}
    AnimationKey { // Rotation
      0;
      1;
      0;4;-0.707106, 0.000000, 0.000000,-0.707107;;;
    }
    AnimationKey { // Scale
      1;
      1;
      0;3; 1.000000, 1.000000, 1.000000;;;
    }
    AnimationKey { // Position
      2;
      1;
      0;3;-0.000000,-5.419198,-29.326998;;;
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
      0;3;15.308598, 0.000000,-0.000003;;;
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
      0;3;17.777100, 0.000002, 0.000000;;;
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
      0;3;15.545401, 0.000002, 0.000000;;;
    }
  }
} // End of AnimationSet Global
