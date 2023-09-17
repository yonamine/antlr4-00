cmake_minimum_required(VERSION 3.25)

project(ANTLR4_01 LANGUAGES C CXX VERSION 0.1.0 DESCRIPTION "Project for ANTLR4-01")

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_C_FLAGS "-w ${CMAKE_C_FLAGS} -g ")
set(CMAKE_CXX_FLAGS "-w ${CMAKE_CXX_FLAGS} -g ")

find_package(fmt)

execute_process(COMMAND antlr4 -Dlanguage=Cpp -visitor -nolistener ${CMAKE_SOURCE_DIR}/assets/antlr4/todo.g4 -o ${CMAKE_SOURCE_DIR}/out/generated/
                WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/assets/antlr4)

file(GLOB_RECURSE SOURCE_FILES "${CMAKE_SOURCE_DIR}/src/**" "${CMAKE_BINARY_DIR}/generated/**")
list(REMOVE_ITEM SOURCE_FILES "${CMAKE_BINARY_DIR}/generated/todo.interp")
list(REMOVE_ITEM SOURCE_FILES "${CMAKE_BINARY_DIR}/generated/todo.tokens")
list(REMOVE_ITEM SOURCE_FILES "${CMAKE_BINARY_DIR}/generated/todo.interp")
list(REMOVE_ITEM SOURCE_FILES "${CMAKE_BINARY_DIR}/generated/todo.tokens")
message(">>>> BEGIN")
foreach(SRC ${SOURCE_FILES})
    message(">>>> ${SRC}")
endforeach()
message(">>>> END")

include_directories("${CMAKE_BINARY_DIR}/generated")

set(BIN_NAME "todo")
add_executable(${BIN_NAME} ${SOURCE_FILES})
target_link_libraries(${BIN_NAME} PUBLIC    antlr4-runtime
                                            fmt::fmt-header-only)
target_include_directories(${BIN_NAME} PUBLIC "/usr/include/antlr4-runtime")
target_compile_features(${BIN_NAME} PRIVATE cxx_std_20)
