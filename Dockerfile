FROM odoo:18.0

# Copy custom addons
COPY ./addons /mnt/extra-addons

EXPOSE 8069

ENTRYPOINT ["sh", "-c", "odoo \
    --db_host=${DB_HOST} \
    --db_port=${DB_PORT} \
    --db_user=${DB_USER} \
    --db_password=${DB_PASSWORD} \
    --database=${DB_NAME} \
    --xmlrpc-port=${PORT}"]
