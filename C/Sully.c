#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int main (void)
{
int i = 5;
FILE *file = NULL;char *s="#include<stdio.h>%c#include<string.h>%c#include<stdlib.h>%cint main (void)%c{%cint i = %d;%cFILE *file = NULL;char *s=%c%s%c;char file_name[10];memset(file_name, 0, 10);char num = i + '0';char com[65];memset(com, 0, 65);strcpy(com, %cclang -Wall -Wextra -Werror %c);strcpy(file_name, %cSully_%c);file_name[6] = num;strcat(com, file_name);strcat(com,%c.c -o %c);strcat(com, file_name);strcat(com, %c ; ./%c);strcat(com, file_name);com[64]=10;strcat(file_name, %c.c%c);file = fopen(file_name, %cw+%c);if(file != NULL){fprintf(file, s, 10, 10, 10, 10, 10, i - 1, 10, 34, s ,34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 10);fclose(file);if(i > 0){system(com);}}return 0;}%c";char file_name[10];memset(file_name, 0, 10);char num = i + '0';char com[65];memset(com, 0, 65);strcpy(com, "clang -Wall -Wextra -Werror ");strcpy(file_name, "Sully_");file_name[6] = num;strcat(com, file_name);strcat(com,".c -o ");strcat(com, file_name);strcat(com, " ; ./");strcat(com, file_name);com[64]=10;strcat(file_name, ".c");file = fopen(file_name, "w+");if(file != NULL){fprintf(file, s, 10, 10, 10, 10, 10, i - 1, 10, 34, s ,34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 10);fclose(file);if(i > 0){system(com);}}return 0;}
