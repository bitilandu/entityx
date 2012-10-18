# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.9/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.9/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.9/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alec/Projects/entityx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alec/Projects/entityx

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/2.8.9/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/2.8.9/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/local/Cellar/cmake/2.8.9/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/alec/Projects/entityx/CMakeFiles /Users/alec/Projects/entityx/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/alec/Projects/entityx/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named entityx

# Build rule for target.
entityx: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 entityx
.PHONY : entityx

# fast build rule for target.
entityx/fast:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/build
.PHONY : entityx/fast

#=============================================================================
# Target rules for targets named entityx_test

# Build rule for target.
entityx_test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 entityx_test
.PHONY : entityx_test

# fast build rule for target.
entityx_test/fast:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/build
.PHONY : entityx_test/fast

entityx/Components.o: entityx/Components.cc.o
.PHONY : entityx/Components.o

# target to build an object file
entityx/Components.cc.o:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Components.cc.o
.PHONY : entityx/Components.cc.o

entityx/Components.i: entityx/Components.cc.i
.PHONY : entityx/Components.i

# target to preprocess a source file
entityx/Components.cc.i:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Components.cc.i
.PHONY : entityx/Components.cc.i

entityx/Components.s: entityx/Components.cc.s
.PHONY : entityx/Components.s

# target to generate assembly for a file
entityx/Components.cc.s:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Components.cc.s
.PHONY : entityx/Components.cc.s

entityx/Components_test.o: entityx/Components_test.cc.o
.PHONY : entityx/Components_test.o

# target to build an object file
entityx/Components_test.cc.o:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Components_test.cc.o
.PHONY : entityx/Components_test.cc.o

entityx/Components_test.i: entityx/Components_test.cc.i
.PHONY : entityx/Components_test.i

# target to preprocess a source file
entityx/Components_test.cc.i:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Components_test.cc.i
.PHONY : entityx/Components_test.cc.i

entityx/Components_test.s: entityx/Components_test.cc.s
.PHONY : entityx/Components_test.s

# target to generate assembly for a file
entityx/Components_test.cc.s:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Components_test.cc.s
.PHONY : entityx/Components_test.cc.s

entityx/Entity.o: entityx/Entity.cc.o
.PHONY : entityx/Entity.o

# target to build an object file
entityx/Entity.cc.o:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Entity.cc.o
.PHONY : entityx/Entity.cc.o

entityx/Entity.i: entityx/Entity.cc.i
.PHONY : entityx/Entity.i

# target to preprocess a source file
entityx/Entity.cc.i:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Entity.cc.i
.PHONY : entityx/Entity.cc.i

entityx/Entity.s: entityx/Entity.cc.s
.PHONY : entityx/Entity.s

# target to generate assembly for a file
entityx/Entity.cc.s:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Entity.cc.s
.PHONY : entityx/Entity.cc.s

entityx/Entity_test.o: entityx/Entity_test.cc.o
.PHONY : entityx/Entity_test.o

# target to build an object file
entityx/Entity_test.cc.o:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Entity_test.cc.o
.PHONY : entityx/Entity_test.cc.o

entityx/Entity_test.i: entityx/Entity_test.cc.i
.PHONY : entityx/Entity_test.i

# target to preprocess a source file
entityx/Entity_test.cc.i:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Entity_test.cc.i
.PHONY : entityx/Entity_test.cc.i

entityx/Entity_test.s: entityx/Entity_test.cc.s
.PHONY : entityx/Entity_test.s

# target to generate assembly for a file
entityx/Entity_test.cc.s:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Entity_test.cc.s
.PHONY : entityx/Entity_test.cc.s

entityx/Event.o: entityx/Event.cc.o
.PHONY : entityx/Event.o

# target to build an object file
entityx/Event.cc.o:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Event.cc.o
.PHONY : entityx/Event.cc.o

entityx/Event.i: entityx/Event.cc.i
.PHONY : entityx/Event.i

# target to preprocess a source file
entityx/Event.cc.i:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Event.cc.i
.PHONY : entityx/Event.cc.i

entityx/Event.s: entityx/Event.cc.s
.PHONY : entityx/Event.s

