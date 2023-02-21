from django.shortcuts import render
from django.http import HttpResponse


def cicd(request):
    return HttpResponse("Welcome CICD")