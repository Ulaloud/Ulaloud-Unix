# Ulaloud-Unix 🐧

### El Sistema Operativo para Hosting Descentralizado

**Ulaloud-Unix** es una distribución basada en Debian Stable, diseñada específicamente para usuarios principiantes que desean hostear sus propios servidores de juegos y aplicaciones de forma sencilla y segura. 

Con una interfaz familiar (look & feel de Windows 10) y un núcleo optimizado, permite a los suscriptores de Ulaloud crear túneles de red automáticos para exponer sus servicios al mundo sin configuraciones complejas de router.

## 🚀 Enfoque del Proyecto
* **Simplicidad:** Interfaz XFCE personalizada para que el usuario de Windows se sienta como en casa.
* **Soporte .exe Nativo:** Integración de Wine con aislamiento (Sandboxing) vía Firejail para ejecutar binarios de Windows sin riesgos.
* **Hosting Ready:** Preparado con Docker y herramientas de tunelización para actuar como un nodo de hosting personal.
* **Instalación Guiada:** Incluye el instalador gráfico Calamares.

## 📚 Referencias y Recursos (Gists)
Este proyecto utiliza configuraciones y scripts basados en los siguientes recursos técnicos:
* [Configuración de Entorno Live Debian](https://gist.github.com/shinsei-aka/referencia1) - Scripts de inicialización del chroot.
* [Personalización de Interfaz XFCE](https://gist.github.com/shinsei-aka/referencia2) - Configuración del panel e iconos estilo Windows 10.
* [Optimización de Kernel y Squashfs](https://gist.github.com/shinsei-aka/referencia3) - Parámetros de compresión XZ para ISOs ligeras.

## 🛠️ Cómo Construir la ISO
Si ya tenés la carpeta `chroot` configurada, simplemente ejecutá:
```bash
./build.sh
```
