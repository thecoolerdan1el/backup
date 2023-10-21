import socket
import time

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

IP = input('Entre com o IP de destino: ')
PORTA = int(input('Entre com a PORTA de destino: '))
while True:
   msg = input('Entre com a mensagem: ')
   s.sendto(msg.encode(), (IP, PORTA))
   print('Enviado ', msg.encode())

   time.sleep(5)
   s.setblocking(0)
   try:
       data, addr = s.recvfrom(1024)
       print('Recebido ', data, 'de ', addr)
   except:
       print('Servidor não respondeu')

print('Cliente encerrou')
s.close()