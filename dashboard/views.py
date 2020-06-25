from django.shortcuts import render
from .models import Bangladesh
from .models import Bd_district
from .models import Dhaka_area
from .models import Bd_gender

def home(request):

    date = []
    day = []
    case = []
    test_case = []
    death = []
    recovered = []
    district = []
    district_case = []
    dhaka_area = []
    area_case = []
    gender_case = []
    gender_death = []

    bangladesh = Bangladesh.objects.values()
    bd_district = Bd_district.objects.values()
    dhaka_areas = Dhaka_area.objects.values()
    bd_gender = Bd_gender.objects.values()


    for bd in bangladesh:

        date.append(bd['date'])
        day.append(bd['day'])
        case.append(bd['case'])
        test_case.append(bd['test_case'])
        death.append(bd['death'])
        recovered.append(bd['recovered'])

    for dist in bd_district:
        district.append(dist['district'])
        district_case.append(dist['case'])

    for dist in dhaka_areas:
        dhaka_area.append(dist['area'])
        area_case.append(dist['case'])

    for gender in bd_gender:
        gender_case.append(gender['case'])
        gender_death.append(gender['death'])

    return render(request,'dashboard/home.html',{'dhaka_area':dhaka_area,'area_case':area_case,
                                                'district':district,'district_case':district_case,
                                                'date':date,'day':day,'case':case,'test_case':test_case,
                                                'death':death,'recovered':recovered,'gender_case':gender_case,
                                                'gender_death':gender_death
                                                })
# Create your views here.
# Create your views here.
