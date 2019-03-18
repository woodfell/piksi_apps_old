cmake_minimum_required(VERSION 3.10)

project (piksi_apps C)

find_library(LIBUV 
    NAMES libuv.so
    PATHS /usr/local/lib
    )

find_library(LIBJSONC
    NAMES libjson-c.so
    PATHS /usr/local/lib
    )

find_package(Threads)

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

# Libraries
add_subdirectory(libpiksi)
add_subdirectory(libnetwork)

# Applications
add_subdirectory(csac_daemon)
add_subdirectory(cell_modem_daemon)
#add_subdirectory(factory_data_tool)
add_subdirectory(endpoint_adaptor)
add_subdirectory(endpoint_router)
add_subdirectory(health_daemon)
add_subdirectory(metrics_daemon)
add_subdirectory(network_daemon)
add_subdirectory(ntrip_daemon)
add_subdirectory(nmea_daemon)
add_subdirectory(ports_daemon)
add_subdirectory(resource_monitor)
