# A partir de la imagen con node 12
FROM node:12

# Copia solo las dependencias necesarias para instalar (carpeta CMD) a la carpeta del contenedor
COPY ["package.json", "package-lock.json", "/usr/src/"]

# Dentro del contenedor (ctdr) aplicar cd a la carpeta indicada
WORKDIR /usr/src

# Dentro del ctdr instala las dependencias del pakage.json
RUN npm install


#docker solo copia el resto de los archivos exectuando los que ya habia copiado.
COPY [".", "."]

# Dentro del ctdr expone el puerto 3000
EXPOSE 3000

# Dentro del ctdr corre index.js con ndx y nodemon para actualizar en tiempo real los cambios del mismo, -L es para corregir problemas en wind10
CMD ["npx", "nodemon", "-L", "index.js"]
