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
include c/tools/CMakeFiles/msgr-send.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include c/tools/CMakeFiles/msgr-send.dir/compiler_depend.make

# Include the progress variables for this target.
include c/tools/CMakeFiles/msgr-send.dir/progress.make

# Include the compile flags for this target's objects.
include c/tools/CMakeFiles/msgr-send.dir/flags.make

c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.o: c/tools/CMakeFiles/msgr-send.dir/flags.make
c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.o: ../c/tools/msgr-send.c
c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.o: c/tools/CMakeFiles/msgr-send.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.o"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.o -MF CMakeFiles/msgr-send.dir/msgr-send.c.o.d -o CMakeFiles/msgr-send.dir/msgr-send.c.o -c /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tools/msgr-send.c

c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msgr-send.dir/msgr-send.c.i"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tools/msgr-send.c > CMakeFiles/msgr-send.dir/msgr-send.c.i

c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msgr-send.dir/msgr-send.c.s"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tools/msgr-send.c -o CMakeFiles/msgr-send.dir/msgr-send.c.s

c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.o: c/tools/CMakeFiles/msgr-send.dir/flags.make
c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.o: ../c/tools/msgr-common.c
c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.o: c/tools/CMakeFiles/msgr-send.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.o"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.o -MF CMakeFiles/msgr-send.dir/msgr-common.c.o.d -o CMakeFiles/msgr-send.dir/msgr-common.c.o -c /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tools/msgr-common.c

c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msgr-send.dir/msgr-common.c.i"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tools/msgr-common.c > CMakeFiles/msgr-send.dir/msgr-common.c.i

c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msgr-send.dir/msgr-common.c.s"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tools/msgr-common.c -o CMakeFiles/msgr-send.dir/msgr-common.c.s

# Object files for target msgr-send
msgr__send_OBJECTS = \
"CMakeFiles/msgr-send.dir/msgr-send.c.o" \
"CMakeFiles/msgr-send.dir/msgr-common.c.o"

# External object files for target msgr-send
msgr__send_EXTERNAL_OBJECTS =

c/tools/msgr-send: c/tools/CMakeFiles/msgr-send.dir/msgr-send.c.o
c/tools/msgr-send: c/tools/CMakeFiles/msgr-send.dir/msgr-common.c.o
c/tools/msgr-send: c/tools/CMakeFiles/msgr-send.dir/build.make
c/tools/msgr-send: c/libqpid-proton.so.11.13.0
c/tools/msgr-send: c/tools/CMakeFiles/msgr-send.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable msgr-send"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msgr-send.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c/tools/CMakeFiles/msgr-send.dir/build: c/tools/msgr-send
.PHONY : c/tools/CMakeFiles/msgr-send.dir/build

c/tools/CMakeFiles/msgr-send.dir/clean:
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools && $(CMAKE_COMMAND) -P CMakeFiles/msgr-send.dir/cmake_clean.cmake
.PHONY : c/tools/CMakeFiles/msgr-send.dir/clean

c/tools/CMakeFiles/msgr-send.dir/depend:
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/rpmbuild/BUILD/qpid-proton-0.34.0 /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tools /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools/CMakeFiles/msgr-send.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c/tools/CMakeFiles/msgr-send.dir/depend

