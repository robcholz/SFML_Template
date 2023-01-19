cmake_minimum_required(VERSION 3.10)
project(SFML_Template)

set(CMAKE_CXX_STANDARD 17)
# set(SOURCE_FILES main.cpp)

add_executable(SFML_Template main.cpp)
#add_executable(Game ${SOURCE_FILES})


# Detect and add SFML
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake_modules" ${CMAKE_MODULE_PATH})
find_package(SFML 2 REQUIRED system window graphics network audio)
if(SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(${PROJECT_NAME} ${SFML_LIBRARIES})
endif()