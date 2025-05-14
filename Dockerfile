# Gunakan image nginx resmi
FROM nginx:alpine

# Salin file HTML ke direktori yang akan dilayani oleh nginx
COPY index.html /usr/share/nginx/html/index.html

# Ekspos port 80
EXPOSE 80

# Perintah default untuk menjalankan nginx
CMD ["nginx", "-g", "daemon off;"]
