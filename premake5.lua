project "spdlog"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    defines
    {
        "SPDLOG_COMPILED_LIB"
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