# Utilizar la imagen oficial de Nginx
FROM nginx:alpine

# Eliminar el archivo index.html predeterminado de Nginx
RUN rm /usr/share/nginx/html/index.html

# Copiar el archivo index.html personalizado en la ubicación predeterminada de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Nginx en el primer plano
CMD ["nginx", "-g", "daemon off;"]
