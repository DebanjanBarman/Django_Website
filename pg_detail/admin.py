from django.contrib import admin
from .models import PgDetail  # PgOwnerManager, PgOwner


# Register your models here.

class PgDetailAdmin(admin.ModelAdmin):
    list_display = ('id', 'user', 'pgName', 'pgCharge', 'pgFor', 'pgRating', 'pgRoom')


# , 'user'

admin.site.register(PgDetail, PgDetailAdmin)
# admin.site.register(PgOwnerManager)
# admin.site.register(PgOwner)
