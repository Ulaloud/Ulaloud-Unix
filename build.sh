#!/bin/bash
# Ulaloud-Unix Build System
echo "--- Iniciando Construccion de Ulaloud-Unix ---"

# 1. Preparar carpetas
mkdir -p isotmp/live
mkdir -p isotmp/boot/grub

# 2. Sincronizar archivos de configuracion de src a chroot
cp src/xfce/xfce4-panel.xml chroot/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/
cp src/boot/grub.cfg isotmp/boot/grub/

# 3. Comprimir sistema (Squashfs)
mksquashfs ./chroot isotmp/live/filesystem.squashfs -comp xz -e dev proc sys run tmp

# 4. Generar ISO
xorriso -as mkisofs \
    -iso-level 3 \
    -full-iso9660-filenames \
    -volid "ULALOUD_UNIX" \
    -output ulaloud-unix-v1.iso \
    isotmp/

echo "--- Proceso Terminado: ulaloud-unix-v1.iso ---"
