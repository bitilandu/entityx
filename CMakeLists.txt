cmake_minimum_required(VERSION 2.8)
project(EntityX)
include_directories(${CMAKE_CURRENT_LIST_DIR})

set(ENTITYX_BUILD_TESTING false CACHE BOOL "Enable building of tests.")
set(ENTITYX_RUN_BENCHMARKS false CACHE BOOL "Run benchmarks (in conjunction with -DENTITYX_BUILD_TESTING=1).")
set(ENTITYX_MAX_COMPONENTS 64 CACHE STRING "Set the maximum number of components.")
set(ENTITYX_USE_CPP11_STDLIB false CACHE BOOL "Use the C++11 stdlib (-stdlib=libc++).")
# Check for which shared_ptr implementation to use.
set(ENTITYX_USE_STD_SHARED_PTR false CACHE BOOL "Use std::shared_ptr<T> rather than boost::shared_ptr<T>?")

include(${CMAKE_ROOT}/Modules/CheckIncludeFile.cmake)
include(CheckCXXSourceCompiles)

# Default compiler args
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic -Werror -Wall -Wextra -Wno-unused-parameter -Wno-error=unused-variable -Wno-error=sign-compare -std=c++11")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
set(CMAKE_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g")

# C++11 feature checks
include(CheckCXX11Features.cmake)

# Misc features
check_include_file("stdint.h" HAVE_STDINT_H)

macro(require FEATURE_NAME MESSAGE_STRING)
    if (NOT ${${FEATURE_NAME}})
        message(FATAL_ERROR "${MESSAGE_STRING} required -- ${${FEATURE_NAME}}")
    else()
        message("--   ${MESSAGE_STRING} found")
    endif()
endmacro(require)

macro(create_test TARGET_NAME SOURCE)
    add_executable(${TARGET_NAME} ${SOURCE})
    target_link_libraries(
        ${TARGET_NAME}
        entityx
        gtest
        gtest_main
        ${Boost_LIBRARIES}
        ${Boost_TIMER_LIBRARY}
        ${Boost_SIGNALS_LIBRARY}
        )
    add_test(${TARGET_NAME} ${TARGET_NAME})
endmacro()

if (NOT CMAKE_BUILD_TYPE)
    message("-- Defaulting to release build (use -DCMAKE_BUILD_TYPE:STRING=Debug for debug build)")
    set(CMAKE_BUILD_TYPE "Release")
endif()

message("-- Checking C++ features")
require(HAS_CXX11_AUTO "C++11 auto support")
require(HAS_CXX11_NULLPTR "C++11 nullptr support")
require(HAS_CXX11_RVALUE_REFERENCES "C++11 rvalue reference support")
#require(HAS_CXX11_CSTDINT_H "C++11 stdint support")
require(HAS_CXX11_VARIADIC_TEMPLATES "C++11 variadic templates")
require(HAS_CXX11_RVALUE_REFERENCES "C++11 rvalue references")
require(HAS_CXX11_LONG_LONG "C++11 long long")
require(HAS_CXX11_LONG_LONG "C++11 lambdas")

message("-- Checking misc features")
require(HAVE_STDINT_H "stdint.h")

set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)
find_package(Boost 1.48.0 REQUIRED COMPONENTS signals)
include_directories(${Boost_INCLUDE_DIR})

include(CheckCXX11SharedPtr.cmake)

set(sources entityx/System.cc entityx/Event.cc entityx/Entity.cc entityx/Manager.cc)
add_library(entityx STATIC ${sources})
add_library(entityx_shared SHARED ${sources})
target_link_libraries(
    entityx_shared
    ${Boost_SIGNALS_LIBRARY}
)

set_target_properties(entityx_shared PROPERTIES OUTPUT_NAME entityx)

if (ENTITYX_BUILD_TESTING)
    find_package(Boost 1.48.0 REQUIRED COMPONENTS signals timer system)
    add_subdirectory(gtest-1.6.0)
    include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
    enable_testing()
    create_test(entity_test entityx/Entity_test.cc)
    create_test(event_test entityx/Event_test.cc)
    create_test(system_test entityx/System_test.cc)
    create_test(tags_component_test entityx/tags/TagsComponent_test.cc)
    if (ENTITYX_RUN_BENCHMARKS)
        message("-- Running benchmarks")
        add_definitions(-DGTEST_USE_OWN_TR1_TUPLE=1 -DBOOST_NO_CXX11_NUMERIC_LIMITS=1)
        create_test(benchmarks_test entityx/Benchmarks_test.cc)
    else ()
        message("-- Not running benchmarks (use -DENTITYX_RUN_BENCHMARKS=1 to enable)")
    endif ()
endif (ENTITYX_BUILD_TESTING)

file(GLOB headers "${CMAKE_CURRENT_SOURCE_DIR}/entityx/*.h")

install(
    FILES ${headers}
    DESTINATION "include/entityx"
    )

install(
    TARGETS entityx entityx_shared
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    )
