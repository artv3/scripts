module load cmake 
git clone -b simd1 https://github.com/artv3/RAJA.git RAJA_SIMD1 &&
cd RAJA_SIMD1 && git submodule init && git submodule update && mkdir build-intel && cd build-intel
cmake -DCMAKE_CXX_COMPILER=icpc -DCMAKE_C_COMPILER=icc -DCMAKE_INSTALL_PREFIX:PATH=$(pwd) ../
cd ../../



#git clone -b simd2 https://github.com/artv3/RAJA.git RAJA_SIMD2
#git clone -b simd3 https://github.com/artv3/RAJA.git RAJA_SIMD3
#git clone -b simd4 https://github.com/artv3/RAJA.git RAJA_SIMD4
#git clone -b simd5 https://github.com/artv3/RAJA.git RAJA_SIMD5
#git clone -b simd6 https://github.com/artv3/RAJA.git RAJA_SIMD6
#git clone -b simd7 https://github.com/artv3/RAJA.git RAJA_SIMD7
#git clone -b simd8 https://github.com/artv3/RAJA.git RAJA_SIMD8
#git clone -b simd9 https://github.com/artv3/RAJA.git RAJA_SIMD9


