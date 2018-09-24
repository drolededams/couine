#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int main (void)
{
int i = 5;
FILE *file = NULL;char *s="#include<stdio.h>%c#include<string.h>%c#include<stdlib.h>%cint main (void)%c{%cint i = %d;%cFILE *file = NULL;char *s=%c%s%c;char* file_name = %cSully_%%d.c%c;char* cmd = %cclang -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d ; ./Sully_%%d%c;char* com = NULL;char* fname = NULL;if(strchr(__FILE__, '_')){i--;}asprintf(&fname, file_name, i);file = fopen(fname, %cw+%c);if(file != NULL){fprintf(file, s, 10, 10, 10, 10, 10, i, 10, 34, s ,34, 34, 34, 34, 34, 34, 34, 10);fclose(file);if(i > 0){asprintf(&com, cmd, i, i, i);system(com);free(com);}}free(fname);return 0;}%c";char* file_name = "Sully_%d.c";char* cmd = "clang -Wall -Wextra -Werror Sully_%d.c -o Sully_%d ; ./Sully_%d";char* com = NULL;char* fname = NULL;if(strchr(__FILE__, '_')){i--;}asprintf(&fname, file_name, i);file = fopen(fname, "w+");if(file != NULL){fprintf(file, s, 10, 10, 10, 10, 10, i, 10, 34, s ,34, 34, 34, 34, 34, 34, 34, 10);fclose(file);if(i > 0){asprintf(&com, cmd, i, i, i);system(com);free(com);}}free(fname);return 0;}
