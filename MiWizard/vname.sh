#! /bin/bash
# Este script toma el nombre que se le va a asignar una maquina virtual
#
# 
while [ 1 ]; do
	dialog --inputbox "Digite el nombre de la maquina:" 8 40 2> salida
	VNAME=$(cat salida)
	if [ "${VNAME}" == "" ]; then
		break
	fi
	VBoxManage list vms | grep ${VNAME}
        if [ $? -eq 1 ]; then
                break
        fi
done
