# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tc/workspace/VulkanTutorial/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tc/workspace/VulkanTutorial/code/build

# Include any dependencies generated for this target.
include CMakeFiles/23_texture_image.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/23_texture_image.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/23_texture_image.dir/flags.make

CMakeFiles/23_texture_image.dir/23_texture_image.cpp.o: CMakeFiles/23_texture_image.dir/flags.make
CMakeFiles/23_texture_image.dir/23_texture_image.cpp.o: ../23_texture_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tc/workspace/VulkanTutorial/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/23_texture_image.dir/23_texture_image.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/23_texture_image.dir/23_texture_image.cpp.o -c /home/tc/workspace/VulkanTutorial/code/23_texture_image.cpp

CMakeFiles/23_texture_image.dir/23_texture_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/23_texture_image.dir/23_texture_image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tc/workspace/VulkanTutorial/code/23_texture_image.cpp > CMakeFiles/23_texture_image.dir/23_texture_image.cpp.i

CMakeFiles/23_texture_image.dir/23_texture_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/23_texture_image.dir/23_texture_image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tc/workspace/VulkanTutorial/code/23_texture_image.cpp -o CMakeFiles/23_texture_image.dir/23_texture_image.cpp.s

# Object files for target 23_texture_image
23_texture_image_OBJECTS = \
"CMakeFiles/23_texture_image.dir/23_texture_image.cpp.o"

# External object files for target 23_texture_image
23_texture_image_EXTERNAL_OBJECTS =

23_texture_image: CMakeFiles/23_texture_image.dir/23_texture_image.cpp.o
23_texture_image: CMakeFiles/23_texture_image.dir/build.make
23_texture_image: /usr/lib/x86_64-linux-gnu/libvulkan.so
23_texture_image: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
23_texture_image: tinyobjloader/libtinyobjloader.a
23_texture_image: CMakeFiles/23_texture_image.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tc/workspace/VulkanTutorial/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 23_texture_image"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/23_texture_image.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/23_texture_image.dir/build: 23_texture_image

.PHONY : CMakeFiles/23_texture_image.dir/build

CMakeFiles/23_texture_image.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/23_texture_image.dir/cmake_clean.cmake
.PHONY : CMakeFiles/23_texture_image.dir/clean

CMakeFiles/23_texture_image.dir/depend:
	cd /home/tc/workspace/VulkanTutorial/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tc/workspace/VulkanTutorial/code /home/tc/workspace/VulkanTutorial/code /home/tc/workspace/VulkanTutorial/code/build /home/tc/workspace/VulkanTutorial/code/build /home/tc/workspace/VulkanTutorial/code/build/CMakeFiles/23_texture_image.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/23_texture_image.dir/depend

