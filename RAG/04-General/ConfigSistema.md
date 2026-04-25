# Configuración del Sistema

## OpenClaw
- **Versión:** 2026.4.22
- **Gateway:** ws://127.0.0.1:18789
- **Dashboard:** http://127.0.0.1:18789/
- **Node:** srv1590968

## Canal WhatsApp
- **Estado:** LINKED (cuenta activa)
- **DM Policy:** open (para pruebas)
- **Número principal:** +573204290102
- **Número cliente:** +573202652608

## Agente Configurado
- **ID:** kratf
- **Canal:** WhatsApp + Telegram + Webchat
- **Modelo:** MiniMax-M2.7
- **Sesiones activas:** 9

## Configuraciones Importantes
- Heartbeat: 30m (main), disabled (kratf)
- Context tokens: 200k (main), 200k (kratf)
- Debounce: 0ms

## Security
- ⚠️ WhatsApp DMs: open (corregir para producción)
- ⚠️ allowInsecureAuth: true (revisar)

## Notas Técnicas
- Sistema: Ubuntu 24.04.4 LTS
- Node: v22.22.2
- Kernel: 6.8.0-110-generic
- Ubicación: Colombia (UTC-5)
