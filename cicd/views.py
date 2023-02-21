from django.shortcuts import render
from django.http import HttpResponse


def cicd(request):
    return HttpResponse("Welcome CICD")

def rajendra(request):
    return HttpResponse("Hi Rajendra")