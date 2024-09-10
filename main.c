#define _USE_MATH_DEFINES
#define DATA_WIDTH      8
#define NUMS_PER_CYCLE  128 
#include <math.h>
#include <stdio.h>
void main(void)
{
    const float qlty = (2*M_PI)/NUMS_PER_CYCLE;
    const int amp = pow(2,DATA_WIDTH-1);
    printf("start\r\n");
    /* creating .vhd file */
    FILE *fp;
    fp = fopen("sin_table.vhd","w");
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
    printf("file created! use the generated code in ur design\r\n");
}