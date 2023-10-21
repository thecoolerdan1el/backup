import os

os.makedirs('TESTE1')
os.makedirs('TESTE2')
os.makedirs('TESTE2/TESTE21')
os.listdir()

f = open('TESTE2/TESTE21/TEXTO.txt', 'w')
f.write('AULA SOBRE SISTEMAS DE ARQUIVOS')
f.close()
