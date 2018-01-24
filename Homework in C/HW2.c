/* Kion Smith
*  kls160430
*  CS 3377.0W3
*/
//create a program that counts characters in comments(single line and block)
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char*argv[])
{
	//the file pointer and 
	//char to loop through the file with
	//counter to hold how many characters where counted
	FILE *fp;
	char c;
	int count=0;

	//open the file(uses the console to run the file)
	// ex ./a.out file.c
	fp = fopen( argv[1], "r" );
	
	//if the file is null, print that the fly could not be found
	if(fp == NULL)
	{
		printf("The file could not be found\n");
	}
	else
	{	//while next is not end of file
		while ( (c = fgetc( fp )) != EOF )
		{	//if c is a single slash
			if(c =='/')
			{	//and if the next item is also a slash(//)
				if( (c = fgetc(fp)) == '/')
				{	//loop until the end of line character
					while((c = fgetc(fp)) != '\n')
					{	
						count++;
					}
				}
				//if the next item is a * (/*)
				else if(c == '*')
				{	//if the end could / is found loop until end
					if((c = fgetc(fp)) == '/')
					{
						while((c = fgetc(fp)) != '\n')
						{
								count++;
						}
					}
					// else the count the current characters until /
					else
					{
						while((c = fgetc(fp)) != '/')
						{
								count++;
						}
					}	
					

				}
			}

		}
		//out put the results
		printf("Character spaces counted = %d \n", count);
	}

	
}

																							
