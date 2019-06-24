#!/bin/bash
for server in $(host -t ns $1 | cut -d " " -f 4);
do 
host -l $1 $server;
done

#as consultas dns são feitas pela por 53 no protocolo udp
#as transferências de zona  é feita pela porta 53 no protocolo tcp
