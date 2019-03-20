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
  if (EXISTS ${CMAKE_SOURCE_DIR}/external/googletest/googletest/CMakeLists.txt)
    add_subdirectory(${CMAKE_SOURCE_DIR}/external/googletest/googletest)
    set(GTEST_BOTH_LIBRARIES gtest)
  else()
    find_package(GTest REQUIRED)
  endif()
  enable_testing()
  set(BUILD_UNIT_TESTS TRUE)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/external/libswiftnav/CMakeLists.txt)
  add_subdirectory(external/libswiftnav)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/external/libsbp/c/CMakeLists.txt)
  add_subdirectory(external/libsbp/c)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/external/libsettings/CMakeLists.txt)
  add_subdirectory(external/libsettings)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/external/librtcm/c/CMakeLists.txt)
  add_subdirectory(external/librtcm/c)
endif()

if (EXISTS ${CMAKE_SOURCE_DIR}/external/gnss-converters/c/CMakeLists.txt)
  add_subdirectory(external/gnss-converters/c)
endif()

add_subdirectory(lib)
add_subdirectory(protocol)
add_subdirectory(app)
