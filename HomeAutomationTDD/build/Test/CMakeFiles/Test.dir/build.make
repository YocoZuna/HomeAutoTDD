# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build"

# Include any dependencies generated for this target.
include Test/CMakeFiles/Test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Test/CMakeFiles/Test.dir/compiler_depend.make

# Include the progress variables for this target.
include Test/CMakeFiles/Test.dir/progress.make

# Include the compile flags for this target's objects.
include Test/CMakeFiles/Test.dir/flags.make

Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj: Test/CMakeFiles/Test.dir/flags.make
Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj: Test/CMakeFiles/Test.dir/includes_C.rsp
Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj: C:/Users/Dawid\ Zadlo/Desktop/HomeAutoTDD/HomeAutomationTDD/Test/Src/LightControllerSpy.c
Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj: Test/CMakeFiles/Test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj -MF CMakeFiles\Test.dir\Src\LightControllerSpy.c.obj.d -o CMakeFiles\Test.dir\Src\LightControllerSpy.c.obj -c "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\LightControllerSpy.c"

Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Test.dir/Src/LightControllerSpy.c.i"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\LightControllerSpy.c" > CMakeFiles\Test.dir\Src\LightControllerSpy.c.i

Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Test.dir/Src/LightControllerSpy.c.s"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\LightControllerSpy.c" -o CMakeFiles\Test.dir\Src\LightControllerSpy.c.s

Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj: Test/CMakeFiles/Test.dir/flags.make
Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj: Test/CMakeFiles/Test.dir/includes_C.rsp
Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj: C:/Users/Dawid\ Zadlo/Desktop/HomeAutoTDD/HomeAutomationTDD/Test/Src/TimeServiceFake.c
Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj: Test/CMakeFiles/Test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj -MF CMakeFiles\Test.dir\Src\TimeServiceFake.c.obj.d -o CMakeFiles\Test.dir\Src\TimeServiceFake.c.obj -c "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\TimeServiceFake.c"

Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Test.dir/Src/TimeServiceFake.c.i"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\TimeServiceFake.c" > CMakeFiles\Test.dir\Src\TimeServiceFake.c.i

Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Test.dir/Src/TimeServiceFake.c.s"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\TimeServiceFake.c" -o CMakeFiles\Test.dir\Src\TimeServiceFake.c.s

Test/CMakeFiles/Test.dir/Src/LightScheduler.c.obj: Test/CMakeFiles/Test.dir/flags.make
Test/CMakeFiles/Test.dir/Src/LightScheduler.c.obj: Test/CMakeFiles/Test.dir/includes_C.rsp
Test/CMakeFiles/Test.dir/Src/LightScheduler.c.obj: C:/Users/Dawid\ Zadlo/Desktop/HomeAutoTDD/HomeAutomationTDD/Test/Src/LightScheduler.c
Test/CMakeFiles/Test.dir/Src/LightScheduler.c.obj: Test/CMakeFiles/Test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object Test/CMakeFiles/Test.dir/Src/LightScheduler.c.obj"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Test/CMakeFiles/Test.dir/Src/LightScheduler.c.obj -MF CMakeFiles\Test.dir\Src\LightScheduler.c.obj.d -o CMakeFiles\Test.dir\Src\LightScheduler.c.obj -c "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\LightScheduler.c"

Test/CMakeFiles/Test.dir/Src/LightScheduler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Test.dir/Src/LightScheduler.c.i"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\LightScheduler.c" > CMakeFiles\Test.dir\Src\LightScheduler.c.i

Test/CMakeFiles/Test.dir/Src/LightScheduler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Test.dir/Src/LightScheduler.c.s"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test\Src\LightScheduler.c" -o CMakeFiles\Test.dir\Src\LightScheduler.c.s

# Object files for target Test
Test_OBJECTS = \
"CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj" \
"CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj" \
"CMakeFiles/Test.dir/Src/LightScheduler.c.obj"

# External object files for target Test
Test_EXTERNAL_OBJECTS =

Test/libTest.a: Test/CMakeFiles/Test.dir/Src/LightControllerSpy.c.obj
Test/libTest.a: Test/CMakeFiles/Test.dir/Src/TimeServiceFake.c.obj
Test/libTest.a: Test/CMakeFiles/Test.dir/Src/LightScheduler.c.obj
Test/libTest.a: Test/CMakeFiles/Test.dir/build.make
Test/libTest.a: Test/CMakeFiles/Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libTest.a"
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && $(CMAKE_COMMAND) -P CMakeFiles\Test.dir\cmake_clean_target.cmake
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Test/CMakeFiles/Test.dir/build: Test/libTest.a
.PHONY : Test/CMakeFiles/Test.dir/build

Test/CMakeFiles/Test.dir/clean:
	cd /d C:\Users\DAWIDZ~1\Desktop\HOMEAU~2\HOMEAU~1\build\Test && $(CMAKE_COMMAND) -P CMakeFiles\Test.dir\cmake_clean.cmake
.PHONY : Test/CMakeFiles/Test.dir/clean

Test/CMakeFiles/Test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD" "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\Test" "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build" "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build\Test" "C:\Users\Dawid Zadlo\Desktop\HomeAutoTDD\HomeAutomationTDD\build\Test\CMakeFiles\Test.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : Test/CMakeFiles/Test.dir/depend

