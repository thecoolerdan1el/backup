import os
import shutil

# Imprimir o diretório de trabalho corrente
print(os.getcwd())
os.chdir('../EXERCICIO2')

for root, dirs, files in os.walk("", topdown=False):
	for name in files:
		print(os.path.join(root, name))
	for name in dirs:
		print(os.path.join(root, name))
# Criar os subdiretórios SUBDIR1 e SUBDIR2
if not os.path.exists('SUBDIR1'):
	os.makedirs('SUBDIR1')
if not os.path.exists('SUBDIR2'):
	os.makedirs('SUBDIR2')



# Copiar o arquivo TEXTO.txt para o SUBDIR1
f = open('SUBDIR1/TEXTO.txt', 'w')
f.write('AULA SOBRE SISTEMAS DE ARQUIVOS')
f.close()

# Mover o arquivo TEXTO.txt do SUBDIR1 para o SUBDIR2
shutil.move('./SUBDIR1/TEXTO.txt', 'SUBDIR2/')


# Apagar o SUBDIR1 e tudo o que estiver dentro
if os.path.exists('SUBDIR1'):
	shutil.rmtree('./SUBDIR1')
