from django.urls import path
from . import views



urlpatterns = [
    path('',views.index, name ="index"),
    #forms
    path('courses',views.courses, name ="courses"),
    path('facilities',views.facilities, name ="facilities"),
    path('instructors',views.instructors, name ="instructors"),
    
    #pages
    path('about',views.about, name ="about"),
    path('login',views.login, name ="login"),
    path('logout',views.logout, name ="logout"),
    path('contact',views.contact, name ="contact"),
    path('team',views.team, name ="team"),
    path('responses',views.response, name ="response"),
    path('statistics',views.stat, name ="statistics"),
    
    
    #Eli
    path('deletec/<int:id>', views.deletec, name = "deletec"),
    path('deletef/<int:id>', views.deletef, name = "deletef"),
    path('deletei/<int:id>', views.deletei, name = "deletei"),
    
    
]