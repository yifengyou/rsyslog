# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/rpmbuild/BUILD/qpid-proton-0.34.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld

# Include any dependencies generated for this target.
include c/examples/CMakeFiles/c-direct.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include c/examples/CMakeFiles/c-direct.dir/compiler_depend.make

# Include the progress variables for this target.
include c/examples/CMakeFiles/c-direct.dir/progress.make

# Include the compile flags for this target's objects.
include c/examples/CMakeFiles/c-direct.dir/flags.make

c/examples/CMakeFiles/c-direct.dir/direct.c.o: c/examples/CMakeFiles/c-direct.dir/flags.make
c/examples/CMakeFiles/c-direct.dir/direct.c.o: ../c/examples/direct.c
c/examples/CMakeFiles/c-direct.dir/direct.c.o: c/examples/CMakeFiles/c-direct.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object c/examples/CMakeFiles/c-direct.dir/direct.c.o"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT c/examples/CMakeFiles/c-direct.dir/direct.c.o -MF CMakeFiles/c-direct.dir/direct.c.o.d -o CMakeFiles/c-direct.dir/direct.c.o -c /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/examples/direct.c

c/examples/CMakeFiles/c-direct.dir/direct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c-direct.dir/direct.c.i"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/examples/direct.c > CMakeFiles/c-direct.dir/direct.c.i

c/examples/CMakeFiles/c-direct.dir/direct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c-direct.dir/direct.c.s"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/examples/direct.c -o CMakeFiles/c-direct.dir/direct.c.s

# Object files for target c-direct
c__direct_OBJECTS = \
"CMakeFiles/c-direct.dir/direct.c.o"

# External object files for target c-direct
c__direct_EXTERNAL_OBJECTS =

c/examples/direct: c/examples/CMakeFiles/c-direct.dir/direct.c.o
c/examples/direct: c/examples/CMakeFiles/c-direct.dir/build.make
c/examples/direct: c/libqpid-proton-proactor.so.1.8.0
c/examples/direct: c/libqpid-proton-core.so.10.11.1
c/examples/direct: c/examples/CMakeFiles/c-direct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable direct"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c-direct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c/examples/CMakeFiles/c-direct.dir/build: c/examples/direct
.PHONY : c/examples/CMakeFiles/c-direct.dir/build

c/examples/CMakeFiles/c-direct.dir/clean:
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples && $(CMAKE_COMMAND) -P CMakeFiles/c-direct.dir/cmake_clean.cmake
.PHONY : c/examples/CMakeFiles/c-direct.dir/clean

c/examples/CMakeFiles/c-direct.dir/depend:
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/rpmbuild/BUILD/qpid-proton-0.34.0 /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/examples /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples/CMakeFiles/c-direct.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c/examples/CMakeFiles/c-direct.dir/depend

