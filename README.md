# Extract-ports

La función extractPorts está diseñada para extraer direcciones IP y puertos abiertos desde un archivo (generalmente un resultado de un escaneo de Nmap). 

Este script es útil para automatizar la extracción de puertos abiertos e IPs desde un archivo de resultados de Nmap y copiarlos al portapapeles para usarlos más fácilmente.

Requisitos:

1. Linux o sistema compatible con bash: Este script está diseñado para entornos Unix (Linux, macOS, etc.) con acceso a la terminal.

2. Herramientas necesarias:

grep: Para filtrar información en el archivo.

awk: Para manipular el formato de la salida.

xargs: Para manejar la lista de puertos.

tr: Para transformar caracteres, en este caso, cambiar espacios por comas.

xclip: Para copiar la lista de puertos al portapapeles (necesitarás instalarlo si no está presente).

Pasos para hacer funcionar el script:

1. Instalar xclip (si no está instalado): Si no tienes xclip, puedes instalarlo usando el siguiente comando en una terminal (para distribuciones basadas en Debian como Ubuntu):

sudo apt-get install xclip

En otros sistemas, usa el gestor de paquetes correspondiente.

2. Copia el código del script y guárdalo en un archivo, por ejemplo extract_ports.sh.


3. Cambia los permisos del archivo para hacerlo ejecutable:

chmod +x extract_ports.sh

4. Para ejecutar el script, simplemente pasa el archivo de resultados de Nmap como argumento. Por ejemplo:

./extract_ports.sh nmap_result.txt

Aquí nmap_result.txt es el archivo que contiene los resultados del escaneo de Nmap.


Posibles errores y soluciones:

1. Si no tienes xclip: El script intentará usar xclip para copiar los puertos al portapapeles. Si no tienes xclip instalado y no quieres instalarlo, puedes comentar o eliminar la línea que usa xclip:

# echo $ports | tr -d '\n' | xclip -sel clip

2. Archivo de entrada vacío o mal formato: Si el archivo de resultados de Nmap no tiene un formato esperado, el script podría no extraer correctamente los puertos o la IP. Asegúrate de que el archivo contenga resultados de un escaneo de Nmap válido.



