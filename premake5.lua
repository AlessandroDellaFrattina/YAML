project "YAML"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime (sruntime)
	targetdir (bin)
	objdir (binint)

	includedirs {

		"include"
	}

	files {

		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime (debugruntime)
		symbols (debugsymbols)
		optimize (debugoptimize)

	filter "configurations:Release"
		runtime (releaseruntime)
		symbols (releasesymbols)
		optimize (releaseoptimize)

	filter "configurations:Dist"
		runtime (distruntime)
		symbols (distsymbols)
		optimize (distoptimize)
