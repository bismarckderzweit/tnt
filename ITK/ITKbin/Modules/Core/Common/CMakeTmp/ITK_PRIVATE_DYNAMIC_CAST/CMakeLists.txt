
cmake_minimum_required(VERSION 2.8.12 FATAL_ERROR)
cmake_policy(VERSION 2.8.12)
project(support_private_dynamic_cast CXX)
add_library(base SHARED "base.cxx")
set_target_properties(base PROPERTIES CXX_VISIBILITY_PRESET hidden)
add_executable(test_cast "main.cxx")
target_link_libraries(test_cast PRIVATE base)
add_custom_command(TARGET test_cast POST_BUILD COMMAND $<TARGET_FILE:test_cast>)
