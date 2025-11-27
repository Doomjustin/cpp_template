find_package(fmt CONFIG REQUIRED)
find_package(spdlog CONFIG REQUIRED)
find_package(Microsoft.GSL CONFIG REQUIRED)
find_package(tomlplusplus CONFIG REQUIRED)


add_library(dependency INTERFACE)

target_link_libraries(dependency INTERFACE
    fmt::fmt
    spdlog::spdlog
    Microsoft.GSL::GSL
    tomlplusplus::tomlplusplus
)