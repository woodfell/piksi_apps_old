project (ports_daemon)

set(SRCS
  can.h
  ports.h
  protocols.h
  serial.h
  whitelists.h
  can.c
  ports.c
  ports_daemon.c
  protocols.c
  serial.c
  whitelists.c
	)

add_executable(
		ports_daemon
		${SRCS}
		)

target_link_libraries(
    ports_daemon
    sbp
    piksi
    dl
    socketcan
    settings
    ${LIBUV}
    )

install(
    TARGETS ports_daemon
    DESTINATION bin
    )
