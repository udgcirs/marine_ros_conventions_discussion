# Original from UUV Simulator:
#   https://github.com/uuvsimulator/uuv_simulator

string frame_id           # Beam frame (defined as a TF wrt DVL frame)

float64 range             # measured range [m] or < 0 if invalid
float64 range_covariance

float64 velocity          # measured velocity [m/s] of corr. beam
float64 velocity_covariance

float32 field_of_view     # the size of the arc that the distance reading is
                          # valid for [rad]
                          # the object causing the range reading may have
                          # been anywhere within -field_of_view/2 and
                          # field_of_view/2 at the measured range.
                          # 0 angle corresponds to the x-axis of the sensor.