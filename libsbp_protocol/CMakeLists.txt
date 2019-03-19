project (libsbp_protocol)

set (SRCS
    filter_sbp.c
    framer_sbp.c
    info_sbp.c
  )

add_library(
    sbp_protocol SHARED
    ${SRCS}
    )

target_link_libraries(
    sbp_protocol
    piksi
    )

install(
    TARGETS sbp_protocol
    DESTINATION lib
    )

install(
    FILES sbp_router_smoothpose.yml sbp_protocol.yml
    DESTINATION etc/endpoint_router
    )
