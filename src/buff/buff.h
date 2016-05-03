#ifndef  BUFF_H
#define BUFF_H

#include <cv.hpp>
#include "mrcimg/mrc2img.h"
#include "mrcimg/img_util.h"
typedef struct  Node{
	IplImage * img;
	Node *prep;
	Node *next;
	int index;
	
}Node;

#endif
class Buff{
 
private:
	Node *n1;
	Node *n2;
	Node *n3;
	int nz;
	
public:
	Node *show;
	util::MrcStack *Reader;
	Buff(util::MrcStack* Vi);
	void UpdateBuff();
	void LoadBuff(Node *n,int index);
	void toShow(int index);
	
	
};
