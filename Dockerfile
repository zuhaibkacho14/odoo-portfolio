# Use official Odoo image
FROM odoo:18.0

# Copy your custom addons
COPY ./addons /mnt/extra-addons

# Expose the port Render expects
EXPOSE 8069

# Start Odoo with environment variables from Render
CMD sh -c "odoo \
    --db_host=$DB_HOST \
    --db_port=$DB_PORT \
    --db_user=$DB_USER \
    --db_password=$DB_PASSWORD \
    --database=$DB_NAME \
    --addons-path=/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons \
    --xmlrpc-port=$PORT"
