(a)FIFO
#include<stdio.h>
#include<stdlib.h>
#define size 10
int n,f,*r,p[size],top=-1;
void push(int);
int main()
{
Iit i,j,k,count=0;
printf(“enter the number of frames\n”);
scanf(“%d”,&f);
printf(“enter length of reference string\n’);
scanf(“%d”,&n);
r=(int *)malloc(n*sizeof(int));
printf(“enter reference string\n”);
for(i=0;i<n;i++)
scanf(“%d”,&r[i]);
for(i=0;i<n;i++)
{
for(j=0;j<f;j++)
{
if(p[j]==r[i])
break;
}
if(j==f)
{
push(r[i]);
count++;
}
printf(“\n%d\t→”,r[i]);
for(k=0;k<f;k++)
printf(“%d\t”,p[k]);
}
printf(“\ntotal number of page faults:%d\n”,count);
return 0;
}
void push(int new)
{
if((top==-1)||(top==(f-1)))
top=0;
else top++;
p[top]=new;
}

OUTPUT
Enter the number of frames
4
Enter the length of reference string
10
Enter the reference string
1 2 4 3 2 5 3 4 2 1
1 → 1 -1 -1 -1
2 → 1 2 -1 -1
4 → 1 2 4 -1
3 → 1 2 4 3
2 → 1 2 4 3
5 → 5 2 4 3
3 → 5 2 4 3
4 → 5 2 4 3
2 → 5 2 4 3
1 → 5 1 4 3
Total number of page faults:6
