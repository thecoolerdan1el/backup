#include <stdio.h>
#include <string.h>


#define NUM_MESES 12
#define NUM_PINTORES 20
#define MAX_NOME 50


char* mes_str[NUM_MESES] = { "janeiro", "fevereiro", "marco",
                            "abril", "maio", "junho",
                            "julho", "agosto", "setembro",
                            "outubro", "novembro", "dezembro" };


typedef
    enum {JAN, FEV, MAR, ABR, MAI, JUN, JUL, AGO, SET, OUT, NOV, DEZ}
    Mes;

typedef
    struct
    {
        char nome[MAX_NOME]; // nome da pessoa
        Mes mes; // mês de aniversário da pessoa
    }
    Pessoa;


int main()
{
        Pessoa pintor[NUM_PINTORES];
        pintor[ 0].mes = JAN; strcpy(pintor[ 0].nome, "Leonardo da Vinci");
        pintor[ 1].mes = ABR; strcpy(pintor[ 1].nome, "Sandro Botticelli");
        pintor[ 2].mes = AGO; strcpy(pintor[ 2].nome, "Georges Seurat");
        pintor[ 3].mes = ABR; strcpy(pintor[ 3].nome, "Vincent van Gogh");
        pintor[ 4].mes = SET; strcpy(pintor[ 4].nome, "Paul Gauguin");
        pintor[ 5].mes = JUN; strcpy(pintor[ 5].nome, "Edouard Manet");
        pintor[ 6].mes = OUT; strcpy(pintor[ 6].nome, "Paul Cezanne");
        pintor[ 7].mes = JUN; strcpy(pintor[ 7].nome, "Auguste Renoir");
        pintor[ 8].mes = JUN; strcpy(pintor[ 8].nome, "Claude Monet");
        pintor[ 9].mes = AGO; strcpy(pintor[ 9].nome, "Pablo Picasso");
        pintor[10].mes = DEZ; strcpy(pintor[10].nome, "Edgar Degas");
        pintor[11].mes = ABR; strcpy(pintor[11].nome, "Edvard Munch");
        pintor[12].mes = JAN; strcpy(pintor[12].nome, "Michelangelo Merisi (Caravaggio)");
        pintor[13].mes = JAN; strcpy(pintor[13].nome, "Michelangelo Buonarroti");
        pintor[14].mes = SET; strcpy(pintor[14].nome, "Tarsila do Amaral");
        pintor[15].mes = AGO; strcpy(pintor[15].nome, "Gustav Klimt");
        pintor[16].mes = NOV; strcpy(pintor[16].nome, "Rembrandt van Rijn");
        pintor[17].mes = MAI; strcpy(pintor[17].nome, "Amedeo Modigliani");
        pintor[18].mes = SET; strcpy(pintor[18].nome, "Caillebotte");
        pintor[19].mes = SET; strcpy(pintor[19].nome, "Joseph Turner");
    
    
        return 0;
}