
find_package(Qt4 REQUIRED)

FIND_PACKAGE(OpenGL)
if (OPENGL_FOUND)
   MESSAGE("OpenGL Correctly Found")
endif (OPENGL_FOUND)

add_definitions(${QT_DEFINITIONS})
include_directories(${QT_INCLUDES} ${CMAKE_CURRENT_BINARY_DIR} ${OPENGL_INCLUDE_DIRS} ${PROJECT_BINARY_DIR}/src ${PROJECT_SOURCE_DIR}/src)

SET(QT_USE_QTOPENGL TRUE)
INCLUDE (${QT_USE_FILE})

set(IMAGESHOW_SRCS  imageshow.cpp)

qt4_automoc(${IMAGESHOW_SRCS})
qt4_wrap_cpp(IMAGESHOW_MOC imageshow.h)

LINK_DIRECTORIES(${OPENGL_LIBRARIES})

add_library(ImageShow ${IMAGESHOW_SRCS} ${IMAGESHOW_MOC})

target_link_libraries(ImageShow  ${QT_QTCORE_LIBRARY} ${QT_QTGUI_LIBRARY} ${QT_LIBRARIES} ${OPENGL_LIBRARIES}  
                      ${OPENGL_gl_LIBRARY}  ${OPENGL_glu_LIBRARY} ${OPENGL_glaux_LIBRARY} opencv_core opencv_imgproc opencv_calib3d opencv_video opencv_features2d 
	opencv_ml opencv_highgui opencv_objdetect opencv_contrib opencv_legacy widget resource mrcimg)
	
set_target_properties(ImageShow PROPERTIES OUTPUT_NAME "ImageShow")
set_target_properties(ImageShow PROPERTIES CLEAN_DIRECT_OUTPUT 1)
