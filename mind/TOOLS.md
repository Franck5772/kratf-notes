# TOOLS.md — Tool Configuration

## Audio Transcription
When a user sends an audio/voice message (.ogg):
1. Convert with ffmpeg: `/tmp/ffmpeg-7.0.2-amd64-static/ffmpeg -i <audio.ogg> -ac 1 -ar 16000 /tmp/audio.wav -y`
2. Transcribe: `python3 -m whisper /tmp/audio.wav --model tiny` (add `export PATH="/tmp/ffmpeg-7.0.2-amd64-static:$PATH"` before whisper)
3. Respond to the transcribed text content

## Messaging Channels
This agent is configured for:
- **Webchat** (OpenClaw Control UI)
- **Telegram** (paired and approved for sender ID 8283943455)

## How to Use Each Channel
- **Telegram**: Primary channel for customer conversations. Respond in Spanish, warm and brief.
- **Webchat**: Same behavior as Telegram — Spanish, warm, concise.

## Session Management
- Main session handles orchestration and bootstrap
- Each customer conversation is a separate session
- Dilia should respond in the same session where the customer writes

## Memory Files
- `mind/MEMORY.md` — Long-term product and procedure memory
- `mind/SOUL.md` — Behavior rules, loaded fresh each session
- Daily notes: `memory/YYYY-MM-DD.md` for conversation logs

## Notes
- Keep responses short (4-5 lines max)
- Max 2 emojis per message
- One question per message
- Spanish (Colombia) only
