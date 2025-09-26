# Usa la imagen oficial de n8n
FROM docker.n8n.io/n8nio/n8n:latest

# Render asigna el puerto en la variable $PORT
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_EDITOR_BASE_URL=https://n8n-ej6e.onrender.com

EXPOSE $PORT

CMD ["n8n", "start", "--tunnel"]
