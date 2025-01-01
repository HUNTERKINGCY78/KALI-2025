#!/bin/bash

# Token dan ID chat bot Telegram
BOT_TOKEN="7132826358:AAGCLoI7JYHA3nFYwEE8seu-qTmjwxEONL0"
CHAT_ID="5951232585"

# Mengirim pesan ke Telegram
curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
    -d "chat_id=$CHAT_ID&text=Server Apache telah dimulai!"

# Menjaga skrip tetap berjalan
tail -f /dev/null
