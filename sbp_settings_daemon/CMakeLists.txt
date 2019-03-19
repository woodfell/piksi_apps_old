project (sbp_settings_daemon)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(SRCS
    internal/setting.h
    main.c
    setting.c
    settings_sbp_cb.c
	)

add_executable(
		sbp_settings_daemon
		${SRCS}
		)

target_link_libraries(
		sbp_settings_daemon
    sbp
    piksi
    settings
    ${LIBUV}
		)

install(
    TARGETS sbp_settings_daemon
    DESTINATION bin
    )
