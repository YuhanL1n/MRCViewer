#include "buff.h"
#include <stdlib.h>
#include <malloc.h>
Buff::Buff(util::MrcStack* Vi)
{
	n1=(Node*)malloc(sizeof(Node));
	n1->image=NULL;
	n2=(Node*)malloc(sizeof(Node));
	n2->image=NULL;
	n3=(Node*)malloc(sizeof(Node));
	n3->image=NULL;
	n1->next=n2;
	n2->next=n3;
	n3->next=n1;
	n1->prep=n3;
	n3->prep=n2;
	n2->prep=n1;
	Reader=Vi;
	nz=Reader->Size();
	LoadBuff(n1,nz/2);
	show=n1;
	UpdateBuff();
}
void Buff::LoadBuff(Node* n, int index)
{	
	std::cout<<"load"<<std::endl;
	if(n->image!=NULL) {std::cout<<"delete"<<std::endl;delete[] n->image;}
	IplImage* iplimage;
	iplimage = Reader->GetIplImage(index);
	IplImage* cpy;
	util::CopyToUChar256(iplimage, &cpy, 255, 0);
	GetDataFromIplimage(cpy , &n->image);	
	cvReleaseImage(&cpy);
	cvReleaseImage(&iplimage);
	n->index=index;
}
Buff::~Buff()
{
	delete[]n1->image;
	delete[]n2->image;
	delete[]n3->image;
}

bool Buff::toShow(int index)
{
	if(index==show->index){
		return true;
	}
	else{		
		if(index==show->next->index){		
			show=show->next;
			UpdateBuff();
			return true ;
		}
		else if(index==show->prep->index){		
			show=show->prep;
			UpdateBuff();
			return true;
		}
		LoadBuff(show,index);
		UpdateBuff();
		return true;
	}
	

}
void Buff::UpdateBuff()
{
	if(show->index==0) LoadBuff(show->prep,nz-1);
	else LoadBuff(show->prep,show->index-1);
	if(show->index==nz-1) LoadBuff(show->next,0);
	else LoadBuff(show->next,show->index+1);
}
