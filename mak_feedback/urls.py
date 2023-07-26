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
    path('contact',views.contact, name ="contact"),
    path('team',views.team, name ="team"),
    
    
]