#!/bin/bash
# Script para enviar imágenes a WhatsApp de Kratf & Estampados
# Uso: ./send-whatsapp-image.sh "ruta/imagen.jpg" "mensaje opcional"

TARGET="+573202652608"
ACCOUNT="default"
CHANNEL="whatsapp"

if [ -z "$1" ]; then
    echo "Usage: ./send-whatsapp-image.sh \"ruta/imagen.jpg\" [\"mensaje opcional\"]"
    exit 1
fi

MEDIA_PATH="$1"
MESSAGE="${2:-}"

if [ -n "$MESSAGE" ]; then
    # Enviar mensaje primero
    openclaw message send --channel "$CHANNEL" --target "$TARGET" --account "$ACCOUNT" --message "$MESSAGE"
    sleep 1
fi

# Enviar imagen
openclaw message send --channel "$CHANNEL" --target "$TARGET" --account "$ACCOUNT" --media "$MEDIA_PATH"
