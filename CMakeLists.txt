cmake_minimum_required(VERSION 3.10)

project (piksi_apps C)

include (GNUInstallDirs)

find_library(LIBUV 
    NAMES libuv.so
    PATHS /usr/local/lib
    )

find_library(LIBJSONC
    NAMES libjson-c.so
    PATHS /usr/local/lib
    )

find_package(Threads REQUIRED)

if(CMAKE_CROSSCOMPILING)
  message(STATUS "Skipping unit tests because we are cross compiling")
else()
  message(STATUS "Enabling unit tests")
  if (EXISTS ${CMAKE_SOURCE_DIR}/third_party/googletest/googletest/CMakeLists.txt)
    add_subdirectory(${CMAKE_SOURCE_DIR}/third_party/googletest/googletest)
    set(GTEST_BOTH_LIBRARIES gtest)
  else()
    find_package(GTest REQUIRED)
  endif()
  enable_testing()
  set(BUILD_UNIT_TESTS TRUE)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/third_party/libswiftnav/CMakeLists.txt)
  add_subdirectory(third_party/libswiftnav)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/third_party/libsbp/c/CMakeLists.txt)
  add_subdirectory(third_party/libsbp/c)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/third_party/libsettings/CMakeLists.txt)
  add_subdirectory(third_party/libsettings)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/third_party/librtcm/c/CMakeLists.txt)
  add_subdirectory(third_party/librtcm/c)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/third_party/gnss-converters/c/CMakeLists.txt)
  add_subdirectory(third_party/gnss-converters/c)
endif()

add_subdirectory(lib)
add_subdirectory(protocol)
add_subdirectory(app)
