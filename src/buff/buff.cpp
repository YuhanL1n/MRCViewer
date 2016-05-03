#include "buff.h"
#include <stdlib.h>
#include <malloc.h>
Buff::Buff(util::MrcStack* Vi)
{
	n1=(Node*)malloc(sizeof(Node));
	n2=(Node*)malloc(sizeof(Node));
	n3=(Node*)malloc(sizeof(Node));
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

}
void Buff::toShow(int index)
{
	if(index==show->index){
		return ;
	}
	else{		
		if(index==show->next->index){		
			show=show->next;
			UpdateBuff();
			return ;
		}
		else if(index==show->prep->index){		
			show=show->prep;
			UpdateBuff();
			return ;
		}
		LoadBuff(show,index);
		UpdateBuff();
	}
	

}
void Buff::UpdateBuff()
{

}
