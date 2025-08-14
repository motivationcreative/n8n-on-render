FROM n8nio/n8n

# Autentifikacija
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Yebi5e!

# Render promenljive
ENV N8N_PORT=${PORT}
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http

# Port koji Render koristi
EXPOSE ${PORT}

# Pokretanje n8n na ispravnom portu
CMD n8n start --port ${PORT}
