#! /bin/bash
# Este script es mi wizard
#
# Colectar los datos para la creacion de la maquina virtual
./vname.sh
VNAME=$(cat salida)
./ncore.sh
NUMCORES=$(cat salida)
# Lineas que se ejecutaran en los comandos de VBox Manage para crear la maquina virtual
echo "Nombre de maquina ${VNAME} y num cores ${NUMCORES}"
