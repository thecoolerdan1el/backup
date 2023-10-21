import socket
import sys

HOST = input('Entre com o IP do servidor: ')
PORTA = int(input('Entre com a porta do servidor: '))
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
try:
    s.bind((HOST, PORTA))
except:
   print('# erro de bind')
   sys.exit()

while True:
    input('Tecle algo para continuar: ')
    try:
        data, addr = s.recvfrom(1024)
    except Exception as e:
        print('# Exeption no recvfrom ', e)
    else:
        print('sensor ', addr, 'enviou ', data)
        s.sendto('ACK'.encode(), addr)
        print('ACK enviado para', addr)

print('o servidor encerrou')
s.close()