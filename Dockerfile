# Use official Odoo 18 image
FROM odoo:18.0

# Copy your custom modules to Odoo extra-addons
COPY ./addons /mnt/extra-addons

# Expose default Odoo port
EXPOSE 8069

# Start Odoo and install your module automatically
CMD ["odoo", "-i", "my_portfolio", "--dev=all"]
