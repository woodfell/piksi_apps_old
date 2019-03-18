project (endpoint_router)

set(SRCS
  endpoint_router.h
  endpoint_router_load.h
  endpoint_router_print.h
  endpoint_router.c
  endpoint_router_load.c
  endpoint_router_print.c
	)

add_executable(
		endpoint_router
		${SRCS}
		)

target_link_libraries(
		endpoint_router
    piksi
    settings
		sbp
    cmph
    yaml
    ${CUSTOM_LIBUV}
		)
