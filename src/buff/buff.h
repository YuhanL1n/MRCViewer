#ifndef  BUFF_H
#define BUFF_H

#include <cv.hpp>
#include "mrcimg/mrc2img.h"
#include "mrcimg/img_util.h"
#include "XyzView/func.h"
typedef struct  Node{
	unsigned char *image;
	Node *prep;
	Node *next;
	int index;
	
}Node;

#endif
class Buff{
 
private:
	Node *xy1;
	Node *xy2;
	Node *xy3;
	Node *yz1;
	Node *yz2;
	Node *yz3;
	Node *xz1;
	Node *xz2;
	Node *xz3;
	int nx;
	int ny;
	int nz;
	void UpdateXYBuff();
	void UpdateYZBuff();
	void UpdateXZBuff();
	void LoadXYBuff(Node *n,int index);
	void LoadXZBuff(Node *n,int index);
	void LoadYZBuff(Node *n,int index);
public:
	Node *showXY;
	Node *showYZ;
	Node *showXZ;
	util::MrcStack *Reader;
	Buff(util::MrcStack* Vi);
	~Buff();
	bool toShowXY(int index);
	bool toShowYZ(int index);
	bool toShowXZ(int index);
	
	
};
