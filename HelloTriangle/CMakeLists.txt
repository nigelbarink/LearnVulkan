# project 1
add_executable(HelloTriangle main.cpp )

# linker settings 
target_link_directories( HelloTriangle PUBLIC
    "../libs/GLFW"
    "../libs/glm"
    "../libs/imgui"
    "c:/VulkanSDK/1.4.304.1/Lib"
)

target_include_directories(HelloTriangle PUBLIC 
    "c:/VulkanSDK/1.4.304.1/Include" 
    "../libs"
)

target_link_libraries(HelloTriangle 
    glfw3 
    vulkan-1
)


target_compile_definitions(HelloTriangle PUBLIC $<CONFIG:Release>:NDEBUG) 
target_compile_definitions(HelloTriangle PUBLIC $<CONFIG:Debug>:DEBUG) 

