# FROM scratch en caso de código compilado de forma estática
FROM alpine
# equivalente a mkdir -p /app && cd /app
WORKDIR /app
# copia de una carpeta local del proyecto al docker
COPY src .
