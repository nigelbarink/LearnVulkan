workspace "LearnVulkan"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    targetdir "%{prj.location}/bin/%{cfg.buildcfg}"
    configurations { "Debug", "Release" }

    include("Hello_vulkan/premake5.lua")
    include("Hello_triangle/premake5.lua")

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"

    filter "system:windows"
        libdirs{
            "libs/GLFW",
            "C:/VulkanSDK/1.3.243.0/Lib"
        }
        includedirs {
            "C:/VulkanSDK/1.3.243.0/Include",
            "libs/"
        }
        links {"glfw3", "vulkan-1"}
        architecture "x64"



    filter "system:linux"
        links {
            "glfw3",
            "vulkan",
            "dl",
            "pthread",
            "X11",
            "Xxf86vm",
            "Xrandr",
            "Xi"
            }


