from test import test1

import numpy as np


if __name__ == '__main__':

    a = np.ones(((10,3)), dtype=int)

    print(a)
    b = test1(a, len(a))
    print(b) # is a memory view
    print(a)

