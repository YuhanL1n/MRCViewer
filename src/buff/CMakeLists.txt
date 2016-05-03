
#set(KEYMATCH_SRCS match_core.cpp)
aux_source_directory(. BUFF_SRCS)

MESSAGE(STATUS "building buff")

#find_package(OpenCV REQUIRED)

add_library (buff STATIC ${BUFF_SRCS})

target_link_libraries(buff  opencv_core opencv_imgproc opencv_calib3d opencv_video opencv_features2d 
	opencv_ml opencv_highgui opencv_objdetect opencv_contrib opencv_legacy) #${OpenCV_LIBS})

set_target_properties(buff PROPERTIES OUTPUT_NAME "buff")
set_target_properties(buff PROPERTIES CLEAN_DIRECT_OUTPUT 1)
