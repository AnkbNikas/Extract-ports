# Extract-ports

Este script es útil para automatizar la extracción de puertos abiertos e IPs desde un archivo de resultados de Nmap y copiarlos al portapapeles para usarlos más fácilmente.

Requisitos:

Un sistema basado en Linux.

Nmap: Instalado en tu sistema. Puedes instalarlo utilizando tu gestor de paquetes.

xclip: Instalado para copiar el texto al portapapeles. Puedes instalarlo utilizando tu gestor de paquetes.

Archivo de salida de Nmap: Un archivo de texto generado por Nmap que contiene la salida del escaneo.

Instalación de Nmap y xclip:

Para instalar Nmap y xclip, abre una terminal y ejecuta los siguientes comandos dependiendo de tu distribución de Linux:

En Ubuntu/Debian:

sudo apt-get update
sudo apt-get install nmap xclip

En Fedora:

sudo dnf install nmap xclip

En Arch Linux:

sudo pacman -S nmap xclip

Uso de la Herramienta:

Crea un archivo llamado extractPorts.sh y copia el script.

Abre una terminal, navega al directorio donde guardaste extractPorts.sh y ejecuta el siguiente comando para hacer el archivo ejecutable:

chmod +x extractPorts.sh

Realiza un escaneo de Nmap y guarda la salida en un archivo de texto. Por ejemplo:

nmap -sVC -oN nmap_output.txt <target_ip>

Ejecuta el script extractPorts.sh pasando el archivo de salida de Nmap como argumento:

./extractPorts.sh nmap_output.txt

La herramienta extraerá la dirección IP y los puertos abiertos del archivo de salida de Nmap, los mostrará en la terminal y copiará los puertos abiertos al portapapeles.

Ejemplo de Salida:



