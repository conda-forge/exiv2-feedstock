
mkdir build
cd build

cmake ${CMAKE_ARGS} -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D CMAKE_PREFIX_PATH=$PREFIX \
      -D EXIV2_BUILD_SAMPLES=OFF \
      -D EXIV2_ENABLE_INIH=OFF \
      -D CMAKE_INSTALL_LIBDIR=lib \
      ..

make -j$CPU_COUNT
make install

