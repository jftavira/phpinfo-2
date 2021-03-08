# FROM scratch en caso de código compilado de forma estática
FROM alpine
# equivalente a mkdir -p /app && cd /app
WORKDIR /app
# copia de una carpeta local del proyecto los contenidos  al docker (pero no el directorio)
COPY src .
# instalmos paquetería, en concreto PHP
RUN apk add php
# querríamos ejecutar php index.php, lo hacemos con...
# cuando carguemos la imagen lo que hará el contendor será cargar el binario php (ruta completa)
ENTRYPOINT /usr/bin/php
# no se pueden usar puertos menores de 1024 en Openshift, daría error
CMD -f index.php -S 0.0.0.0:8080

