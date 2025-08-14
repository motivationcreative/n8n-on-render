# Koristi zvaničnu n8n Docker sliku
FROM n8nio/n8n:latest

# Instaliraj potrebne pakete (nekad Renderu fale)
USER root
RUN apk add --no-cache tini

# Podesi varijable okruženja
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=lozinka123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=https

# Pokreni n8n preko tini (bolje rukovanje procesima)
USER node
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
