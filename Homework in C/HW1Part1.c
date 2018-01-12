/* Kion Smith
*  kls160430
*  CS 3377.0W3
*/

#include <stdio.h>

//using defines to set the limits of the bounds
#define UPPER 400
#define LOWER 100

int main(void)
{
	//Initilize a
	int i;
	
	//Print F and space for C
	printf("F\t C\n");

	//Loop from 100 to 400 
	for(int i=LOWER;i<=UPPER;i++)
	{
		//Print out the current number in F and converting it to C
		printf("%d \t %.2f \n",i,(5.0/9.0)*(i-32));
	}

}
