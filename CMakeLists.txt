set(OPENCV_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/lib/opencv_2.3.1 
    ${PROJECT_SOURCE_DIR}/lib/opencv_2.3.1/opencv ${PROJECT_SOURCE_DIR}/lib/opencv_2.3.1/opencv2 )
set(VIS_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/lib/vis)
set(MSGMAP_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/lib/msg_map/src)
include_directories(${MSGMAP_INCLUDE_DIR} ${PROJECT_SOURCE_DIR}/lib ${PROJECT_SOURCE_DIR}/src ${OPENCV_INCLUDE_DIR} ${VIS_INCLUDE_DIR} ${PROJECT_BINARY_DIR}/src)
link_directories (${PROJECT_BINARY_DIR}/lib)




find_package(Qt4 REQUIRED)

include(${QT_USE_FILE})
include_directories(${QT_INCLUDES} ${CMAKE_CURRENT_BINARY_DIR} ${SRCDIR}/ui)

#set(MainWindow_UIS ui_mainWindow.h)
set(MainWindow_SRCS MRCViewer.cpp main.cpp)

#qt4_automoc(${MainWindow_SRCS})
qt4_wrap_cpp(MainWindow_MOCS MRCViewer.h)
#qt4_wrap_ui(MainWindow_UIS mainWindow.ui)

add_executable(MRCViewer  ${MainWindow_SRCS} ${MainWindow_MOCS}  ${MainWindow_UIS})
MESSAGE(STATUS "building main")
MESSAGE(STATUS ${RESOURCES_RCC})
target_link_libraries(MRCViewer ${QT_QTCORE_LIBRARY} ${QT_QTGUI_LIBRARY}  mrcimg util core XyzView
			    )
			    
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

			    
add_subdirectory(lib)
add_subdirectory(src)
