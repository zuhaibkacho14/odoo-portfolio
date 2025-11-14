# Use official Odoo image
FROM odoo:18.0

# Optional: copy custom modules
COPY ./addons /mnt/extra-addons

# Expose Odoo port
EXPOSE 8069

# Start Odoo with Render environment variables
CMD ["sh", "-c", "odoo --db_host=$DB_HOST --db_port=$DB_PORT --db_user=$DB_USER --db_password=$DB_PASSWORD --database=$DB_NAME --xmlrpc-port=$PORT"]
