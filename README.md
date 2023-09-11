# Indicador de Batería para Notebook

Las baterías de iones de litio, que son comunes en las notebooks modernas, generalmente tienen una vida útil más larga si se mantienen en un rango de carga entre el 20% y el 80%. Mantener la carga de la batería dentro de este rango puede ayudar a reducir el desgaste y el envejecimiento de la batería a largo plazo.

Este repositorio contiene un script de shell llamado "battery_indicator.sh" que proporciona una funcionalidad de indicación de batería para notebooks. El script monitorea continuamente el nivel de batería de la notebook y reproduce un sonido de alerta cuando el nivel de batería alcanza el 20%, 80% y el 100%.

Desconecte el cargador del equipo cuando la batería llegue al 80% de carga (se le indicará con el sonido ``paplay /usr/share/sounds/freedesktop/stereo/message-new-instant.oga``), esto para evitar la sobrecarga de batería.

Cuando llegue al 20% el sonido será ``paplay /usr/share/sounds/freedesktop/stereo/message-new-instant.oga`` que indicará que debe cargar la batería

## Requisitos
El script utiliza el comando acpi para obtener el nivel de batería actual. Asegúrate de tener instalado acpi en tu sistema antes de ejecutar el script. Puedes instalarlo ejecutando el siguiente comando:

``sudo apt-get install acpi``

Además, el script utiliza el comando paplay para reproducir los sonidos de alerta. Asegúrate de tener instalado paplay en tu sistema y de que los archivos de sonido estén ubicados en las rutas especificadas en el script.

## Uso
### Clona el repositorio en tu sistema:
``git clone https://github.com/titir1x/notebook-battery-indicator.git``
### Navega al directorio del repositorio:
``cd notebook-battery-indicator``
### Ejecuta el script:
``./battery_indicator.sh``
#### El script se ejecutará en segundo plano y monitoreará continuamente el nivel de batería de tu notebook. Reproducirá un sonido de alerta cuando el nivel de batería alcance el 20%, un sonido de completado tras llegar al 80% de carga y 2 sonidos de completado al llegar al 100% de carga.

Para detener el script, puedes presionar Ctrl + C en la terminal donde se está ejecutando.

### Notas
Este script se basa en el sistema operativo Linux y utiliza los comandos acpi y paplay específicos de Linux. No se garantiza su funcionamiento en otros sistemas operativos.
Asegúrate de revisar y ajustar las rutas de los archivos de sonido en el script si es necesario.
Ten en cuenta que el script no controla la carga o descarga real de la batería de la notebook. Solo proporciona una indicación sonora basada en el nivel de batería actual.
