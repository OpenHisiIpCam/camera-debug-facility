cmake_minimum_required(VERSION 3.10)  
project(application C)               

set(SOURCE_FILES src/main.c)

add_executable(application ${SOURCE_FILES})
target_link_libraries(application uv)
install(TARGETS application DESTINATION /usr/sbin)
