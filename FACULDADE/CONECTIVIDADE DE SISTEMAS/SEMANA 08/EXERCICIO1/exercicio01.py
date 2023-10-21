import os

# Imprimir o diretório de trabalho corrente
print(os.getcwd())
os.chdir('../EXERCICIO2')

for root, dirs, files in os.walk("", topdown=False):
   for name in files:
      print(os.path.join(root, name))
   for name in dirs:
      print(os.path.join(root, name))
