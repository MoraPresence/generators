# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\od341\CLionProjects\testGalua

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\od341\CLionProjects\testGalua\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/testGalua.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testGalua.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testGalua.dir/flags.make

CMakeFiles/testGalua.dir/main.c.obj: CMakeFiles/testGalua.dir/flags.make
CMakeFiles/testGalua.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\od341\CLionProjects\testGalua\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testGalua.dir/main.c.obj"
	C:\Users\od341\Desktop\mingw730_64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\testGalua.dir\main.c.obj   -c C:\Users\od341\CLionProjects\testGalua\main.c

CMakeFiles/testGalua.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testGalua.dir/main.c.i"
	C:\Users\od341\Desktop\mingw730_64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\od341\CLionProjects\testGalua\main.c > CMakeFiles\testGalua.dir\main.c.i

CMakeFiles/testGalua.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testGalua.dir/main.c.s"
	C:\Users\od341\Desktop\mingw730_64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\od341\CLionProjects\testGalua\main.c -o CMakeFiles\testGalua.dir\main.c.s

# Object files for target testGalua
testGalua_OBJECTS = \
"CMakeFiles/testGalua.dir/main.c.obj"

# External object files for target testGalua
testGalua_EXTERNAL_OBJECTS =

testGalua.exe: CMakeFiles/testGalua.dir/main.c.obj
testGalua.exe: CMakeFiles/testGalua.dir/build.make
testGalua.exe: CMakeFiles/testGalua.dir/linklibs.rsp
testGalua.exe: CMakeFiles/testGalua.dir/objects1.rsp
testGalua.exe: CMakeFiles/testGalua.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\od341\CLionProjects\testGalua\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testGalua.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testGalua.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testGalua.dir/build: testGalua.exe

.PHONY : CMakeFiles/testGalua.dir/build

CMakeFiles/testGalua.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\testGalua.dir\cmake_clean.cmake
.PHONY : CMakeFiles/testGalua.dir/clean

CMakeFiles/testGalua.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\od341\CLionProjects\testGalua C:\Users\od341\CLionProjects\testGalua C:\Users\od341\CLionProjects\testGalua\cmake-build-debug C:\Users\od341\CLionProjects\testGalua\cmake-build-debug C:\Users\od341\CLionProjects\testGalua\cmake-build-debug\CMakeFiles\testGalua.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testGalua.dir/depend

