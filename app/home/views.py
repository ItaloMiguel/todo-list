from django.shortcuts import render
from django.contrib import messages

def home(request):
    if request.method == 'GET':

        return render(request, 'home/index.html')
    if request.method == 'POST':

        return render(request, 'home/index.html')
    
    return render(request, 'home/index.html')
    