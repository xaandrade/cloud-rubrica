# Usamos una imagen base ligera que ya tiene un servidor web (Nginx)
FROM nginx:alpine
# Copiamos nuestro archivo HTML al directorio donde Nginx busca archivos
COPY index.html /usr/share/nginx/html/
# Nginx usa el puerto 80 por defecto
EXPOSE 80