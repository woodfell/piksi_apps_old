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

find_package(Threads REQUIRED)

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

# Libraries
add_subdirectory(libpiksi)
add_subdirectory(libnetwork)
add_subdirectory(librtcm3_in_protocol)
add_subdirectory(librtcm3_out_protocol)
add_subdirectory(libnmea_protocol)
add_subdirectory(libsbp_protocol)

# Applications
add_subdirectory(csac_daemon)
add_subdirectory(cell_modem_daemon)
add_subdirectory(endpoint_adaptor)
add_subdirectory(endpoint_router)
#add_subdirectory(factory_data_tool)
add_subdirectory(health_daemon)
add_subdirectory(metrics_daemon)
add_subdirectory(network_daemon)
add_subdirectory(ntrip_daemon)
add_subdirectory(nmea_daemon)
add_subdirectory(ota_daemon)
add_subdirectory(pfw_welcome)
add_subdirectory(piksi_system_daemon)
add_subdirectory(ports_daemon)
add_subdirectory(query_config)
add_subdirectory(resource_monitor)
add_subdirectory(sample_daemon)
add_subdirectory(sbp_cli)
add_subdirectory(sbp_fileio_daemon)
add_subdirectory(sbp_nmea_bridge)
add_subdirectory(sbp_rtcm3_bridge)
add_subdirectory(sbp_settings_daemon)
add_subdirectory(skylark_daemon)
