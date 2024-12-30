
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc();

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
   int Array[5]={1,3,5,-4,7};
   for(int i=0;i<5;i++){
    printf("Elements of Array :%d ",Array[i]);
   }
   printf("\n");
   getch();
   printf("The sum of odd numbers is : %d",asmfunc());
   getch();
    return 0;
}