from django.shortcuts import render
from django.contrib import messages

def home(request):
    if request.method == 'GET':

        return render(request, 'index.html')
    if request.method == 'POST':

        return render(request, 'index.html')
    
    return render(request, 'index.html')
    