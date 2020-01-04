#ifndef MY_ALU_H
#define MY_ALU_H

typedef unsigned int uint;

void divu(uint a, uint b, uint *remainer, uint *quotient);
void my_div(int a, int b, int *remainer, int *quotient);
void multu(uint a, uint b, uint *hi, uint *lo);
void mult(int a, int b, int *hi, int *lo);

void divu(
        uint a,
        uint b,
        uint *remainer,
        uint *quotient
){

    uint r, q, i;

    r = 0;
    q = a;
    for(i=0; i<32; i++){
        r = r<<1 | q>>31;
        q = q<<1;
        if(r >= b){
            r = r - b;
            q = q | 0x00000001;
        }
    }

    *remainer = r;
    *quotient = q;
}

void my_div(
        int a,
        int b,
        int *remainer,
        int *quotient
){
    uint a_abs, b_abs;
    uint r, q, i;

    a_abs = (a<0) ? ~a+1: a;
    b_abs = (b<0) ? ~b+1: b;

    r = 0;
    q = a_abs;
    for(i=0; i<32; i++){
        r = r<<1 | q>>31;
        q = q<<1;
        if(r >= b_abs){
            r = r - b_abs;
            q = q | 0x00000001;
        }
    }

    r = (a<0) ? ~r+1: r;
    q = ((a^b)>>31) ? ~q+1: q;

    *remainer = *((int *)&r);
    // *quotient = (a<0 && b>0 || a>0 && b<0) ? ~q+1: q;
    *quotient = *((int *)&q);
}


void multu(
    uint a,
    uint b,
    uint *hi,
    uint *lo
    ){

    uint r, q, i;

    r = 0;
    q = b;
    for(i=0; i<32; i++){
        if((q&0x00000001)!=0){
            r = r + a;
        }
        q = (q >> 1) | (r<<31);
        r = r >> 1;
    }

    *lo = q;
    *hi = r;
}

void mult(
    int a,
    int b,
    int *hi,
    int *lo
    ){

    uint a_abs, b_abs;
    uint r, q, i;

    a_abs = (a<0) ? ~a+1: a;
    b_abs = (b<0) ? ~b+1: b;

    r = 0;
    q = b_abs;
    for(i=0; i<32; i++){
        if((q&0x00000001)!=0){
            r = r + a_abs;
        }
        q = (q >> 1) | (r<<31);
        r = r >> 1;
    }

    if(((a^b)>>31)!=0){
        if(q!=0){   //q != 0x00000000
            q = ~q + 1;
            r = ~r;
        }else{
            r = ~r + 1;
        }
    }

    *lo = *((int *)&q);
    *hi = *((int *)&r);
}
#endif