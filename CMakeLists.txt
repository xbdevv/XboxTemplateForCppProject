cmake_minimum_required(VERSION 3.8)

set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "" FORCE)
#set(CMAKE_DEBUG_POSTFIX "d")

# Nom du projet passé par un fichier externe ou la ligne de commande
if(NOT DEFINED TARGET_NAME)
    set(TARGET_NAME "TemplateProject")	
endif()


project(${TARGET_NAME})

include(CMake/Config.cmake)
include(CMake/Compiler.cmake)
include(CMake/Scripts/Deploy.cmake)

set(TARGET_SOURCES_SRC "${TARGET_NAME}_SRC")

file(GLOB_RECURSE TMP_SOURCES
    "${CMAKE_CURRENT_SOURCE_DIR}/Src/*.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/Src/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Include/*.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/Libs/*.lib"
)
set(${TARGET_SOURCES_SRC} ${TMP_SOURCES})



#generate a exe
add_executable(${TARGET_NAME} ${${TARGET_SOURCES_SRC}})
target_link_libraries(${TARGET_NAME} ${DEFAULT_STANDARD_LIBRARIES})
