# Single scan from a side scan sonar

Header header                    # timestamp in the header is the acquisition time of
                                 # the whole beam.
                                 #
                                 # in frame frame_id, angles are measured around
                                 # the positive Z axis (counterclockwise, if Z is up)
                                 # with zero angle being forward along the x axis

float32 horizontal_beam_width    # [rad]
float32 vertical_beam_width      # [rad]
float32 frequency                # in Hz

float32 range_min                # minimum range value [m]
float32 range_max                # maximum range value [m]
float32 range_increment          # range increment [m]

string port_frame_id             # Transducer frame (defined as a TF wrt header frame)
SonarBeam port                   # intensity data for port channel [device-specific units].

string starboard_frame_id        # Transducer frame (defined as a TF wrt header frame)
SonarBeam starboard              # intensity data for starboard channel [device-specific units].