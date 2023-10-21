# Função Criada a partide de
# f(x) = 2x + 3
# g(x) = 3x + 6
def funcao1():
    x = int(input("Entre com um valor: "))  # Entrada padrão 3
    f = 2 * x + 3
    g = 2 * f
    print(g)


# Nova Função Criada a partir de
# f = (2x**2) + 3 (2 ao quadrado)
# g = (3 * f) - 1
def funcao2():
    x = int(input("Entre com um valor: "))  # Entrada padrão 2
    f = 2 * (x ** 2) + 3
    g = 3 * f - 1
    print(g)


# Nova Função Criada a partir de
# f(x) = 3 * x −1
# g(x) = f + 2
def funcao3():
    x = int(input("Entre com um valor: "))  # Entrada padrão 4
    f = 3 * x - 1
    g = f + 2
    print(g)


while True:
    print("Entrando na função 1... ")
    funcao1()
    print("Entrando na função 2... ")
    funcao2()
    print("Entrando na função 3...")
    funcao3()
    escolha = int(input("Deseja parar? (1) SIM (2) NÃO"))
    if escolha == 1:
        print("Obrigado por usar nossos serviços")
        break

