# Koristi zvaničnu n8n Docker sliku
FROM n8nio/n8n:latest

# Podesi varijable okruženja
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Yebi5e!
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Pokreni n8n
CMD ["n8n", "start"]
