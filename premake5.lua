project "spdlog"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("../../Build/bin/%{prj.name}")
    objdir    ("../../Build/obj/%{prj.name}")

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
        "example/**.h",        
        "example/**.cpp"
    }
    
	includedirs
	{
		"include",
        "bench"
    }

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"