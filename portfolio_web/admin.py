from django.contrib import admin

# Register your models here.
from portfolio_web.models import Person, Details, Education, Work, Skills, Projects

admin.site.register(Person)
admin.site.register(Details)
admin.site.register(Education)
admin.site.register(Work)
admin.site.register(Skills)
admin.site.register(Projects)
