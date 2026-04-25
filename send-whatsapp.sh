#!/bin/bash
# Script para enviar mensajes a WhatsApp de Kratf & Estampados
# Uso: ./send-whatsapp.sh "tu mensaje aquí"

TARGET="+573202652608"
ACCOUNT="default"
CHANNEL="whatsapp"

if [ -z "$1" ]; then
    echo "Usage: ./send-whatsapp.sh \"tu mensaje aquí\""
    exit 1
fi

openclaw message send --channel "$CHANNEL" --target "$TARGET" --account "$ACCOUNT" --message "$1"
