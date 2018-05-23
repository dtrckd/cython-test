
default:cython

cython:
	python3 setup.py build_ext --inplace

html:
	cython test.pyx -a
