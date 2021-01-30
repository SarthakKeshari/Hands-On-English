#include<stdio.h>
#include<math.h>

#define no_of_questions 15

int main(){
    int reg;
    printf("Reg = ");
    scanf("%d",&reg);
    int multiplication_factor=(int)(pow(7.0,reg%10));

    for(int x=1;x<=no_of_questions;x++)
    {
        printf("Question number %d\n",((((multiplication_factor*x+reg)%no_of_questions))%no_of_questions+1));
    }

    return 0;
}
