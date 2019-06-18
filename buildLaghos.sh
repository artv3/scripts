wget https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods/download/hypre-2.10.0b.tar.gz &&
tar -zxvf hypre-2.10.0b.tar.gz &&
ln -s hypre-2.10.0b hypre &&
cd hypre-2.10.0b/src/ &&
./configure --disable-fortran &&
make -j 3 && 
cd ../.. &&
wget http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-4.0.3.tar.gz &&
tar -zxvf metis-4.0.3.tar.gz &&
cd metis-4.0.3 &&
make -j 3 &&
cd .. &&
ln -s metis-4.0.3 metis-4.0 &&
git clone https://github.com/mfem/mfem.git mfem &&
cd mfem && make pcuda -j && cd ../ &&
git clone https://github.com/GLVis/glvis.git ./glvis &&
cd glvis/ &&
make -j && cd ../ &&
git clone https://github.com/CEED/Laghos.git &&
cd Laghos && make -j
