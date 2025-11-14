from odoo import http

class PortfolioController(http.Controller):

    @http.route(['/portfolio'], type='http', auth='public', website=True)
    def portfolio_page(self, **kwargs):
        projects = http.request.env['portfolio.project'].search([])
        skills = http.request.env['portfolio.skill'].search([])
        experiences = http.request.env['portfolio.experience'].search([])
        return http.request.render('my_portfolio.portfolio_template', {
            'projects': projects,
            'skills': skills,
            'experiences': experiences,
        })
