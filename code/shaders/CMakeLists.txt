find_program(glslc_executable NAMES glslc HINTS Vulkan::glslc)


set(SHADERS_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(SHADERS_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR})
#make_directory(${SHADERS_BINARY_DIR})
file(GLOB SHADERS
  ${SHADERS_SOURCE_DIR}/*.vert
  ${SHADERS_SOURCE_DIR}/*.frag
  ${SHADERS_SOURCE_DIR}/*.comp
  ${SHADERS_SOURCE_DIR}/*.geom
  ${SHADERS_SOURCE_DIR}/*.tesc
  ${SHADERS_SOURCE_DIR}/*.tese
  ${SHADERS_SOURCE_DIR}/*.mesh
  ${SHADERS_SOURCE_DIR}/*.task
  ${SHADERS_SOURCE_DIR}/*.rgen
  ${SHADERS_SOURCE_DIR}/*.rchit
  ${SHADERS_SOURCE_DIR}/*.rmiss)

add_custom_command(
  COMMAND
    ${CMAKE_COMMAND} -E make_directory ${SHADERS_BINARY_DIR}
  OUTPUT ${SHADERS_BINARY_DIR}
  COMMENT "Creating ${SHADERS_BINARY_DIR}"
)
add_custom_target(make_dir ALL
    DEPENDS ${SHADERS_BINARY_DIR})

foreach(source IN LISTS SHADERS)
  get_filename_component(FILENAME ${source} NAME)
  add_custom_command(
    COMMAND
      ${glslc_executable}
      -o ${SHADERS_BINARY_DIR}/${FILENAME}.spv
      ${source}
    OUTPUT ${SHADERS_BINARY_DIR}/${FILENAME}.spv
    DEPENDS make_dir ${source}
    COMMENT "Compiling ${FILENAME}"
  )
  list(APPEND SPV_SHADERS ${SHADERS_BINARY_DIR}/${FILENAME}.spv)
endforeach()

add_custom_target(shaders ALL DEPENDS ${SPV_SHADERS})
