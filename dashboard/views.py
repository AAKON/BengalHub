from django.shortcuts import render
from .models import Bangladesh
from .models import Bd_district
from .models import Dhaka_area

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

    bangladesh = Bangladesh.objects.values()
    bd_district = Bd_district.objects.values()
    dhaka_areas = Dhaka_area.objects.values()


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

    return render(request,'dashboard/home.html',{'dhaka_area':dhaka_area,'area_case':area_case,
                                                'district':district,'district_case':district_case,
                                                'date':date,'day':day,'case':case,'test_case':test_case,
                                                'death':death,'recovered':recovered
                                                })
# Create your views here.
# Create your views here.
