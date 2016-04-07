#ifndef IMG_UTIL_H__
#define IMG_UTIL_H__

#include "util/exception.h"
#include <set>
#include <ostream>
#include "highgui.h"
#include "cxcore.h"
#include "cv.h"

namespace util{
    
inline void DrawX(IplImage* img, int x, int y)
{
    CvScalar color = CV_RGB(255, 255, 255);
    int r = 3;
    cvLine( img, cvPoint( x - r, y - r), cvPoint( x + r, y + r), color, 3, 8, 0 );
    cvLine( img, cvPoint( x + r, y - r), cvPoint( x - r, y + r), color, 3, 8, 0 );
}

inline void SaveImage(const IplImage* img, const char* filename){
    EX_TRACE("Save Image %s\n", filename)
    IplImage* copy = cvCreateImage(cvSize(img->width, img->height)/*cvGetSize(img)*/, IPL_DEPTH_8U, 1);
    float* src = (float*)img->imageData;
    char* start = (char*)copy->imageData;
    char* end = start + img->width*img->height;
    
    while(start != end){
	*start++ = (*src++)*255;
    }
    
    cvSaveImage(filename, copy);
    cvReleaseImage(&copy);
}

// 	cvErode( img, img, NULL, 5);
//      cvDilate(img, img, NULL, 5);

inline void MedianSmooth(IplImage *img)
{
    cvSmooth(img, img, CV_MEDIAN, 5);
}

inline void GaussianSmooth(IplImage *img)
{
    cvSmooth(img, img, CV_GAUSSIAN, 5);
}

inline void HistogramStretch(IplImage *img)  
{
#define HISTOGRAM_BIN		256
    cv::Mat mat(img, 0);
    double minimum, maximum;
    cvMinMaxLoc(img, &minimum, &maximum);
    minimum = minimum<0?minimum:0;
    maximum = maximum>1?maximum:1;
    float range[] = {minimum, maximum};
    const float* ranges = {range};
    cv::Mat hist;
    const int channel = 0;
    const int binsize = HISTOGRAM_BIN;
    cv::calcHist(&mat, 1, &channel, cv::Mat(), hist, 1, &binsize, &ranges);	/*warning: if has some problem, look here */
    cv::normalize(hist, hist, 1, 0, CV_L1);
    float* vlu = (float*)hist.data;
    
    for(int i = 1; i < HISTOGRAM_BIN; i++){
	vlu[i] += vlu[i-1];
    }
    
    float delta = (maximum-minimum)/(HISTOGRAM_BIN);
    
    float res = delta/2/(maximum-minimum);
    for(int x = 0; x < img->height; x++){
	for(int y = 0; y < img->width; y++){
	    int loc = (int)((CV_IMAGE_ELEM(img, float, x, y)-minimum)/delta);
	    CV_IMAGE_ELEM(img, float, x, y) = (maximum-minimum)*(vlu[loc]+delta)+minimum;
	}
    }
}  

void ConvertTo1(IplImage *img);

void CopyToUChar256(const IplImage *img, IplImage** cpy, int w, int b);

class PixelStatistics{
private:
    std::map<float, int> s_items;
public:
    PixelStatistics(){}
    ~PixelStatistics(){}
    
    void Clear(){ s_items.clear();}
    
    void Take(float val);
    
    int Size(){ return s_items.size();}
    
    void Print(std::ostream& o);
};

void GetPixelStatistics(const IplImage* image, PixelStatistics& pix_sttcs);

void LocalStatisticsStretch(IplImage *img);

inline void LaplaceSharpen(IplImage* img)
{
    CvMat* kernel;
    kernel = cvCreateMat(3,3,CV_32F);
    cvmSet(kernel, 0, 0, 0);
    cvmSet(kernel, 0, 1, -1);
    cvmSet(kernel, 0, 2, 0);
    cvmSet(kernel, 1, 0, -1);
    cvmSet(kernel, 1, 1, 5);
    cvmSet(kernel, 1, 2, -1);
    cvmSet(kernel, 2, 0, 0);
    cvmSet(kernel, 2, 1, -1);
    cvmSet(kernel, 2, 2, 0);

    cvFilter2D(img, img, kernel);
}

inline bool IsSpace(char c)
{
    if (' ' == c || '\t' == c)
        return true;
    return false;
}

inline void Trim(std::string & str)
{
    if (str.empty()) {
        return;
    }
    int i, start_pos, end_pos;
    for (i = 0; i < str.size(); ++i) {
        if (!IsSpace(str[i])) {
            break;
        }
    }
    if (i == str.size()) { // 全部是空白字符串
        str = "";
        return;
    }
    
    start_pos = i;
    
    for (i = str.size() - 1; i >= 0; --i) {
        if (!IsSpace(str[i])) {
            break;
        }
    }
    end_pos = i;
    
    str = str.substr(start_pos, end_pos - start_pos + 1);
}

}

#endif
