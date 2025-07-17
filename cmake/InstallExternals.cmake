include(FetchContent)

set(FETCHCONTENT_BASE_DIR ${CMAKE_SOURCE_DIR}/external)

# fmt
FetchContent_Declare(
	fmt
	GIT_REPOSITORY https://github.com/fmtlib/fmt.git
	GIT_TAG 10.2.1
	GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(fmt)

# spdlog（依赖 fmt）
FetchContent_Declare(
	spdlog
	GIT_REPOSITORY https://github.com/gabime/spdlog.git
	GIT_TAG v1.15.0
	GIT_SHALLOW TRUE
)
set(SPDLOG_FMT_EXTERNAL ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(spdlog)

# Microsoft GSL
FetchContent_Declare(
	GSL
	GIT_REPOSITORY https://github.com/microsoft/GSL.git
	GIT_TAG v4.0.0
	GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(GSL)

# toml++
FetchContent_Declare(
	tomlplusplus
	GIT_REPOSITORY https://github.com/marzer/tomlplusplus.git
	GIT_TAG v3.3.0
	GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(tomlplusplus)

# nlohmann/json（推荐 URL 模式更轻量）
FetchContent_Declare(
	json
	URL https://github.com/nlohmann/json/releases/download/v3.12.0/json.tar.xz
)
FetchContent_MakeAvailable(json)

# Catch2
FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG v3.6.0
  GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(Catch2)
