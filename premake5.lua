project "cereal"
	kind "StaticLib"
	language "C"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("intermediates/" .. outputdir .. "/%{prj.name}")

	files
	{		
		"include/**.h",
		"include/**.hpp"
	}

	includedirs
	{
		"include"
	}

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"		

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
