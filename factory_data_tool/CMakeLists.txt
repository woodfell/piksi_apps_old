project (factory_data_tool)

set(SRCS
  common.h
  compiler.h
  factory_data_tool.c
	)

add_executable(
		factory_data_tool
		${SRCS}
		)

target_link_libraries(
		factory_data_tool
    z
		)
