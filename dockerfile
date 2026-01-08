# Gunakan image Nginx alpine sebagai base image
FROM nginx:alpine

# Hapus file default HTML Nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin file website statis ke direktori root Nginx
COPY public/ /usr/share/nginx/html/

# Expose port default Nginx
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]