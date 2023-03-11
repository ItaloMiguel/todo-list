from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout


def login_usuario(request):
    if request.method == 'GET':
        return render(request, 'todousuarios/login.html')

    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = authenticate(username=username, password=password)
        
        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.info(request, 'Username ou senha incorreta')
            return redirect('login_usuario')


def cadastro_usuario(request):
    if request.method == 'GET':
        return render(request, 'todousuarios/cadastro.html')
    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        confirm_password = request.POST['confirm_password']

        print(f'PASSWORD {password} AND CONFIRM_PASSWORD {confirm_password}')
        print(type(password))

        if username is not None:
            user = User.objects.filter(username=username)
            if user:    
                messages.info(request, 'Já existe um usuario com esse nome')
                return redirect('cadastro_usuario')
        else:
            messages.info(request, 'Username não pode ser nulo')
            return redirect('cadastro_usuario')

        if email is not None:
            user = User.objects.filter(email=email)
            if user:
                messages.info(request, 'Já existe um usuario com esse email')
                return redirect('cadastro_usuario')
        else:
            messages.info(request, 'Email não pode ser nulo')
            return redirect('cadastro_usuario')
        
        if password is not None:
            if password != confirm_password:
                messages.info(request, 'Senha não são parecidas')
                return redirect('cadastro_usuario')

        else:
            messages.info(request, 'Password não pode ser nulo')
            return redirect('cadastro_usuario')
        
        user = User.objects.create_user(username=username, email=email, password=password)
        user.save()

        messages.info(request, 'Cadastro feito com sucesso')
        return redirect('login_usuario') 


def logout_user(request):
    logout(request)
    return redirect('login_usuario')


# def logar_usuario(request, username, password):
#     user = authenticate(username=username, password=password)

#     if user is not None:
#         login(request, user)
#         return redirect('home')
    
#     messages.info(request, 'Usuario ou senha incorreta!')
#     return render(request, 'todousuarios/login.html')

