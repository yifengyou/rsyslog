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
include c/tests/CMakeFiles/c-proactor-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include c/tests/CMakeFiles/c-proactor-test.dir/compiler_depend.make

# Include the progress variables for this target.
include c/tests/CMakeFiles/c-proactor-test.dir/progress.make

# Include the compile flags for this target's objects.
include c/tests/CMakeFiles/c-proactor-test.dir/flags.make

c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.o: c/tests/CMakeFiles/c-proactor-test.dir/flags.make
c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.o: ../c/tests/pn_test.cpp
c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.o: c/tests/CMakeFiles/c-proactor-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.o"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.o -MF CMakeFiles/c-proactor-test.dir/pn_test.cpp.o.d -o CMakeFiles/c-proactor-test.dir/pn_test.cpp.o -c /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/pn_test.cpp

c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c-proactor-test.dir/pn_test.cpp.i"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/pn_test.cpp > CMakeFiles/c-proactor-test.dir/pn_test.cpp.i

c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c-proactor-test.dir/pn_test.cpp.s"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/pn_test.cpp -o CMakeFiles/c-proactor-test.dir/pn_test.cpp.s

c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o: c/tests/CMakeFiles/c-proactor-test.dir/flags.make
c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o: ../c/tests/pn_test_proactor.cpp
c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o: c/tests/CMakeFiles/c-proactor-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o -MF CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o.d -o CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o -c /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/pn_test_proactor.cpp

c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.i"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/pn_test_proactor.cpp > CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.i

c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.s"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/pn_test_proactor.cpp -o CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.s

c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o: c/tests/CMakeFiles/c-proactor-test.dir/flags.make
c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o: ../c/tests/proactor_test.cpp
c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o: c/tests/CMakeFiles/c-proactor-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o -MF CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o.d -o CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o -c /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/proactor_test.cpp

c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c-proactor-test.dir/proactor_test.cpp.i"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/proactor_test.cpp > CMakeFiles/c-proactor-test.dir/proactor_test.cpp.i

c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c-proactor-test.dir/proactor_test.cpp.s"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/proactor_test.cpp -o CMakeFiles/c-proactor-test.dir/proactor_test.cpp.s

# Object files for target c-proactor-test
c__proactor__test_OBJECTS = \
"CMakeFiles/c-proactor-test.dir/pn_test.cpp.o" \
"CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o" \
"CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o"

# External object files for target c-proactor-test
c__proactor__test_EXTERNAL_OBJECTS = \
"/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/CMakeFiles/test_main.dir/test_main.cpp.o"

c/tests/c-proactor-test: c/tests/CMakeFiles/c-proactor-test.dir/pn_test.cpp.o
c/tests/c-proactor-test: c/tests/CMakeFiles/c-proactor-test.dir/pn_test_proactor.cpp.o
c/tests/c-proactor-test: c/tests/CMakeFiles/c-proactor-test.dir/proactor_test.cpp.o
c/tests/c-proactor-test: c/tests/CMakeFiles/test_main.dir/test_main.cpp.o
c/tests/c-proactor-test: c/tests/CMakeFiles/c-proactor-test.dir/build.make
c/tests/c-proactor-test: c/libqpid-proton-proactor.so.1.8.0
c/tests/c-proactor-test: c/libqpid-proton-core.so.10.11.1
c/tests/c-proactor-test: c/tests/CMakeFiles/c-proactor-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable c-proactor-test"
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c-proactor-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c/tests/CMakeFiles/c-proactor-test.dir/build: c/tests/c-proactor-test
.PHONY : c/tests/CMakeFiles/c-proactor-test.dir/build

c/tests/CMakeFiles/c-proactor-test.dir/clean:
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests && $(CMAKE_COMMAND) -P CMakeFiles/c-proactor-test.dir/cmake_clean.cmake
.PHONY : c/tests/CMakeFiles/c-proactor-test.dir/clean

c/tests/CMakeFiles/c-proactor-test.dir/depend:
	cd /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/rpmbuild/BUILD/qpid-proton-0.34.0 /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/CMakeFiles/c-proactor-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c/tests/CMakeFiles/c-proactor-test.dir/depend

