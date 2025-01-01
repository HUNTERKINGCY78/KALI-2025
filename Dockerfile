# Menggunakan image Kali Linux dari Docker Hub
FROM kalilinux/kali-rolling

# Memperbarui dan menginstal paket yang diperlukan
RUN apt-get update && apt-get install -y \
    apache2 \
    curl \
    python3 \
    python3-pip \
    && apt-get clean

# Menyalin file HTML ke direktori root Apache
COPY index.html /var/www/html/

# Menyalin skrip Bash untuk bot Telegram
COPY telegram_bot.sh /usr/local/bin/telegram_bot.sh
RUN chmod +x /usr/local/bin/telegram_bot.sh

# Mengatur port yang akan dibuka
EXPOSE 8080

# Menjalankan server Apache dan bot Telegram
CMD service apache2 start && /usr/local/bin/telegram_bot.sh
