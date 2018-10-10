# Based on UUV Simulator:
#   https://github.com/uuvsimulator/uuv_simulator

# This is a message to hold data from a DVL sensor (Doppler Velocity Log).
#
# Distances are in [m], velocities in [m/s]
#
# If the covariance is known, it should be filled.
# If it is unknown, it should be set to all zeros.
# If a measurement was invalid, its covariance should be set to -1 so it can be
# disregarded.

Header header

# Measured velocity [m/s] in sensor frame
geometry_msgs/Vector3 velocity

# Row major, xyz axes
float64[9] velocity_covariance

# Bottom range
float64 range

# Instrument reference data
uint8 VELOCITY_REFERENCE_UNKNOWN = 0
uint8 VELOCITY_REFERENCE_WATER = 1
uint8 VELOCITY_REFERENCE_BOTTOM = 2

uint8 velocity_reference

# DVLBeams are optional. If they are set they contain individual ranges and 1D
# doppler velocity estimates orthogonal to the ray.
DVLBeam[] beams