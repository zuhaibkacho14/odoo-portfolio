# Use official Odoo 18 image
FROM odoo:18.0

# Copy your custom modules to Odoo extra-addons
COPY ./addons /mnt/extra-addons

# Expose Render port
EXPOSE 8069

# Start Odoo with database params from environment variables
CMD ["odoo",
     "--db_host=${DB_HOST}",
     "--db_port=${DB_PORT}",
     "--db_user=${DB_USER}",
     "--db_password=${DB_PASSWORD}",
     "--database=${DB_NAME}",
     "--addons-path=/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons",
     "-i", "my_portfolio"]
