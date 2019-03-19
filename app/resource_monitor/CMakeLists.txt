project (resource_monitor)

set(SRCS
  query_sys_state.h
  resmon_common.h
  resource_monitor.h
  resource_query.h
  sbp.h
  query_cpu_usage.c
  query_mem_usage.c
  query_sockets.c
  query_sys_state.c
  resmon_common.c
  resource_monitor.c
  resource_query.c
  sbp.c
	)

add_executable(
		resource_monitor
		${SRCS}
		)

target_link_libraries(
		resource_monitor
    piksi
    settings
		sbp
    m
    ${LIBUV}
		)

install(
    TARGETS resource_monitor
    DESTINATION bin
    )
