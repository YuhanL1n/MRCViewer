
find_package(Qt4 REQUIRED)

include_directories(${QT_INCLUDES} ${CMAKE_CURRENT_BINARY_DIR})

add_executable(test main.cpp)

target_link_libraries(test core custom)
