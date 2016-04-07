
find_package(Qt4 REQUIRED)

include_directories(${QT_INCLUDES} ${CMAKE_CURRENT_BINARY_DIR})
qt4_add_resources(RESOURCES_RCC resource.qrc)
MESSAGE(STATUS "build resource")
MESSAGE(STATUS ${RESOURCES_RCC})

add_library(resource  ${RESOURCES_RCC})
target_link_libraries(resource ${QT_QTCORE_LIBRARY} ${QT_QTGUI_LIBRARY})
