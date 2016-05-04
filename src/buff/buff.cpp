#include "buff.h"
#include <stdlib.h>
#include <malloc.h>
Buff::Buff(util::MrcStack* Vi)
{
	xy1=(Node*)malloc(sizeof(Node));
	xy1->image=NULL;
	xy2=(Node*)malloc(sizeof(Node));
	xy2->image=NULL;
	xy3=(Node*)malloc(sizeof(Node));
	xy3->image=NULL;
	xy1->next=xy2;
	xy2->next=xy3;
	xy3->next=xy1;
	xy1->prep=xy3;
	xy3->prep=xy2;
	xy2->prep=xy1;
	
	yz1=(Node*)malloc(sizeof(Node));
	yz1->image=NULL;
	yz2=(Node*)malloc(sizeof(Node));
	yz2->image=NULL;
	yz3=(Node*)malloc(sizeof(Node));
	yz3->image=NULL;
	yz1->next=yz2;
	yz2->next=yz3;
	yz3->next=yz1;
	yz1->prep=yz3;
	yz3->prep=yz2;
	yz2->prep=yz1;
	
	xz1=(Node*)malloc(sizeof(Node));
	xz1->image=NULL;
	xz2=(Node*)malloc(sizeof(Node));
	xz2->image=NULL;
	xz3=(Node*)malloc(sizeof(Node));
	xz3->image=NULL;
	xz1->next=xz2;
	xz2->next=xz3;
	xz3->next=xz1;
	xz1->prep=xz3;
	xz3->prep=xz2;
	xz2->prep=xz1;
	
	
	Reader=Vi;
	nx=Reader->Width();
	ny=Reader->Height();
	nz=Reader->Size();
	
	LoadXYBuff(xy1,nz/2);
	showXY=xy1;
	UpdateXYBuff();
	
	LoadXZBuff(xz1,0);
	showXZ=xz1;
	UpdateXZBuff();
	
	LoadYZBuff(yz1,0);
	showYZ=yz1;
	UpdateYZBuff();
}
void Buff::LoadXYBuff(Node* n, int index)
{	
	std::cout<<"loadXY"<<std::endl;
	if(n->image!=NULL) {std::cout<<"delete"<<std::endl;delete[] n->image;}
	IplImage* iplimage;
	iplimage = Reader->GetXYIplImage(index);
	IplImage* cpy;
	util::CopyToUChar256(iplimage, &cpy, 255, 0);
	GetDataFromIplimage(cpy , &n->image);	
	cvReleaseImage(&cpy);
	cvReleaseImage(&iplimage);
	n->index=index;
}
void Buff::LoadYZBuff(Node* n, int index)
{
	std::cout<<"loadYZ"<<std::endl;
	if(n->image!=NULL) {std::cout<<"delete"<<std::endl;delete[] n->image;}
	IplImage* iplimage;
	iplimage = Reader->GetYZIplImage(index);
	IplImage* cpy;
	util::CopyToUChar256(iplimage, &cpy, 255, 0);
	GetDataFromIplimage(cpy , &n->image);	
	cvReleaseImage(&cpy);
	cvReleaseImage(&iplimage);
	n->index=index;
}
void Buff::LoadXZBuff(Node* n, int index)
{
	std::cout<<"loadXZ"<<std::endl;
	if(n->image!=NULL) {std::cout<<"delete"<<std::endl;delete[] n->image;}
	IplImage* iplimage;
	iplimage = Reader->GetXZIplImage(index);
	IplImage* cpy;
	util::CopyToUChar256(iplimage, &cpy, 255, 0);
	GetDataFromIplimage(cpy , &n->image);	
	cvReleaseImage(&cpy);
	cvReleaseImage(&iplimage);
	n->index=index;
}

Buff::~Buff()
{
	delete[]xy1->image;
	delete[]xy2->image;
	delete[]xy3->image;
}

bool Buff::toShowXY(int index)
{
	if(index==showXY->index){
		return true;
	}
	else{		
		if(index==showXY->next->index){		
			showXY=showXY->next;
			UpdateXYBuff();
			return true ;
		}
		else if(index==showXY->prep->index){		
			showXY=showXY->prep;
			UpdateXYBuff();
			return true;
		}
		LoadXYBuff(showXY,index);
		UpdateXYBuff();
		return true;
	}
	
}
bool Buff::toShowXZ(int index)
{
	if(index==showXZ->index){
		return true;
	}
	else{		
		if(index==showXZ->next->index){		
			showXZ=showXZ->next;
			UpdateXZBuff();
			return true ;
		}
		else if(index==showXZ->prep->index){		
			showXZ=showXZ->prep;
			UpdateXZBuff();
			return true;
		}
		LoadXZBuff(showXZ,index);
		UpdateXZBuff();
		return true;
	}
}
bool Buff::toShowYZ(int index)
{
	if(index==showYZ->index){
		return true;
	}
	else{		
		if(index==showYZ->next->index){		
			showYZ=showYZ->next;
			UpdateYZBuff();
			return true ;
		}
		else if(index==showYZ->prep->index){		
			showYZ=showYZ->prep;
			UpdateYZBuff();
			return true;
		}
		LoadYZBuff(showYZ,index);
		UpdateYZBuff();
		return true;
	}
}

void Buff::UpdateXYBuff()
{
	if(showXY->index==0) LoadXYBuff(showXY->prep,nz-1);
	else LoadXYBuff(showXY->prep,showXY->index-1);
	if(showXY->index==nz-1) LoadXYBuff(showXY->next,0);
	else LoadXYBuff(showXY->next,showXY->index+1);
}
void Buff::UpdateXZBuff()
{
	if(showXZ->index==0) LoadXZBuff(showXZ->prep,ny-1);
	else LoadXZBuff(showXZ->prep,showXZ->index-1);
	if(showXZ->index==ny-1) LoadXZBuff(showXZ->next,0);
	else LoadXZBuff(showXZ->next,showXZ->index+1);
}
void Buff::UpdateYZBuff()
{
	if(showYZ->index==0) LoadYZBuff(showYZ->prep,nx-1);
	else LoadYZBuff(showYZ->prep,showYZ->index-1);
	if(showYZ->index==nx-1) LoadYZBuff(showYZ->next,0);
	else LoadYZBuff(showYZ->next,showYZ->index+1);
}
