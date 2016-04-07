
find_package(Qt4 REQUIRED)

include(${QT_USE_FILE})
include_directories(${QT_INCLUDES} ${CMAKE_CURRENT_BINARY_DIR}  ${SRCDIR}/ui)

set(ImageViewWindow_SRCS ImageViewWindow.cpp ImgInfo.cpp)
#set(ImageViewWindow_RESOURCES file.qrc)

qt4_automoc(${ImageViewWindow_SRCS})
#qt4_wrap_cpp(ImageViewWindow_MOCS ImageViewWindow.h)
#qt4_add_resources(ImageViewWindow_RESOURCES_RCC ${ImageViewWindow_RESOURCES})

add_library(ImageViewWindow ${ImageViewWindow_SRCS})

#add_executable(ImageViewWindow ${ImageViewWindow_SRCS} ${ImageViewWindow_RESOURCES_RCC} ${ImageViewWindow_MOCS})
target_link_libraries(ImageViewWindow ${QT_QTCORE_LIBRARY} ${QT_QTGUI_LIBRARY} opencv_core opencv_imgproc opencv_calib3d opencv_video opencv_features2d 
	opencv_ml opencv_highgui opencv_objdetect opencv_contrib opencv_legacy widget resource XyzView)

set_target_properties(ImageViewWindow PROPERTIES OUTPUT_NAME "ImageViewWindow")
set_target_properties(ImageViewWindow PROPERTIES CLEAN_DIRECT_OUTPUT 1)
