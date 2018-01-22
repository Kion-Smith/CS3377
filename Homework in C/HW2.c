#include <stdio.h>
#include <stdlib.h>

int main(int argc, char*argv[])
{
	FILE *fp;
	fp = fopen( argv[1], "r" );
	char c;
	int count=0;

	if(fp == NULL)
	{
		printf("The file could not be found\n");
	}
	else
	{
		while ( (c = fgetc( fp )) != EOF )
		{/*
			if(c == '/')
			{
				if((c = fgetc(fp)) == '/')
				{
					count++;
				}

			}
			*/

			switch( c )
			{
				case '/':
					
			 	case '\n' : count++; 
			  	default   : break;
			}
		}

		printf("%d \n", count);
	}

	
}

																							
