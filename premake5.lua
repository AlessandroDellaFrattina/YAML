project "YAML"
	kind "StaticLib"
	language "C++"
  cppdialect "C++17"
  staticruntime "On"
	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

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

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "system:macosx"
		systemversion "12.0"
		pic "On"

	filter "configurations:Debug"
		defines { "VE_DEBUG" }
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines "VE_RELEASE"
		runtime "Release"
		symbols "On"
		optimize "On"

	filter "configurations:Dist"
		defines "VE_DIST"
		runtime "Release"
		optimize "On"
