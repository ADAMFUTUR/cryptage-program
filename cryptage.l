%{
#include<stdio.h>
#include<string.h>
	int k=1;
	char nf[30];	
	char *ch;
%}
%%
.	{fprintf(yyout,"%c",yytext[0]+k);}
%%
int yywrap(void)
{
	return 1;
}
int main()
{
	printf("Entrez le nome du fichier\n");

	scanf("%s",nf);
	yyin=fopen(nf,"r");
	if(yyin==NULL)exit(0);
	yyout=fopen("sortiei.txt","w");
	printf("saisir le cle :");
	scanf("%d",&k);
	yylex();
	fclose(yyin);fclose(yyout);
}

