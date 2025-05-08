require "../export-compile-commands"

workspace "LearnVulkan"
kind "ConsoleApp"
language "C++"
cppdialect "C++17"
architecture "x64"
targetdir "%{prj.location}/bin/%{cfg.buildcfg}"

configurations { "Debug", "Release" }


filter "configurations:Debug"
defines { "DEBUG" }
symbols "On"

filter "configurations:Release"
defines { "NDEBUG" }
optimize "On"

filter "system:windows"
linkoptions {
  "-nodefaultlibs"
}
libdirs {
  "C:/VulkanSDK/1.4.304.1/Lib",
  "libs/GLFW",
}
includedirs {
  "C:/VulkanSDK/1.4.304.1/Include",
  "libs"
}

links {
  "msvcrt",
  "user32",
  "kernel32",
  "libcmt",
  "gdi32",
  "glu32",
  "shell32",
  "opengl32",
  "glfw3",
  "vulkan-1"
}

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

include("HelloVulkan/premake5.lua")
include("HelloTriangle/premake5.lua")
