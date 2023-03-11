from django.urls import path, include
from . import views 

urlpatterns = [
    path('login/', views.login_usuario, name='login_usuario'),
    path('cadastro/', views.cadastro_usuario, name='cadastro_usuario'),
    path('logout/', views.logout_user, name='logout_user'),
]
