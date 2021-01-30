#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define SIZE 1000

int tempTop;
int popped;

struct stack{
  int *score;
  int N;
  int top;
};



struct stack* InitStack(int k)
{   struct stack *T;
    T=(struct stack *)malloc(sizeof(struct stack));
    T->N=k;
    T->top=-1;
    T->score=(int *)malloc(sizeof(int)*k);
    //printf("%d",k);
    return(T);
}



int isFull(struct stack *T)
{
    if(T->top==T->N-1)
    return 1;
    return 0;

}
void push(struct stack *T,int x){

    if(isFull(T))
    printf("full %d",T->top);
    else
    {
        T->top++;
        T->score[T->top]=x;
    }
}

int isEmpty(struct stack *T)
{
    if(T->top==-1)
    return 1;
    return 0;

}

int pop(struct stack *T)
{
    if(!(isEmpty(T)))
    {
        popped=T->score[T->top];
        T->top--;
        return popped;
    }
}

void peep(struct stack *T)
{
    printf("\n------------------\n");
    tempTop=T->top;
    while(tempTop>=0)
    {
        printf("%d\n",T->score[tempTop]);
        tempTop--;
    }
    printf("\n------------------\n");
}

int main()
{
    int c_score;
    struct stack *S;
    S=InitStack(SIZE);

    struct stack *TS;
    TS=InitStack(SIZE);

     printf("Enter your Score - ");
    scanf("%d",&c_score);
    push(S,c_score);
    //repeatedly peep all and print as long as stack is not empty
    peep(S);

    /*do{
        printf("Enter your Score - ");
        scanf("%d",&c_score);

        int poppedElement=pop(S);


    }while(true);

}*/





















    while(true)
    {
        printf("Enter your Score - ");
        scanf("%d",&c_score);

        while(!(isEmpty(S)))
        {
            int poppedElement=pop(S);
            while(poppedElement>c_score)
            {
                push(TS,poppedElement);
                if(!(isEmpty(S)))
                {
                    poppedElement=pop(S);
                    continue;
                }
                break;
            }
            //push(S,poppedElement);
            push(S,c_score);
            while(!(isEmpty(TS)))
            {
                poppedElement=pop(TS);
                push(S,poppedElement);
            }
            break;

        }
        peep(S);

    }
    return 0;
}


