module load cmake 

for N in {1..9}
do
  git clone -b simd${N} https://github.com/artv3/RAJA.git RAJA_SIMD${N}
  cd RAJA_SIMD${N} && git submodule init && git submodule update && mkdir build-intel
  cd build-intel && cmake -DCMAKE_CXX_COMPILER=icpc -DCMAKE_C_COMPILER=icc -DCMAKE_INSTALL_PREFIX:PATH=$(pwd) ../
  make -j && make install && cd ../../
done  
