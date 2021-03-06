mkdir build
cd build

ln -s ../deps/Mask_RCNN ./ || true
cmake \
  -DBOOST_ROOT="/home/charlie/maskfusion/deps/boost" \
  -DOpenCV_DIR="$(pwd)/../deps/opencv/build" \
  -DPangolin_DIR="$(pwd)/../deps/Pangolin/build/src" \
  -DMASKFUSION_PYTHON_VE_PATH="$(pwd)/../../python-environment" \
  -DCUDA_HOST_COMPILER=/usr/bin/gcc \
  -DWITH_FREENECT2=OFF \
  ..

make -j8
