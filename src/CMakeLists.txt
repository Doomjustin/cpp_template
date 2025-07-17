add_library(externals INTERFACE)

target_link_libraries(externals
    INTERFACE
        Microsoft.GSL::GSL
        fmt::fmt
        spdlog::spdlog
        nlohmann_json::nlohmann_json
        tomlplusplus::tomlplusplus
)

target_compile_definitions(externals
    INTERFACE
        $<$<CONFIG:Debug>:${PROJECT_NAME}_DEBUG>
)

target_compile_features(externals
    INTERFACE
        cxx_std_23
)


add_subdirectory(common)