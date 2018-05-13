#-----[Build-type]------
Build-type = CUDA
#Build-type  = CPU


#-----[RAJA and CUDA directories]----
RAJA_DIR ?= /home/arturo/git-repo/RAJA/develop/build
CUDA_DIR ?= /usr/local/cuda-9.0

rajaInc = -I$(RAJA_DIR)/include
rajaLib = $(RAJA_DIR)/lib/libRAJA.a
cudaLib = -Wl,-rpath -Wl,$(CUDA_DIR)/lib64 -L$(CUDA_DIR)/lib64 -lcuda -lcudart -lcudadevrt -lnvToolsExt
#===================================

#---[Host compiler]-----
host-compiler = g++-6
host-compilerFlags = '-O3 -g -std=c++11 -m64 -fopenmp'
compilerFlags = -O3 -g -std=c++11 -m64 -fopenmp
paths = -I ./$(iPath)
paths += $(rajaInc)
linker = $(host-compiler)
#======================

#----[device compiler]----
device-compiler=nvcc
device-flags   = -g -std=c++11 -Xptxas=-v -lineinfo --expt-extended-lambda --restrict
device-flags  += -ccbin=$(linker) -Xcompiler $(host-compilerFlags) -x=cu -arch=sm_50
#======================

#----[Cuda - Compilation]---------
ifeq ($(Build-type),CUDA)
main: main.cpp
	@echo Compiling for CUDA - start
	$(device-compiler) $(device-flags) $(paths) -g -c -o main.o  main.cpp
	$(linker) -o main main.o $(cudaLib) -fopenmp $(rajaLib)
	@echo Compiling for CUDA - end
else
#----[CPU - Compilation]---------
main: main.cpp
	@echo Compiling for CPU - start
	$(host-compiler) $(compilerFlags) $(paths) -g -c -o main main.cpp
	@echo Compiling for CPU - end
endif
#======================



#-----[Clean up]-------
clean:
	rm main
	rm -rf main main.o
