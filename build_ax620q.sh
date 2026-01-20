#!/bin/bash
mkdir -p build_ax620q && cd build_ax620q
cmake ..  \
  -DCHIP_AX630C=ON  \
  -DCMAKE_TOOLCHAIN_FILE=../toolchains/arm-AX620E-linux-uclibcgnueabihf.toolchain.cmake \
  -DCMAKE_INSTALL_PREFIX=../install/ax620q \
  -DCMAKE_BUILD_TYPE=Release  \
  -DBUILD_SHARED_LIBS=OFF \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON  \
  $@
make -j4
make install