# target to generate assembly for a file
entityx/Event.cc.s:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/Event.cc.s
.PHONY : entityx/Event.cc.s

entityx/Event_test.o: entityx/Event_test.cc.o
.PHONY : entityx/Event_test.o

# target to build an object file
entityx/Event_test.cc.o:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Event_test.cc.o
.PHONY : entityx/Event_test.cc.o

entityx/Event_test.i: entityx/Event_test.cc.i
.PHONY : entityx/Event_test.i

# target to preprocess a source file
entityx/Event_test.cc.i:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Event_test.cc.i
.PHONY : entityx/Event_test.cc.i

entityx/Event_test.s: entityx/Event_test.cc.s
.PHONY : entityx/Event_test.s

# target to generate assembly for a file
entityx/Event_test.cc.s:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/Event_test.cc.s
.PHONY : entityx/Event_test.cc.s

entityx/System.o: entityx/System.cc.o
.PHONY : entityx/System.o

# target to build an object file
entityx/System.cc.o:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/System.cc.o
.PHONY : entityx/System.cc.o

entityx/System.i: entityx/System.cc.i
.PHONY : entityx/System.i

# target to preprocess a source file
entityx/System.cc.i:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/System.cc.i
.PHONY : entityx/System.cc.i

entityx/System.s: entityx/System.cc.s
.PHONY : entityx/System.s

# target to generate assembly for a file
entityx/System.cc.s:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/System.cc.s
.PHONY : entityx/System.cc.s

entityx/System_test.o: entityx/System_test.cc.o
.PHONY : entityx/System_test.o

# target to build an object file
entityx/System_test.cc.o:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/System_test.cc.o
.PHONY : entityx/System_test.cc.o

entityx/System_test.i: entityx/System_test.cc.i
.PHONY : entityx/System_test.i

# target to preprocess a source file
entityx/System_test.cc.i:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/System_test.cc.i
.PHONY : entityx/System_test.cc.i

entityx/System_test.s: entityx/System_test.cc.s
.PHONY : entityx/System_test.s

# target to generate assembly for a file
entityx/System_test.cc.s:
	$(MAKE) -f CMakeFiles/entityx_test.dir/build.make CMakeFiles/entityx_test.dir/entityx/System_test.cc.s
.PHONY : entityx/System_test.cc.s

entityx/World.o: entityx/World.cc.o
.PHONY : entityx/World.o

# target to build an object file
entityx/World.cc.o:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/World.cc.o
.PHONY : entityx/World.cc.o

entityx/World.i: entityx/World.cc.i
.PHONY : entityx/World.i

# target to preprocess a source file
entityx/World.cc.i:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/World.cc.i
.PHONY : entityx/World.cc.i

entityx/World.s: entityx/World.cc.s
.PHONY : entityx/World.s

# target to generate assembly for a file
entityx/World.cc.s:
	$(MAKE) -f CMakeFiles/entityx.dir/build.make CMakeFiles/entityx.dir/entityx/World.cc.s
.PHONY : entityx/World.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... entityx"
	@echo "... entityx_test"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... entityx/Components.o"
	@echo "... entityx/Components.i"
	@echo "... entityx/Components.s"
	@echo "... entityx/Components_test.o"
	@echo "... entityx/Components_test.i"
	@echo "... entityx/Components_test.s"
	@echo "... entityx/Entity.o"
	@echo "... entityx/Entity.i"
	@echo "... entityx/Entity.s"
	@echo "... entityx/Entity_test.o"
	@echo "... entityx/Entity_test.i"
	@echo "... entityx/Entity_test.s"
	@echo "... entityx/Event.o"
	@echo "... entityx/Event.i"
	@echo "... entityx/Event.s"
	@echo "... entityx/Event_test.o"
	@echo "... entityx/Event_test.i"
	@echo "... entityx/Event_test.s"
	@echo "... entityx/System.o"
	@echo "... entityx/System.i"
	@echo "... entityx/System.s"
	@echo "... entityx/System_test.o"
	@echo "... entityx/System_test.i"
	@echo "... entityx/System_test.s"
	@echo "... entityx/World.o"
	@echo "... entityx/World.i"
	@echo "... entityx/World.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
