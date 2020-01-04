#ifndef FPU_H
#define FPU_H

typedef unsigned int uint;

//IEEE754 单精度浮点数
void div_s(float a, float b, float *result);
void mult_s(float a, float b, float *result);
void add_s(float a, float b, float *result);
void sub_s(float a, float b, float *result);

/*
发现：
在浮点数乘除法中，中间结果多保留1位，舍入按照0舍1入的规则即可与自己的电脑一致。
额外的位数反而会导致不一致(0.5%的比例左右，每次都是它小数多进了一位)。若把代码中注释掉的部分去掉，
即是更高精度的逻辑，div_s和mult_s实现的都是中间结果多保留7位，遇到1000000向靠近的偶数进位的逻辑。
	
而在浮点数加减法中，中间结果则必须实现guard, round, sticky位才能与自己的电脑一致。
如果只用g,r不用sticky，每次错误都是自己少进了一位。
*/
void div_s(
	float a,
	float b,
	float *result
	){
	uint a_ui, b_ui, quotient_ui;
	a_ui = *((uint *)&a);
	b_ui = *((uint *)&b);

	uint sign, f1, f2, r, q;
	int exp1, exp2, e;

	sign = ((a_ui^b_ui)&0x80000000);

	exp1 = (a_ui&0x7f800000)>>23;
	exp2 = (b_ui&0x7f800000)>>23;
	exp1 = exp1 - 127;
	exp2 = exp2 - 127;
	e = exp1 - exp2;

	f1 = (a_ui|0x00800000)&0x00ffffff;	//1.xxx
	f2 = (b_ui|0x00800000)&0x00ffffff;

	r = f1;
	q = 0;
	for(int i=0;i<32;i++){ 		// 看作0.1xxx，共25位，再保留3+4位共32位
		q = q << 1;
		if(r>=f2){
			q = q | 0x00000001;
			r = r - f2;
			r = r << 1;
		}else{
			r = r << 1;
		}
	}
	//z.xxxxgrs1234 //额外增加了4位

	/*保护位，舍入位，粘贴位，靠近偶数舍入*/
	if((q&0x80000000)!=0){	//1.xxxxgrs1234，第32位为1，右规
		q = q >> 1;
		e = e + 1;
	}//0.1xxxgrs1234
	if((q&0x0000007f)>=64){ //入
		q = q >> 7;	 //0.1xxx
		q = q + 1;	//z.1xxx
		if((q&0x01000000)!=0){ //25位为1，再次右规
			e = e + 1;
			q = q >> 1;// 0.1xxx
		}
	// }else if((q&0x0000007f)==64){
	// 	q = q >> 7;
	// 	q = q + (q&0x00000001); //凑成偶数
	// 	if((q&0x01000000)!=0){ //25位为1，右规
	// 		e = e + 1;
	// 		q = q >> 1;
	// 	}
	}else{
		q = q >> 7;
	}
	e = e - 1;

	if(e<-126||e>127){
		printf("overflow in div_s\n");
	}
	e = e + 127;
	e = e<<23;
	q = q & 0x007fffff;
	quotient_ui = 0;
	quotient_ui = (quotient_ui)|sign;
	quotient_ui = (quotient_ui)|e;
	quotient_ui = (quotient_ui)|q;
	*result = *((float *)&quotient_ui);
}

void mult_s(
	float a,
	float b,
	float *result
	){

	uint a_ui, b_ui, res_ui;
	a_ui = *((uint *)&a);
	b_ui = *((uint *)&b);

	uint sign, f1, f2, r, q, i;
	int exp1, exp2, e;

	sign = ((a_ui^b_ui)&0x80000000);

	exp1 = (a_ui&0x7f800000)>>23;
	exp2 = (b_ui&0x7f800000)>>23;
	exp1 = exp1 - 127;
	exp2 = exp2 - 127;
	e = exp1 + exp2;

	f1 = (a_ui|0x00800000)&0x00ffffff;	//1.xxx  24位
	f2 = (b_ui|0x00800000)&0x00ffffff;
	r = 0;
    q = f2;
    for(i=0; i<32; i++){
        if((q&0x00000001)!=0){
            r = r + f1;
        }
        q = (q >> 1) | (r<<31);
        r = r >> 1;
    }
    //zz.xxxyyy 48位
    //zz.xxxgrs1234 32位
    q = ((q&0xffff0000)>>16) | ((r&0x0000ffff)<<16);

    if((q&0x80000000)!=0){ //32位为1，右规
    	e  = e + 1;
    	q = q >> 1;
    }
    //01.xxxgrs1234
    if((q&0x0000007f)>=64){
    	q = q >> 7;
    	q = q + 1;
  //   }else if((q&0x0000007f)==64){
  //   	q = q >> 7;
		// q = q + (q&0x00000001); //凑成偶数
    }else{
    	q = q >> 7;
    }
    //zz.xxx 25位
    if((q&0x00800000)==0){ //24位为0(进位)
    	e  = e + 1;
    	q = q >> 1;
    }

    if(e<-126||e>127){
		printf("overflow in mult_s\n");
	}
	e = e + 127;
	e = e<<23;
	q = q & 0x007fffff;
	res_ui = 0;
	res_ui = (res_ui)|sign;
	res_ui = (res_ui)|e;
	res_ui = (res_ui)|q;
	*result = *((float *)&res_ui);
}

