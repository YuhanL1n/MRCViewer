
set(CUSTOM_SRCS custom.cpp)

find_package(Qt4 REQUIRED)

include_directories(${QT_INCLUDES} ${CMAKE_CURRENT_BINARY_DIR})

qt4_automoc(${CUSTOM_SRCS})

add_library(custom STATIC ${CUSTOM_SRCS})
target_link_libraries(custom ${QT_QTCORE_LIBRARY} ${QT_QTGUI_LIBRARY})

set_target_properties(custom PROPERTIES OUTPUT_NAME "custom")
set_target_properties(custom PROPERTIES CLEAN_DIRECT_OUTPUT 1)