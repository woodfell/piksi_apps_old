project (endpoint_adaptor)

set(SRCS
	endpoint_adapter.c
	endpoint_adapter_stdio.c
	endpoint_adapter_file.c
	endpoint_adapter_tcp_listen.c
	endpoint_adapter_tcp_connect.c
	endpoint_adapter_udp_listen.c
	endpoint_adapter_udp_connect.c
	endpoint_adapter_can.c
	)

add_executable(
		endpoint_adaptor
		${SRCS}
		)

target_link_libraries(
		endpoint_adaptor
    piksi
    settings
		sbp
    ${CUSTOM_LIBUV}
    ${CMAKE_THREAD_LIBS_INIT}
		)
