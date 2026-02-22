#!/bin/bash
# Script para configurar Wine y Firejail en el chroot
apt update
apt install -y wine wine64 firejail

# Crear carpeta centralizada para aplicaciones de Windows
mkdir -p /etc/skel/UlaloudApps

# Crear un alias para ejecutar .exe aislados por defecto
echo "alias winer='firejail --private wine'" >> /etc/skel/.bashrc
