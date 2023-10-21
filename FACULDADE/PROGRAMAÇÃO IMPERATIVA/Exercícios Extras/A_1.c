#include <stdio.h>


float valor_hora;
int horas_dadas;
float inss;
float irrf;

void calculo_salario(){
    float salario = valor_hora * horas_dadas;
    printf("O salário do Funcionário é: R$%2.2f\n", salario);

    if (salario <= 1320){
        inss = salario * 0.075;
        salario = salario - inss;
        printf("Salário após a redução do INSS: R$%2.2f\n", salario);
    }

    else if(salario >=1320 && salario <=2571){
        inss = salario * 0.090;
        salario = salario - inss;
        printf("Salário após a redução do INSS: R$%2.2f\n", salario);
        if (salario > 1903 && salario <=2826){
            irrf = salario * 0.075;
            salario = salario - irrf;
            printf("Salário após a redução do INSS(%2.2f) e o IRRF(%2.2f): R$%2.2f\n",inss, irrf,salario);
        }
    }
}


int main(){
    
    printf("Escreva o valor da hora: "); scanf("%f", &valor_hora);
    printf("Escreva o número de aulas dadas no mês: "); scanf("%d", &horas_dadas);

    calculo_salario();

    return 0;
}