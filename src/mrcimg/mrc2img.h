#ifndef MRC2IMG_H__
#define MRC2IMG_H__

#include "mrcheader.h"
#include <iostream>
#include <string>
#include <fstream>
#include <cxcore.hpp>
#include <cv.hpp>
#include "img_util.h"

namespace util{
    
/** @brief MrcStack; only for MRC of float format. */
class MrcStack{
private:
    MRCheader* header;
    std::string name;
    std::ifstream in;
public:
    float Tilt_axis_rotation_angle;
    
public:
    MrcStack():header(NULL){}
    
    ~MrcStack(){if(header){delete header;}}
    
    bool Open(const char* filename);
    
    void Close(){if(header){in.close(); delete header; header = NULL;}}
    
    IplImage* GetIplImage(int index);
    
    int Size() const{return header->nz;}
    
    int Width() const{return header->nx;}
    
    int Height() const{return header->ny;}
    
    const char* Name() const{return name.c_str();}
    
    const MRCheader& Header() const{return *header;}
    
    void PrintHeader(std::ostream& o = std::cout) const;
    
    bool IsMRC();
    
    bool AnalysLabel(const std::string& label , std::string& key , std::string&  value );
};

}

#endif