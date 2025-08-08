project "spdlog"
    kind "SharedLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    defines
    {
        "SPDLOG_COMPILED_LIB",
        "SPDLOG_SHARED_LIB",
        "spdlog_EXPORTS"
    }
    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h",
        "include/**.cpp",
        "./**.md"
    }
    includedirs
    {
        "include",
        "bench"
    }