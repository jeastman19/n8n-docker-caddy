#!/bin/bash

if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo "Error: No se encontró el archivo .env"
    exit 1
fi

if [ -z "$DOMAIN_NAME" ] || [ -z "$SUBDOMAIN" ]; then
    echo "Error: Las variables DOMAIN_NAME y SUBDOMAIN deben estar definidas en .env"
    exit 1
fi

input_file="caddy_config/Caddyfile.example"
output_file="caddy_config/Caddyfile"

sed "s/n8n\.<domain>\.<suffix>/$SUBDOMAIN.$DOMAIN_NAME/" "$input_file" > "$output_file"

# 4. Reemplazar el archivo original con el nuevo (opcional, descomentar si es lo que quieres)
# mv "$output_file" "$input_file"

echo "¡Archivo procesado con éxito!"
echo "Nuevo archivo creado en: $output_file"
echo "Contenido resultante:"
echo "---------------------"
cat "$output_file"
