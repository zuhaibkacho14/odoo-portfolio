from odoo import models, fields

class PortfolioProject(models.Model):
    _name = 'portfolio.project'
    _description = 'Portfolio Project'

    name = fields.Char(string='Project Name', required=True)
    description = fields.Text(string='Description')
    image = fields.Binary(string='Image')
    project_link = fields.Char(string='Project Link')
    skills_ids = fields.Many2many('portfolio.skill', string='Skills Used')
    date_start = fields.Date(string='Start Date')
    date_end = fields.Date(string='End Date')


class PortfolioSkill(models.Model):
    _name = 'portfolio.skill'
    _description = 'Skill'

    name = fields.Char(string='Skill Name', required=True)


class PortfolioExperience(models.Model):
    _name = 'portfolio.experience'
    _description = 'Experience'

    title = fields.Char(string='Job Title', required=True)
    company = fields.Char(string='Company/Organization')
    start_date = fields.Date(string='Start Date')
    end_date = fields.Date(string='End Date')
    description = fields.Text(string='Description')
