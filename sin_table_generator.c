#define _USE_MATH_DEFINES
#include <math.h>
#include <stdio.h>


void main(void){

unsigned char  DATA_WIDTH;
unsigned int NUMS_PER_CYCLE;


printf("This tool will help you create a VHDL package to be used in creating a sine wave in your FPGA design\r\nPlease enter your preferred Data Width :");
scanf("%d",&DATA_WIDTH);
const int amp = pow(2,DATA_WIDTH-1);
printf("Now enter the number of samples in a single output sine cycle :");
scanf("%d",&NUMS_PER_CYCLE);
const float qlty = (2*M_PI)/NUMS_PER_CYCLE;

/* creating .vhd file */
FILE *fp;
fp = fopen("sin_table.vhd","w");
fprintf(fp,"library IEEE;\nuse IEEE.STD_LOGIC_1164.ALL;\n\n\npackage sin_table is\n\n");
char s_print2 [] = "SIN_TABLE";
fprintf(fp,"constant %s_Length : integer := %d;\n",s_print2,NUMS_PER_CYCLE); 
fprintf(fp,"constant SIN_DATA_WIDTH : integer := %d;\n",DATA_WIDTH); 
fprintf(fp,"type %sType is array(0 to %s_Length-1) of integer;\n",s_print2,s_print2);
fprintf(fp,"constant %s : %sType :=(",s_print2,s_print2);    
for(float i=0;i<((2*M_PI)-qlty);i+=qlty)
{
    fprintf(fp,"%d,",((int)(amp*sin(i))));
}
fprintf(fp,"%d);\r\n",((int)(amp*sin(((2*M_PI)-qlty)))));

/* closing the file */
fprintf(fp,"end sin_table;\n\n");
fprintf(fp,"---- Copy and paste the below code to use the generated package:\n---- use work.sin_table.ALL;");
printf("file created! use the generated package in your design\r\n");

}