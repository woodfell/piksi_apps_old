project (cell_modem_daemon)

set(SRCS
  at_command_utils.h
  cell_modem_inotify.h
  cell_modem_probe.h
  cell_modem_settings.h
  at_command_utils.c
  cell_modem_daemon.c
  cell_modem_inotify.c
  cell_modem_probe.c
  cell_modem_settings.c
	)

add_executable(
		cell_modem_daemon
		${SRCS}
		)

target_link_libraries(
		cell_modem_daemon
    piksi
    settings
		sbp
    ${CUSTOM_LIBUV}
		)

install(
    TARGETS cell_modem_daemon
    DESTINATION bin
    )
