project (csac_daemon)

set(SRCS
   csac_daemon.c
	)

add_executable(
		csac_daemon
		${SRCS}
		)

target_link_libraries(
		csac_daemon
    piksi
    settings
		sbp
    gnss_converters
    ${CUSTOM_LIBUV}
		)

install(
    TARGETS csac_daemon
    DESTINATION bin
    )
