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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lin/MRCViewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lin/MRCViewer/build

# Include any dependencies generated for this target.
include src/mrcimg/CMakeFiles/mrcimg.dir/depend.make

# Include the progress variables for this target.
include src/mrcimg/CMakeFiles/mrcimg.dir/progress.make

# Include the compile flags for this target's objects.
include src/mrcimg/CMakeFiles/mrcimg.dir/flags.make

src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o: src/mrcimg/CMakeFiles/mrcimg.dir/flags.make
src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o: ../src/mrcimg/mrc2img.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lin/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/mrc2img.o -c /home/lin/MRCViewer/src/mrcimg/mrc2img.cpp

src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/mrc2img.i"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lin/MRCViewer/src/mrcimg/mrc2img.cpp > CMakeFiles/mrcimg.dir/mrc2img.i

src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/mrc2img.s"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lin/MRCViewer/src/mrcimg/mrc2img.cpp -o CMakeFiles/mrcimg.dir/mrc2img.s

src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires:
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires

src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides: src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires
	$(MAKE) -f src/mrcimg/CMakeFiles/mrcimg.dir/build.make src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides.build
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides

src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.provides.build: src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o

src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o: src/mrcimg/CMakeFiles/mrcimg.dir/flags.make
src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o: ../src/mrcimg/mrcheader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lin/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/mrcheader.o -c /home/lin/MRCViewer/src/mrcimg/mrcheader.cpp

src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/mrcheader.i"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lin/MRCViewer/src/mrcimg/mrcheader.cpp > CMakeFiles/mrcimg.dir/mrcheader.i

src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/mrcheader.s"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lin/MRCViewer/src/mrcimg/mrcheader.cpp -o CMakeFiles/mrcimg.dir/mrcheader.s

src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires:
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires

src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides: src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires
	$(MAKE) -f src/mrcimg/CMakeFiles/mrcimg.dir/build.make src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides.build
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides

src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.provides.build: src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o

src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o: src/mrcimg/CMakeFiles/mrcimg.dir/flags.make
src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o: ../src/mrcimg/GraphUtils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lin/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/GraphUtils.o -c /home/lin/MRCViewer/src/mrcimg/GraphUtils.cpp

src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/GraphUtils.i"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lin/MRCViewer/src/mrcimg/GraphUtils.cpp > CMakeFiles/mrcimg.dir/GraphUtils.i

src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/GraphUtils.s"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lin/MRCViewer/src/mrcimg/GraphUtils.cpp -o CMakeFiles/mrcimg.dir/GraphUtils.s

src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires:
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires

src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides: src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires
	$(MAKE) -f src/mrcimg/CMakeFiles/mrcimg.dir/build.make src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides.build
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides

src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.provides.build: src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o

src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o: src/mrcimg/CMakeFiles/mrcimg.dir/flags.make
src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o: ../src/mrcimg/img_util.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lin/MRCViewer/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mrcimg.dir/img_util.o -c /home/lin/MRCViewer/src/mrcimg/img_util.cpp

src/mrcimg/CMakeFiles/mrcimg.dir/img_util.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrcimg.dir/img_util.i"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lin/MRCViewer/src/mrcimg/img_util.cpp > CMakeFiles/mrcimg.dir/img_util.i

src/mrcimg/CMakeFiles/mrcimg.dir/img_util.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrcimg.dir/img_util.s"
	cd /home/lin/MRCViewer/build/src/mrcimg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lin/MRCViewer/src/mrcimg/img_util.cpp -o CMakeFiles/mrcimg.dir/img_util.s

src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires:
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires

src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides: src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires
	$(MAKE) -f src/mrcimg/CMakeFiles/mrcimg.dir/build.make src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides.build
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides

src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.provides.build: src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o

# Object files for target mrcimg
mrcimg_OBJECTS = \
"CMakeFiles/mrcimg.dir/mrc2img.o" \
"CMakeFiles/mrcimg.dir/mrcheader.o" \
"CMakeFiles/mrcimg.dir/GraphUtils.o" \
"CMakeFiles/mrcimg.dir/img_util.o"

# External object files for target mrcimg
mrcimg_EXTERNAL_OBJECTS =

lib/libmrcimg.a: src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o
lib/libmrcimg.a: src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o
lib/libmrcimg.a: src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o
lib/libmrcimg.a: src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o
lib/libmrcimg.a: src/mrcimg/CMakeFiles/mrcimg.dir/build.make
lib/libmrcimg.a: src/mrcimg/CMakeFiles/mrcimg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../lib/libmrcimg.a"
	cd /home/lin/MRCViewer/build/src/mrcimg && $(CMAKE_COMMAND) -P CMakeFiles/mrcimg.dir/cmake_clean_target.cmake
	cd /home/lin/MRCViewer/build/src/mrcimg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mrcimg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/mrcimg/CMakeFiles/mrcimg.dir/build: lib/libmrcimg.a
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/build

src/mrcimg/CMakeFiles/mrcimg.dir/requires: src/mrcimg/CMakeFiles/mrcimg.dir/mrc2img.o.requires
src/mrcimg/CMakeFiles/mrcimg.dir/requires: src/mrcimg/CMakeFiles/mrcimg.dir/mrcheader.o.requires
src/mrcimg/CMakeFiles/mrcimg.dir/requires: src/mrcimg/CMakeFiles/mrcimg.dir/GraphUtils.o.requires
src/mrcimg/CMakeFiles/mrcimg.dir/requires: src/mrcimg/CMakeFiles/mrcimg.dir/img_util.o.requires
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/requires

src/mrcimg/CMakeFiles/mrcimg.dir/clean:
	cd /home/lin/MRCViewer/build/src/mrcimg && $(CMAKE_COMMAND) -P CMakeFiles/mrcimg.dir/cmake_clean.cmake
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/clean

src/mrcimg/CMakeFiles/mrcimg.dir/depend:
	cd /home/lin/MRCViewer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lin/MRCViewer /home/lin/MRCViewer/src/mrcimg /home/lin/MRCViewer/build /home/lin/MRCViewer/build/src/mrcimg /home/lin/MRCViewer/build/src/mrcimg/CMakeFiles/mrcimg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mrcimg/CMakeFiles/mrcimg.dir/depend

