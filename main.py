from test import test1

import numpy as np


if __name__ == '__main__':

    #a = np.ones(((10,3)), dtype=int)
    a  = np.array(([1,3,3],[1,4,3],[1,3,4]))

    print(a)
    b = test1(a, len(a))
    print(b) # is a memory view
    print(a)

