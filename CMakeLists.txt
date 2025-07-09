cmake_minimum_required(VERSION 4.0)

set(CMAKE_GENERATOR_PLATFORM x64)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_COMPILER clang)
project (LearnVulkan VERSION 1.0.0)

add_subdirectory(HelloTriangle)
add_subdirectory(HelloVulkan)
