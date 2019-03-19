project (network_daemon)

set(SRCS
    network_daemon.c
	)

add_executable(
		network_daemon
		${SRCS}
		)

target_link_libraries(
		network_daemon
    sbp
    piksi
    settings
    ${LIBUV}
		)

install(
    TARGETS network_daemon
    DESTINATION bin
    )
