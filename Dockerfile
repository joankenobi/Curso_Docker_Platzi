# A partir de la imagen con node 12
FROM node:12

# Copia todo el contenido de la carpeta CMD a la carpeta del contenedor
COPY [".", "/usr/src/"]

# Dentro del contenedor (ctdr) aplicar cd a la carpeta indicada
WORKDIR /usr/src

# Dentro del ctdr instala las dependencias del pakage.json
RUN npm install


# Dentro del ctdr expone el puerto 3000
EXPOSE 3000

# Dentro del ctdr corre index.js con node
CMD ["node", "index.js"]
