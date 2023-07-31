from django.shortcuts import render,redirect
from django.http import HttpResponse 
from .models import Courses
from .models import Instructors
from . models import Facilities
from django.contrib import messages
from django.urls import reverse
from django.contrib.auth.models import User,auth

# Create your views here.
def index(request):
    return render(request,"index.html")
def facilities(request):
    if request.method =='POST':
            try:
                fname = request.POST['fname']
                lname = request.POST['lname']
                student_number = request.POST['student_number']
                registration_number = request.POST['registration_number']
                level = request.POST['gridRadios']
                college = request.POST['college']
                program = request.POST['program']
                facility= request.POST['facility']
                wad= request.POST['charge']
                desc = request.POST['description']
                
                
                Facilities(first_name=fname,last_name=lname,student_number=student_number,registration_number=registration_number,level=level,college=college,program=program,facility=facility,waden=wad,argument=desc).save();
                messages.info(request,'response published successfully')
                return redirect("facilities")
            except Exception as e:
                messages.info(request,'Please fill all fields correctly !',e)
                return redirect ("facilities")
    else:
        return render(request,"facilities.html")
def instructors(request):
    if request.method =='POST':
            try:
                fname = request.POST['fname']
                lname = request.POST['lname']
                student_number = request.POST['student_number']
                registration_number = request.POST['registration_number']
                level = request.POST['gridRadios']
                college = request.POST['college']
                program = request.POST['program']
                course_unit= request.POST['course_unit']
                code = request.POST['code']
                instructor = request.POST['instructor']
                desc = request.POST['description']
                
                Instructors(first_name=fname,last_name=lname,student_number=student_number,registration_number=registration_number,level=level,college=college,program=program,course_unit=course_unit,course_code=code,course_instructor=instructor,argument=desc).save();
                messages.info(request,'response published successfully')
                return redirect("instructors")
            except Exception as e:
                messages.info(request,'Please fill all fields correctly !',e)
                return redirect ("instructors")
    else:
        return render(request,"instructors.html")
def courses(request):
    if request.method =='POST':
            try:
                fname = request.POST['fname']
                lname = request.POST['lname']
                student_number = request.POST['student_number']
                registration_number = request.POST['registration_number']
                level = request.POST['gridRadios']
                college = request.POST['college']
                program = request.POST['program']
                course_unit= request.POST['course_unit']
                code = request.POST['code']
                instructor = request.POST['instructor']
                desc = request.POST['description']
                
                Courses(first_name=fname,last_name=lname,student_number=student_number,registration_number=registration_number,level=level,college=college,program=program,course_unit=course_unit,course_code=code,course_instructor=instructor,argument=desc).save();
                messages.info(request,'response published successfully')
                return redirect("courses")
            except Exception as e:
                messages.info(request,'Please fill all fields correctly !')
                return redirect ("courses")
    else:
        return render(request,"courses.html")
def response(request):
    if request.user.is_authenticated:
        
        courses = Courses.objects.all()
        instructors = Instructors.objects.all()
        facilities = Facilities.objects.all()
        return render(request,"responses.html",{'courses':courses,'instructors':instructors,'facilities':facilities})
    else:
        return redirect ("/login")
        
def deletec(request,id):
    Courses.objects.get(id=id).delete()
    messages.info(request,'Response about the course deleted successfully')
    return redirect(reverse("response"))
def deletef(request,id):
    Facilities.objects.get(id=id).delete()
    messages.info(request,'Response about the facility deleted successfully')
    return redirect(reverse("response"))
def deletei(request,id):
    Instructors.objects.get(id=id).delete()
    messages.info(request,'Response about the instructor deleted successfully')
    return redirect(reverse("response"))
def login(request):
    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]
        user = auth.authenticate(username = username, password = password)
        if user is not None:
            auth.login(request,user)
            return redirect("response")
        else:
            messages.info(request,'Invalid credentials !')
            return redirect("/login")

    else:
        return render(request,"login.html")
def logout(request):
    auth.logout(request)
    return redirect('/login')
def about(request):
    return render(request,"about.html")

def contact(request):
    return render(request,"contact.html")
def team(request):
    return render(request,"team.html")