#!/bin/bash
# sudo apt-get install acpi

# Verificar si ya hay una instancia en ejecución
if [ -f "/tmp/battery_indicator.lock" ]; then
    echo "El script ya se está ejecutando."
    echo "'rm -f /tmp/battery_indicator.lock' para matar el proceso en ejecución."
    exit 1
fi

# Crear el archivo de bloqueo
touch /tmp/battery_indicator.lock

# Bucle infinito
while true; do
    # Obtener el nivel de la batería actual
    battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

    # Reproducir un sonido suave cuando la batería alcanza el 20%
    if [ $battery_level -le 20 ]; then
        paplay /usr/share/sounds/freedesktop/stereo/message-new-instant.oga
    fi

    # Reproducir un sonido suave cuando la batería alcanza el 80%
    if [ $battery_level -eq 80 ]; then
        paplay /usr/share/sounds/freedesktop/stereo/complete.oga
    fi

	# Reproducir dos sonidos suaves cuando la batería alcance el 100%
	if [ $battery_level -eq 100 ]; then
        paplay /usr/share/sounds/freedesktop/stereo/complete.oga
        sleep 1
        paplay /usr/share/sounds/freedesktop/stereo/complete.oga
    fi

    # Esperar 5 minutos para la siguiente comprobación
    sleep 300

done

# Eliminar el archivo de bloqueo al finalizar
rm /tmp/battery_indicator.lock
