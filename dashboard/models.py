from django.db import models


class Bangladesh(models.Model):
    date = models.CharField(max_length=20)
    day = models.IntegerField()
    case = models.BigIntegerField()
    test_case = models.BigIntegerField()
    death = models.BigIntegerField()
    recovered = models.BigIntegerField()

    def __str__(self):
        return self.date

class Bd_district(models.Model):
    district = models.CharField(max_length=30)
    case = models.BigIntegerField()

    def __str__(self):
        return self.district

class Dhaka_area(models.Model):
    area = models.CharField(max_length=30)
    case = models.BigIntegerField()

    def __str__(self):
        return self.area

class Bd_gender(models.Model):
    gender = models.CharField(max_length=10)
    case = models.IntegerField()
    death = models.IntegerField()

    def __str__(self):
        return self.gender


# Create your models here.
