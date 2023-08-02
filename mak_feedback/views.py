from django.shortcuts import render,redirect
from django.http import HttpResponse 
from .models import Courses
from .models import Instructors
from . models import Facilities
from django.contrib import messages
from django.urls import reverse
from django.contrib.auth.models import User,auth
import pickle

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
    
def stat(request):
    if request.user.is_authenticated:
        
        courses_no = Courses.objects.all().count()
        instructor_no =Instructors.objects.all().count()
        facilities_no = Facilities.objects.all().count()
        
        cosis_c = Courses.objects.filter(college = 'COSIS').count()
        cosis_f = Facilities.objects.filter(college = 'COSIS').count()
        cosis_i = Instructors.objects.filter(college = 'COSIS').count()
        cosis_sum = cosis_c+cosis_f+cosis_i
        
        cedat_c = Courses.objects.filter(college = 'CEDAT').count()
        cedat_f = Facilities.objects.filter(college = 'CEDAT').count()
        cedat_i = Instructors.objects.filter(college = 'CEDAT').count()
        cedat_sum = cedat_c+cedat_f+cedat_i
        
        cees_c = Courses.objects.filter(college = 'CEES').count()
        cees_f = Facilities.objects.filter(college = 'CEES').count()
        cees_i = Instructors.objects.filter(college = 'CEES').count()
        cees_sum = cees_c+cees_f+cees_i
        
        conas_c = Courses.objects.filter(college = 'CONAS').count()
        conas_f = Facilities.objects.filter(college = 'CONAS').count()
        conas_i = Instructors.objects.filter(college = 'CONAS').count()
        conas_sum = conas_c+conas_f+conas_i
        
        cobams_c = Courses.objects.filter(college = 'COBAMS').count()
        cobams_f = Facilities.objects.filter(college = 'COBAMS').count()
        cobams_i = Instructors.objects.filter(college = 'COBAMS').count()
        cobams_sum = cobams_c+cobams_f+cobams_i
        
        caes_c = Courses.objects.filter(college = 'CAES').count()
        caes_f = Facilities.objects.filter(college = 'CAES').count()
        caes_i = Instructors.objects.filter(college = 'CAES').count()
        caes_sum = caes_c+caes_f+caes_i
        
        chuss_c = Courses.objects.filter(college = 'CHUSS').count()
        chuss_f = Facilities.objects.filter(college = 'CHUSS').count()
        chuss_i = Instructors.objects.filter(college = 'CHUSS').count()
        chuss_sum = chuss_c + chuss_f + chuss_i
       
        return render(request,"statistics.html",
                      {'courses_no':courses_no,
                       'facilities_no':facilities_no,
                       'instructors_no':instructor_no,
                       'cobams_sum':cobams_sum,
                       'cosis_sum':cosis_sum,
                       'conas_sum':conas_sum,
                       'caes_sum':caes_sum,
                       'cedat_sum':cedat_sum,
                       'cees_sum':cees_sum,
                       'chuss_sum':chuss_sum,
                       
                       
                       })
    else:
        return redirect("/login")
        
        
def logout(request):
    auth.logout(request)
    return redirect('/login')
def about(request):
    return render(request,"about.html")

def contact(request):
    return render(request,"contact.html")
def team(request):
    return render(request,"team.html")
