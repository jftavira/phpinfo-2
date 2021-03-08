# FROM scratch en caso de código compilado de forma estática
FROM alpine
# equivalente a mkdir -p /app && cd /app
WORKDIR /app
# copia de una carpeta local del proyecto los contenidos  al docker (pero no el directorio)
COPY src .
