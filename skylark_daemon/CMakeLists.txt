project (skylark_daemon)

set(SRCS
    skylark_settings.h
    skylark_daemon.c
    skylark_settings.c
	)

add_executable(
		skylark_daemon
		${SRCS}
		)

target_link_libraries(
		skylark_daemon
    curl
    sbp
    piksi
    network
    settings
    ${LIBUV}
		)

install(
    TARGETS skylark_daemon
    DESTINATION bin
    )
