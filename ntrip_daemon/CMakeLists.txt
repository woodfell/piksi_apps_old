project (ntrip_daemon)

set(SRCS
    ntrip_settings.h
    ntrip_daemon.c
    ntrip_settings.c
	)

add_executable(
		ntrip_daemon
		${SRCS}
		)

target_link_libraries(
		ntrip_daemon
    piksi
    settings
		sbp
    network
    curl
    ${CUSTOM_LIBUV}
		)

install(
    TARGETS ntrip_daemon
    DESTINATION bin
    )
