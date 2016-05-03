#include "img_util.h"
#include <algorithm>
#include <utility>
#include <iostream>
using namespace std;

void util::PixelStatistics::Take(float val)
{
    std::map<float, int>::iterator i;
    i = s_items.find(val);
    
    if(i != s_items.end()){
	(*i).second++;
    }
    else{
	s_items.insert(std::pair<float, int>(val, 1));
    }
}

void util::PixelStatistics::Print(std::ostream& o)
{
    for(std::map<float, int>::const_iterator i = s_items.begin(); i != s_items.end(); i++){
	o<<(*i).first<<"\t"<<(*i).second<<std::endl;
    }
    o<<std::endl;
}

void util::GetPixelStatistics(const IplImage* image, util::PixelStatistics& pix_sttcs)
{
    float* start = (float*)image->imageData;
    float* end  = start+image->width*image->height;
    while(start != end){
	pix_sttcs.Take(*start++);
    }
}

void util::LocalStatisticsStretch(IplImage* img)
{
#define LENGTH		64//128
#define MARGE		32
    CvScalar mean;
    CvScalar sdv;
//     cvAvgSdv(img, &mean, &sdv);
    IplImage* cpy = cvCreateImage(cvSize(img->width, img->height), IPL_DEPTH_32F, 1);
    cvCopy(img, cpy);
//     float glb_mean = mean.val[0], glb_sdv = sdv.val[0];
//     std::cout<<mean.val[0]<<" "<<sdv.val[0]<<std::endl;
    
    float* ptr = (float*)cpy->imageData;
    
    double minimum = +999999, maximum = -999999;
    
    for(int i = 0; i < img->height; i++){
	for(int j = 0; j < img->width; j++){
	    CvRect rect;
	    rect.x = j-LENGTH;
	    rect.y = i-LENGTH;
	    rect.width = 1+2*LENGTH;
	    rect.height = 1+2*LENGTH;
	    cvSetImageROI(img, rect);	
	    cvAvgSdv(img, &mean, &sdv);
	    cvResetImageROI(img);
	    
// 	    if(mean.val[0] < 0.3*glb_mean && sdv.val[0] > 0.2*glb_sdv/* && sdv.val[0] < 0.6*glb_sdv*/){
// 		*ptr *= glb_mean/mean.val[0];
// 	    }
// 	    else if(mean.val[0] > 1.5*glb_mean && sdv.val[0] > 0.2*glb_sdv/* && sdv.val[0] < 0.6*glb_sdv*/){
// 		*ptr *= glb_mean/mean.val[0];
// 	    }
	    *ptr = *ptr-mean.val[0]/*+glb_mean*/;
	    if(i >= MARGE && i < img->height-MARGE && j >= MARGE && j < img->width-MARGE){
		minimum = *ptr<minimum ? *ptr : minimum;
		maximum = *ptr>maximum ? *ptr : maximum;
	    }
	    ptr++;
// 	    std::cout<<"("<<i<<","<<j<<") "<<mean.val[0]<<" "<<sdv.val[0]<<std::endl;
	}
    }
    
//     cvMinMaxLoc(cpy, &minimum, &maximum);
    std::cout<<minimum<<" "<<maximum<<std::endl;
    
    CvScalar vsc;
    vsc.val[0] = -minimum;
    
    
    cvAddS(cpy, vsc, cpy);
    
    cvConvertScale(cpy, cpy, 1/(maximum-minimum));
    
    cvMinMaxLoc(cpy, &minimum, &maximum);
    std::cout<<minimum<<" "<<maximum<<std::endl;
    cvCopy(cpy, img);
    
    cvReleaseImage(&cpy);
    
}

void util::ConvertTo1(IplImage* img)
{
    double minimum, maximum;
    CvScalar mean, sdv;
    cvAvgSdv(img, &mean, &sdv);
    cvMinMaxLoc(img, &minimum, &maximum);
    
#define CUTOFF (3)
    
    float* ptr = (float*)img->imageData;
    float* end = (float*)img->imageData+img->width*img->height;
    
    maximum = (maximum > mean.val[0]+CUTOFF*sdv.val[0])? mean.val[0]+CUTOFF*sdv.val[0] : maximum;
    minimum = (minimum > mean.val[0]-CUTOFF*sdv.val[0])? minimum : mean.val[0]-CUTOFF*sdv.val[0];    
    
    while(ptr != end){
	if(fabs(*ptr-mean.val[0]) <= CUTOFF*sdv.val[0]){
	    *ptr = (*ptr-minimum)/((maximum-minimum)==0?1:(maximum-minimum));
	}
	else{
	    if(*ptr > mean.val[0]){
		*ptr = 1;
	    }
	    else{
		*ptr = 0;
	    } 
	}
	ptr++;
    }
#undef CUTOFF
}

void util::	CopyToUChar256(const IplImage* img, IplImage** cpy, int w, int b)
{
//     cout<<"CopyToUChar256"<<endl;
    *cpy = cvCreateImage(cvSize(img->width, img->height), IPL_DEPTH_8U, 1);
    double minimum, maximum;
    CvScalar mean, sdv;
    cvAvgSdv(img, &mean, &sdv);
    cvMinMaxLoc(img, &minimum, &maximum);
    
#define CUTOFF (3)//(4)//(5)
    
    float* ptr = (float*)img->imageData;
    float* end = (float*)img->imageData+img->width*img->height;

    uchar* dst = (uchar*)(*cpy)->imageData;
    
    maximum = (maximum > mean.val[0]+CUTOFF*sdv.val[0])? mean.val[0]+CUTOFF*sdv.val[0] : maximum;
    minimum = (minimum > mean.val[0]-CUTOFF*sdv.val[0])? minimum : mean.val[0]-CUTOFF*sdv.val[0];
//     cout<<"1"<<endl;
    while(ptr != end){
	if(fabs(*ptr-mean.val[0]) <= CUTOFF*sdv.val[0]){
	    *dst = (uchar)((*ptr-minimum)*(w-b)/((maximum-minimum)==0?1:(maximum-minimum))+b);
	    *dst = *dst > w ? w : *dst;
	}
	else{
	    if(*ptr > mean.val[0]){
		*dst = w;
	    }
	    else{
		*dst = b;
	    }
	}
	ptr++;
	dst++;
    }
//     cout<<"end"<<endl;
#undef CUTOFF
}
