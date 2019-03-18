#!/bin/sh

if [ -e build];
then
  echo "buildalready exists"
  exit 1
fi

if [ ! -e CMakeLists.txt ];
then
  echo "No CMakeLists.txt"
  exit 1
fi

mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=staging ..
