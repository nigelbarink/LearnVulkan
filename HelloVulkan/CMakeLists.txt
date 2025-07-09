# project 2
add_executable(HelloVulkan main.cpp)

# linker settings 
target_link_directories( HelloVulkan PUBLIC
    "../libs/GLFW"
    "../libs/glm"
    "../libs/imgui"
    "c:/VulkanSDK/1.4.304.1/Lib"
)

target_include_directories(HelloVulkan PUBLIC 
    "c:/VulkanSDK/1.4.304.1/Include" 
    "../libs"
)

target_link_libraries(HelloVulkan 
  glfw3 
  vulkan-1
)

target_compile_definitions(HelloVulkan PUBLIC $<CONFIG:Release>:NDEBUG) 
target_compile_definitions(HelloVulkan PUBLIC $<CONFIG:Debug>:DEBUG) 
