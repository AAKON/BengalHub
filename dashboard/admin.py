from django.contrib import admin
from .models import Bangladesh
from .models import Bd_district
from .models import Dhaka_area
from .models import Bd_gender

admin.site.register(Bangladesh)
admin.site.register(Bd_district)
admin.site.register(Dhaka_area)
admin.site.register(Bd_gender)

# Register your models here.
