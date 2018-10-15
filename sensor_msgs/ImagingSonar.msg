# Single scan from an imaging sonar

Header header            # timestamp in the header is the acquisition time of
                         # the whole scan.
                         #
                         # in frame frame_id, angles are measured around
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis

float32 angle_min        # start angle of the image [rad]
float32 angle_max        # end angle of the image [rad]
float32 angle_increment  # angular distance between beam centers [rad]

float32 beam_width       # [rad]
float32 elevation_angle  # [rad]
float32 frequency        # [Hz]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]
float32 range_increment  # maximum range value [m]

SonarBeam[] beams        # Imaging sonar data. (Note: first beam corresponds to angle_min direction
                         # while last beam corresponds to angle_max direction.
                         # There are (angle_max - angle_min) / angle_increment + 1 beams.