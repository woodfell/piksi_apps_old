project (libnmea_protocol)

set (SRCS
    info_nmea.c
  )

add_library(
    nmea_protocol SHARED
    ${SRCS}
    )

target_link_libraries(
    nmea_protocol
    piksi
    )

install(
    TARGETS nmea_protocol
    DESTINATION lib
    )

install(
    FILES nmea_protocol.yml
    DESTINATION etc/endpoint_router
    )
