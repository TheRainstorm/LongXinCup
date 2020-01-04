#include <stdio.h>
#include <stdlib.h>

#include "alu.h"
#include "fpu.h"

typedef unsigned long long ull;

void print_hex32(void *e){
    uint t;
    t = *((uint *)e);
    printf("0x%08x\n", t);
}

void print_hex64(void *e){
    ull t;
    t = *((ull *)e);
    printf("0x%016x\n", t);
}

int main(){
	// /*test divu*/
	// uint a, b, r, q;

	// a = 99;
	// b = 2;
	// divu(a, b, &r, &q);

	// printf("my: %u/%u q:%u r:%u\n", a, b, q, r);
	// printf("ref: q:%u r:%u \n", a/b, a-a/b*b);
	// for(int i=0;i<10000;i++){
	//     a = rand()%(0xffffffff);
	//     b = rand()%(0xffffffff);
	//     divu(a, b, &r, &q);
	//     if(q!=a/b || r!=(a-a/b*b)){
	//         printf("my: %u/%u q:%u r:%u\n", a, b, q, r);
	//         printf("ref: q:%u r:%u\n", a/b, a-a/b*b);
	//     }
	// }

	// /*test div*/
	// int a, b, r, q;

	// a = -12312323;
	// b = 3452452;
	// my_div(a, b, &r, &q);

	// printf("my: %d/%d q:%d r:%d\n", a, b, q, r);
	// printf("ref: q:%d r:%d\n", a/b, a%b);

	// for(int i=0;i<10000;i++){
	//     a = rand()%(0xffffffff);
	//     b = rand()%(0xffffffff);
	//     my_div(a, b, &r, &q);
	//     if(q!=a/b || r!=(a-a/b*b)){
	//         printf("my: %u/%u q:%u r:%u\n", a, b, q, r);
	//         printf("ref: q:%u r:%u\n", a/b, a%b);
	//     }
	// }

	// // /*test mult*/
	// printf("sizeof(long long): %d\n", sizeof(long long));
	// int a, b, hi, lo;
	// int p_ref;

	// a = -1343;
	// b = 123423;

	// p_ref = a * b;
	// mult(a, b, &hi, &lo);
	// print_hex32(&a);
	// print_hex32(&b);
	// print_hex32(&hi);
	// print_hex32(&lo);
	// print_hex32(&p_ref);
	
	// printf("p, p_ref: %d, %d\n", lo, p_ref);

	// for(int i=0;i<10000;i++){
	//     a = rand()%(0xffffffff);
	//     b = rand()%(0xffffffff);
	//     my_div(a, b, &r, &q);
	//     if(q!=a/b || r!=(a-a/b*b)){
	//         printf("my: %u/%u q:%u r:%u\n", a, b, q, r);
	//         printf("ref: q:%u r:%u\n", a/b, a%b);
	//     }
	// }

	// /*test div_s*/
	// float a, b, q, q_ref;
	// int cnt = 0;

	// a = 1e127;
	// b = 1e-126;

	// div_s(a, b, &q);
	// q_ref = a/b;

	// printf("a,b:\n");
	// print_hex32(&a);
	// print_hex32(&b);
	// printf("%f %f\n", a, b);
	// printf("q,q_ref:\n");
	// printf("q:%f q_ref:%f\n", q, q_ref);
	// print_hex32(&q);
	// print_hex32(&q_ref);
	// for(int i=0;i<10000;i++){
	//     a = rand()%(123456789)/123456789.0;
	//     b = rand()%(123456789)/123456789.0;
	//     div_s(a, b, &q);
	//     q_ref = a/b;
	//     // if((q-q_ref)<1e-6 && (q-q_ref)>-1e-6){
	//     // if((q-q_ref)>1e-6 || (q-q_ref)<-1e-6){
	//     if(*((uint *)&q)!=*((uint *)&q_ref)){
	//     	printf("a,b:\n");
	// 		print_hex32(&a);
	// 		print_hex32(&b);
	// 		printf("%f %f\n", a, b);
	// 		printf("q,q_ref:\n");
	// 		printf("q:%f q_ref:%f\n", q, q_ref);
	// 		print_hex32(&q);
	// 		print_hex32(&q_ref);
	// 		cnt+=1;
	//     }
	// }
	// printf("%d\n", cnt);

	// /*test mult_s*/
	// float a, b, res, res_ref;

	// uint t1 = 0x38f3153f;
	// uint t2 = 0x3860ce18;

	// a = *((float *)&t1);
	// b = *((float *)&t2);

	// mult_s(a, b, &res);
	// res_ref = a * b;

	// printf("a,b:\n");
	// print_hex32(&a);
	// print_hex32(&b);
	// printf("%f %f\n", a, b);
	// printf("res,res_ref:\n");
	// printf("res:%.10f res_ref:%.10f\n", res, res_ref);
	// print_hex32(&res);
	// print_hex32(&res_ref);
	// int cnt = 0;
	// for(int i=0;i<10000;i++){
	//     a = rand()%(123456789)/123456789.0;
	//     b = rand()%(123456789)/123456789.0;
	//     mult_s(a, b, &res);
	//     res_ref = a * b;
	//     if(*((uint *)&res)!=*((uint *)&res_ref)){
	//   //   	printf("a,b:\n");
	// 		// print_hex32(&a);
	// 		// print_hex32(&b);
	// 		// printf("%f %f\n", a, b);
	// 		printf("res,res_ref:\n");
	// 		// printf("res:%.10f res_ref:%.10f\n", res, res_ref);
	// 		print_hex32(&res);
	// 		print_hex32(&res_ref);
	// 		cnt+=1;
	//     }
	// }
	// printf("%d\n", cnt);

	/*test add_s, sub_s*/
	float a, b, res, res_ref;

	// uint t1 = 0x38f3153f;
	// uint t2 = 0x3860ce18;

	// a = *((float *)&t1);
	// b = *((float *)&t2);
	a = 1e32;
	b = 1e-32;

	add_s(a, b, &res);
	res_ref = a + b;

	printf("a,b:\n");
	print_hex32(&a);
	print_hex32(&b);
	printf("%f %f\n", a, b);
	printf("res,res_ref:\n");
	printf("res:%f res_ref:%f\n", res, res_ref);
	print_hex32(&res);
	print_hex32(&res_ref);
	int cnt = 0;
	for(int i=0;i<1000;i++){
	    a = rand()%(123456789)/123456789.0;
	    b = rand()%(123456789)/1234589.0;
	    add_s(a, b, &res);
	    res_ref = a + b;
	    if(*((uint *)&res)!=*((uint *)&res_ref)){
	  //   	printf("a,b:\n");
			// print_hex32(&a);
			// print_hex32(&b);
			// printf("%f %f\n", a, b);
			printf("res,res_ref:\n");
			// printf("res:%.10f res_ref:%.10f\n", res, res_ref);
			print_hex32(&res);
			print_hex32(&res_ref);
			cnt+=1;
	    }
	}
	printf("%d\n", cnt);
    return 0;
}