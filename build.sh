rm -rf build
mkdir build && cd build
cmake ..
make
./app

# can add:
# cd ..
# rm -rf build
# to clean up project after building but recommend not to
