project (sbp_fileio_daemon)

set(DAEMON_SRCS
    main.c
    sbp_fileio.c
    path_validator.c
	)

add_executable(
		sbp_fileio_daemon
		${DAEMON_SRCS}
		)

target_link_libraries(
		sbp_fileio_daemon
    piksi
    settings
		sbp
    ${LIBUV}
		)

set(FLUSH_SRCS
    flush_main.c
    sbp_fileio.c
    path_validator.c
   )

add_executable(
    sbp_fileio_flush
    ${FLUSH_SRCS}
    )

target_link_libraries(
    sbp_fileio_flush
    piksi
    settings
    sbp
    ${LIBUV}
    )

install(
    TARGETS sbp_fileio_daemon sbp_fileio_flush
    DESTINATION bin
    )

if (BUILD_TESTING)
add_executable(
    sbp_fileio_daemon_tests
    ${DAEMON_SRCS}
    test/run_sbp_fileio_daemon_tests.cc
    )

add_test(
    NAME sbp_fileio_daemon_test
    COMMAND sbp_fileio_daemon_test
    WORKING_DIRECTORY test
    )
endif()