void add_s(
	float a,
	float b,
	float *result
	){

	uint a_ui, b_ui, res_ui;
	uint s1, s2;
	int e1, e2, de, f1, f2;
	uint sticky;

	a_ui = *((uint *)&a);
	b_ui = *((uint *)&b);

	s1 = (a_ui&0x80000000);
	s2 = (b_ui&0x80000000);

	e1 = (a_ui&0x7f800000)>>23;
	e2 = (b_ui&0x7f800000)>>23;

	f1 = (a_ui|0x00800000)&0x00ffffff;	//1.xxx  24位
	f2 = (b_ui|0x00800000)&0x00ffffff;

	if(s1!=0){ //转换成补码
		f1 = ~f1 + 1;
	}
	if(s2!=0){
		f2 = ~f2 + 1;
	}

	if(e1 < e2){	//交换e1, e2  f1, f2
		e1 = e1 ^ e2;
		e2 = e1 ^ e2;
		e1 = e1 ^ e2;

		f1 = f1 ^ f2;
		f2 = f1 ^ f2;
		f1 = f1 ^ f2;
	}

	f1 = f1 << 2;
	f2 = f2 << 2;

	de = e1 - e2;
	if(de >= 24){
		f1 = f1 >> 2;
	}else{
		sticky = (1<<de) - 1;	//00011..1 de个1
		sticky = f2 & sticky;	//移动的位中有1则sticky非0

		f2 = f2 >> de; //SLAV
		f1 = f1 + f2;
		//ssz.xxxgr ss为双符号位
		if((f1&0x0c000000)==0x04000000){	//右规
			e1 = e1 + 1;
			if((f1&0x00000001)!=0) sticky = 1;
			f1 = f1 >> 1;
		}else if((f1&0x0c000000)==0x08000000){	//左规
			e1 = e1 - 1;
			f1 = f1 << 1;
		}
		if((f1&0x00000003)>2 || (sticky!=0 && (f1&0x00000003)==2)){
			f1 = f1 >> 2;
			f1 = f1 + 1;
		}else if((f1&0x00000003)==2){
			f1 = f1 >> 2;
			f1 = f1 + (f1&0x00000001);
		}else{
			f1 = f1 >> 2;
		}
		if((f1&0x03000000)==0x01000000){	//右规
			e1 = e1 + 1;
			f1 = f1 >> 1;
		}else if((f1&0x03000000)==0x02000000){	//左规
			e1 = e1 - 1;
			f1 = f1 << 1;
		}
	}
	//ssz.xxx
	s1 = 0;
	if((f1&0x01000000)!=0){
		f1 = ~f1 + 1;
		s1 = 0x80000000;
	}

    if(e1<-126||e1>127){
		printf("overflow in mult_s\n");
	}
	e1 = e1<<23;
	f1 = f1 & 0x007fffff;
	res_ui = 0;
	res_ui = (res_ui)|s1;
	res_ui = (res_ui)|e1;
	res_ui = (res_ui)|f1;
	*result = *((float *)&res_ui);
}

void sub_s(
	float a,
	float b,
	float *result
	){

	uint t1;
	float t2;
	t1 = *((uint *)&b);
	t1 = t1^0x80000000;	//符号位取反
	t2 = *((float *)&t1);
	add_s(
		a,
		t2,
		result
	);
}
#endif