cmake_minimum_required(VERSION 3.20)
project(Example)

add_executable(example main.cpp)
# Tried to manually specify libc.a
#target_link_libraries(example
#	$<$<CXX_COMPILER_ID:TI>:libc.a>)

