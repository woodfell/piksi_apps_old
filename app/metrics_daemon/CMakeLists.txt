project (metrics_daemon)

set(SRCS
   metrics_daemon.c
	)

add_executable(
    metrics_daemon
		metrics_daemon.h
    sbp.h
		metrics_daemon.c
    sbp.c
		${SRCS}
		)

target_link_libraries(
		metrics_daemon
    sbp
    piksi
    settings
    ${LIBJSONC}
    ${LIBUV}
		)

install(
    TARGETS metrics_daemon
    DESTINATION bin
    )
