cmake_minimum_required(VERSION 4.0)

set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)
set(CMAKE_GENERATOR_PLATFORM x64)

project (LearnVulkan VERSION 1.0.0)

# project 1
add_executable(HelloTriangle)

# linker settings 
target_link_options(HelloTriangle PUBLIC nodefaultlibs)
target_link_directories( HelloTriangle PUBLIC )
target_link_libraries(HelloTriangle msvcrt user32 kernel32 libcmt gdi32 glu32 shell32 opengl32
    glfw3 vulkan-1)

target_include_directories(HelloTriangle PUBLIC "c:/VulkanSDK/1.4.304.1/Include" "libs")

target_compile_definitions(HelloTriangle PUBLIC $<CONFIG:Release>:NDEBUG) 
target_compile_definitions(HelloTriangle PUBLIC $<CONFIG:Debug>:DEBUG) 

# project 2
add_executable(HelloVulkan)

# linker settings 
target_link_options(HelloVulkan PUBLIC nodefaultlibs)
target_include_directories(HelloVulkan PUBLIC "c:/VulkanSDK/1.4.304.1/Include" "libs")
target_link_libraries(HelloVulkan msvcrt user32 kernel32 libcmt gdi32 glu32 shell32 opengl32
    glfw3 vulkan-1)

target_compile_definitions(HelloVulkan PUBLIC $<CONFIG:Release>:NDEBUG) 
target_compile_definitions(HelloVulkan PUBLIC $<CONFIG:Debug>:DEBUG) 
