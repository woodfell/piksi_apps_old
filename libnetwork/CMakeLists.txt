project (libnetwork)

set (HDRS
    libnetwork.h
    )

set (SRCS
    libnetwork.c
    )

add_library(
    network SHARED
    ${SRCS}
    ${HDRS}
    )

target_include_directories(
    network
    PUBLIC ${PROJECT_SOURCE_DIR}
    )

target_link_libraries(
    network
    piksi
    curl
    )

install(
    TARGETS network
    DESTINATION lib
    )

install(
    FILES ${HDRS}
    DESTINATION include
    )
