
import numpy as np
cimport numpy as np

cimport cython


ctypedef np.int_t INT_t

@cython.boundscheck(False) # turn off bounds-checking for entire function
@cython.wraparound(False)  # turn off negative index wrapping for entire function
#def test1(INT_t[:,:] a,  int b): # it returns a memoryview here
cpdef np.ndarray test1(np.ndarray[INT_t, ndim=2] a,  int b):

    #b = np.linalg.inv(a)
    #print(b)

    cdef int pos = 0
    #print('coucou')
    for i in range(b):
        pos = i
        if pos == 0:
            pos += 1
        a[i,0] += a[pos-1, 0]

    a = a.T
    a = a.dot(a.T)
    return a


