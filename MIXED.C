#include<stdio.h>
#include<conio.h>
#define MAX 30
void main()
{
	clrscr();
	int i,n,a[MAX],x,newpos,oldpos,u,v;
	printf("Enter the number of elements : ");
	scanf("%d",&n);
	printf("Enter the elements : ");
	for(i=0;i<n;++i)
	{
		scanf("%d",&a[i]);
	}
	printf("Enter the element whose position is to be changed : ");
	scanf("%d",&x);
	printf("Enter the new position for the element : ");
	scanf("%d",&newpos);
	for(i=0;i<n;++i)
	{
		if(a[i]==x)
		{
			oldpos=i;
			break;
		}
	}
	u=a[oldpos];
	v=a[newpos];
	asm {
		mov bx,u
		mov cx,v
		xchg bx,cx
		mov u,bx
		mov v,cx
	}
	a[oldpos]=u;
	a[newpos]=v;
	printf("After Changing : ");
	for(i=0;i<n;++i)
	{
		printf("%d ",a[i]);
	}
	getch();
}