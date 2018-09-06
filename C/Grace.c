#include<stdio.h>
#define FICHIER fich
#define CHAINE s
#define GRACE(x) int main (void){FILE* FICHIER = NULL;char*CHAINE="#include<stdio.h>%c#define FICHIER fich%c#define CHAINE s%c#define GRACE(x) int main (void){FILE* FICHIER = NULL;char*CHAINE=%c%s%c;FICHIER = fopen(%cGrace_kid.c%c, %cw+%c);if (FICHIER != NULL){fprintf(FICHIER, CHAINE, 10, 10, 10, 34, CHAINE, 34, 34, 34, 34, 34, 10, 10, 10);fclose(FICHIER);}return 0;}%c/*commentaire*/%cGRACE()%c";FICHIER = fopen("Grace_kid.c", "w+");if (FICHIER != NULL){fprintf(FICHIER, CHAINE, 10, 10, 10, 34, CHAINE, 34, 34, 34, 34, 34, 10, 10, 10);fclose(FICHIER);}return 0;}
/*commentaire*/
GRACE()
