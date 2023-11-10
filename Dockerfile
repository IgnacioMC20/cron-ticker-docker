FROM --platform=$BUILDPLATFORM node:19.2-alpine3.17
# /app predeterminada

# cd app
WORKDIR /app

COPY package.json ./

# instalar deps
RUN npm i

# copiar archivos y en ultimo lugar va el destino
COPY . .
#realizar testing
RUN npm run test

# SHELL [ "npm i && npm start" ]

# realuzar testing
RUN npm run test

# eliminar archovs de testing que no son necesarios en prod
RUN rm -rf test && rm -rf node_modules

# instalar archivos y directorios no necesarios en prod
RUN npm install --prod


# comando run de la imagen
CMD [ "node", "app.js" ]
