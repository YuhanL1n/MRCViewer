# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Lin/projects/MRCViewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Lin/projects/MRCViewer/build

# Include any dependencies generated for this target.
include mrcimg/CMakeFiles/mrcimg.dir/depend.make

# Include the progress variables for this target.
include mrcimg/CMakeFiles/mrcimg.dir/progress.make

# Include the compile flags for this target's objects.
include mrcimg/CMakeFiles/mrcimg.dir/flags.make

mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o: mrcimg/CMakeFiles/mrcimg.dir/flags.make
mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o: ../mrcimg/GraphUtils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Lin/projects/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/GraphUtils.o -c /home/Lin/projects/MRCViewer/mrcimg/GraphUtils.cpp

mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/GraphUtils.i"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Lin/projects/MRCViewer/mrcimg/GraphUtils.cpp > CMakeFiles/mrcimg.dir/GraphUtils.i

mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/GraphUtils.s"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Lin/projects/MRCViewer/mrcimg/GraphUtils.cpp -o CMakeFiles/mrcimg.dir/GraphUtils.s

mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires:
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires

mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides: mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires
	$(MAKE) -f mrcimg/CMakeFiles/mrcimg.dir/build.make mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides.build
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides

mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides.build: mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o

mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o: mrcimg/CMakeFiles/mrcimg.dir/flags.make
mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o: ../mrcimg/mrcheader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Lin/projects/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/mrcheader.o -c /home/Lin/projects/MRCViewer/mrcimg/mrcheader.cpp

mrcimg/CMakeFiles/mrcimg.dir/mrcheader.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/mrcheader.i"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Lin/projects/MRCViewer/mrcimg/mrcheader.cpp > CMakeFiles/mrcimg.dir/mrcheader.i

mrcimg/CMakeFiles/mrcimg.dir/mrcheader.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/mrcheader.s"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Lin/projects/MRCViewer/mrcimg/mrcheader.cpp -o CMakeFiles/mrcimg.dir/mrcheader.s

mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires:
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires

mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides: mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires
	$(MAKE) -f mrcimg/CMakeFiles/mrcimg.dir/build.make mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides.build
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides

mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides.build: mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o

mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o: mrcimg/CMakeFiles/mrcimg.dir/flags.make
mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o: ../mrcimg/mrc2img.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Lin/projects/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/mrc2img.o -c /home/Lin/projects/MRCViewer/mrcimg/mrc2img.cpp

mrcimg/CMakeFiles/mrcimg.dir/mrc2img.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/mrc2img.i"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Lin/projects/MRCViewer/mrcimg/mrc2img.cpp > CMakeFiles/mrcimg.dir/mrc2img.i

mrcimg/CMakeFiles/mrcimg.dir/mrc2img.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/mrc2img.s"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Lin/projects/MRCViewer/mrcimg/mrc2img.cpp -o CMakeFiles/mrcimg.dir/mrc2img.s

mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires:
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires

mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides: mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires
	$(MAKE) -f mrcimg/CMakeFiles/mrcimg.dir/build.make mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides.build
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides

mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides.build: mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o

mrcimg/CMakeFiles/mrcimg.dir/img_util.o: mrcimg/CMakeFiles/mrcimg.dir/flags.make
mrcimg/CMakeFiles/mrcimg.dir/img_util.o: ../mrcimg/img_util.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Lin/projects/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object mrcimg/CMakeFiles/mrcimg.dir/img_util.o"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/img_util.o -c /home/Lin/projects/MRCViewer/mrcimg/img_util.cpp

mrcimg/CMakeFiles/mrcimg.dir/img_util.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/img_util.i"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Lin/projects/MRCViewer/mrcimg/img_util.cpp > CMakeFiles/mrcimg.dir/img_util.i

mrcimg/CMakeFiles/mrcimg.dir/img_util.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/img_util.s"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Lin/projects/MRCViewer/mrcimg/img_util.cpp -o CMakeFiles/mrcimg.dir/img_util.s

mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires:
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires

mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides: mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires
	$(MAKE) -f mrcimg/CMakeFiles/mrcimg.dir/build.make mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides.build
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides

mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides.build: mrcimg/CMakeFiles/mrcimg.dir/img_util.o

# Object files for target mrcimg
mrcimg_OBJECTS = \
"CMakeFiles/mrcimg.dir/GraphUtils.o" \
"CMakeFiles/mrcimg.dir/mrcheader.o" \
"CMakeFiles/mrcimg.dir/mrc2img.o" \
"CMakeFiles/mrcimg.dir/img_util.o"

# External object files for target mrcimg
mrcimg_EXTERNAL_OBJECTS =

mrcimg/libmrcimg.a: mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o
mrcimg/libmrcimg.a: mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o
mrcimg/libmrcimg.a: mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o
mrcimg/libmrcimg.a: mrcimg/CMakeFiles/mrcimg.dir/img_util.o
mrcimg/libmrcimg.a: mrcimg/CMakeFiles/mrcimg.dir/build.make
mrcimg/libmrcimg.a: mrcimg/CMakeFiles/mrcimg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libmrcimg.a"
	cd /home/Lin/projects/MRCViewer/build/mrcimg && $(CMAKE_COMMAND) -P CMakeFiles/mrcimg.dir/cmake_clean_target.cmake
	cd /home/Lin/projects/MRCViewer/build/mrcimg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mrcimg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mrcimg/CMakeFiles/mrcimg.dir/build: mrcimg/libmrcimg.a
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/build

mrcimg/CMakeFiles/mrcimg.dir/requires: mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires
mrcimg/CMakeFiles/mrcimg.dir/requires: mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires
mrcimg/CMakeFiles/mrcimg.dir/requires: mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires
mrcimg/CMakeFiles/mrcimg.dir/requires: mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/requires

mrcimg/CMakeFiles/mrcimg.dir/clean:
	cd /home/Lin/projects/MRCViewer/build/mrcimg && $(CMAKE_COMMAND) -P CMakeFiles/mrcimg.dir/cmake_clean.cmake
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/clean

mrcimg/CMakeFiles/mrcimg.dir/depend:
	cd /home/Lin/projects/MRCViewer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Lin/projects/MRCViewer /home/Lin/projects/MRCViewer/mrcimg /home/Lin/projects/MRCViewer/build /home/Lin/projects/MRCViewer/build/mrcimg /home/Lin/projects/MRCViewer/build/mrcimg/CMakeFiles/mrcimg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mrcimg/CMakeFiles/mrcimg.dir/depend
