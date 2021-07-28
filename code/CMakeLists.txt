cmake_minimum_required(VERSION 3.7)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
project(Vulkan_tutorials)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/" {CMAKE_SOURCE_DIR}/thirdParty/tinyobjloader)

add_subdirectory(shaders)
add_subdirectory(stb)
add_subdirectory(tinyobjloader)


set(SHADERS_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR})


find_package(Vulkan REQUIRED FATAL_ERROR) # error
find_package(glm REQUIRED)
find_program(glslc_executable NAMES glslc HINTS Vulkan::glslc)
find_package(glfw3 3.3 REQUIRED)

file(GLOB SOURCE_LIST
${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)

message ("${CMAKE_CURRENT_BINARY_DIR}/:${SOURCE_LIST}")
include_directories(
  ${Vulkan_INCLUDE_DIR}
  
)
foreach(source IN LISTS SOURCE_LIST)
  get_filename_component(FILENAME ${source} NAME_WE)
  add_executable(${FILENAME} ${source})
  target_link_libraries(${FILENAME} 
  ${Vulkan_LIBRARIES}
  ${GLM_LIBRARIES}
  glfw
  STB_lib
  tinyobjloader)
  list(APPEND SPV_SHADERS ${SHADERS_BINARY_DIR}/${FILENAME}.spv)
endforeach()