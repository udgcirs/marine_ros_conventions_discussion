# Single scan from a profiling sonar

Header header            # timestamp in the header is the acquisition time of
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis

float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 beam_width       # in radians. Across track and along track or only one?
float32 frequency        # [Hz]
float32 range_resolution # [% of range error]

float32 time_increment   # For a mechanically scanning sonar this is the time between measurements [seconds]
                         # This will be used in interpolating position of 3d points.
                         # For a multibeam sonar this value should be zero.

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.
