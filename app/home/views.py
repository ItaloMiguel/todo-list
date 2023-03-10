from django.shortcuts import render
from django.contrib import messages

def home(request):
    context = {
        'page_title': 'Home',
    }
    return render(request, 'home/index.html', context=context)
    