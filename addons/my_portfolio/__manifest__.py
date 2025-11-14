# ws_portfolio/__manifest__.py
{
    'name': 'Portfolio',
    'version': '1.0',
    'summary': 'Personal Portfolio for Odoo Developer',
    'description': 'Showcase projects, skills, and experience dynamically',
    'category': 'Website',
    'author': 'Zuhaib Hassan',
    'depends': ['base', 'website'],
    'data': [
        'security/ir.model.access.csv',
        'data/menu.xml',
        # 'views/portfolio_project_views.xml',
        # 'views/portfolio_skill_views.xml',
        # 'views/portfolio_experience_views.xml',
        'views/portfolio_templates.xml',
    ],
    'installable': True,
    'application': True,
}
