project (piksi_system_daemon)

set(SRCS
   main.c
	)

add_executable(
		piksi_system_daemon
		${SRCS}
		)

target_link_libraries(
		piksi_system_daemon
    sbp
    piksi
    dl
    settings
    ${LIBUV}
		)

install(
    TARGETS piksi_system_daemon
    DESTINATION bin
    )
