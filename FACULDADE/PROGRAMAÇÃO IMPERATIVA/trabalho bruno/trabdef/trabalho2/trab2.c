#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    int codigo;
    float preco;
    char descricao[50];
} Produto;

typedef struct {
    int codigo;
    char nome[50];
} Vendedor;

typedef struct {
    int codigoVendedor;
    int codigoProduto;
    int quantidade;
} Venda;

int main() {
    FILE *vendasFile = fopen("vendas.txt", "r");
    FILE *produtosFile = fopen("produtos.txt", "r");
    FILE *vendedoresFile = fopen("vendedores.txt", "r");

    if (!vendasFile || !produtosFile || !vendedoresFile) {
        printf("ERRO: Linha 28");
        return 1;
    }

    int numVendas, numProdutos, numVendedores;
    fscanf(vendasFile, "%d", &numVendas);
    fscanf(produtosFile, "%d", &numProdutos);
    fscanf(vendedoresFile, "%d", &numVendedores);

    Produto produtos[numProdutos];
    Vendedor vendedores[numVendedores];
    float totalPorProduto[numProdutos];
    float totalPorVendedor[numVendedores];
    int codigoProduto[numProdutos]; 
    memset(totalPorProduto, 0, sizeof(totalPorProduto));
    memset(totalPorVendedor, 0, sizeof(totalPorVendedor));

    for (int i = 0; i < numProdutos; i++)
        fscanf(produtosFile, "%d %f %s[^\n]", &produtos[i].codigo, &produtos[i].preco, produtos[i].descricao);

    for (int i = 0; i < numVendedores; i++)
        fscanf(vendedoresFile, "%d %s[^\n]", &vendedores[i].codigo, vendedores[i].nome);

    float totalGeral = 0;
    Venda venda;

    for (int i = 0; i < numVendas; i++) {
        fscanf(vendasFile, "%d %d %d", &venda.codigoVendedor, &venda.codigoProduto, &venda.quantidade);

        int pos;
        for (pos = 0; pos < numProdutos; pos++)
            if (produtos[pos].codigo == venda.codigoProduto)
                break;

        if (pos < numProdutos) { 
            totalGeral += produtos[pos].preco * venda.quantidade;
            totalPorProduto[pos] += produtos[pos].preco * venda.quantidade;
            totalPorVendedor[venda.codigoVendedor] += produtos[pos].preco * venda.quantidade;
            codigoProduto[pos] = venda.codigoProduto;
        } else {
            printf("ERRO: Linha 68");
        }
    }
    fclose(vendasFile);
    fclose(produtosFile);
    fclose(vendedoresFile);
    FILE *totaisFile = fopen("totais.txt", "w");

    if (!totaisFile) {
        printf("ERRO: Linha 77");
        return 1;
    }

    fprintf(totaisFile, "Total geral: %.2f\n", totalGeral);
    for (int i = 0; i < numProdutos; i++)
        fprintf(totaisFile, "Total vendido do produto %d (%s): R$%.2f\n", produtos[i].codigo, produtos[i].descricao, totalPorProduto[i]);
    
    for (int i = 0; i < numVendedores; i++)
        fprintf(totaisFile, "Total vendido pelo vendedor %d (%s): R$%.2f\n", vendedores[i].codigo, vendedores[i].nome, totalPorVendedor[vendedores[i].codigo]);

    fclose(totaisFile);

    return 0;
}
