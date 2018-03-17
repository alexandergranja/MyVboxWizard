#!/bin/bash
#
# Este script permite la seleccion del numero de nucleos que quiero asignar a
# mi maquina virtual
#
NUMCORES=$(cat /proc/cpuinfo | grep processor | wc -l) 
NUMTHREAD=$(cat /proc/cpuinfo | grep "cpu cores" | uniq | awk '{print $4}')
NUMCORES=$(( NUMCORES*NUMTHREAD/2 ))
NCORE="dialog --backtitle \"Numero CPU\" --radiolist \"Seleccione Numero de Cores:\" 10 40 4 1 1 on" 
for i in $(seq 2 1 ${NUMCORES}); do
	NCORE="${NCORE} ${i} ${i} off"
done
NCORE="${NCORE} 2> salida"
eval ${NCORE}
