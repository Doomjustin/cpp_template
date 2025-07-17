configure_file(config.cppm.in ${CMAKE_CURRENT_SOURCE_DIR}/config.cppm @ONLY)

add_library(common STATIC)

target_link_libraries(common
    PUBLIC
        externals
)

target_sources(common
    PUBLIC FILE_SET CXX_MODULES
    FILES
        config.cppm
)