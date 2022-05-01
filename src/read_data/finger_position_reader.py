import numpy as np


def read_finger_positions_file(finger_position_file: str):
    """
    Reads the finger positions file and returns array of (x,y) coordinates.
    Arguments:
        finger_position_file: path of the forces file to read
    Returns:
        (np.float32, np.float32) numpy ndarray
    """
    return np.loadtxt(
        finger_position_file, dtype={"names": ("cx", "cy"), "formats": ("f", "f")}
    )