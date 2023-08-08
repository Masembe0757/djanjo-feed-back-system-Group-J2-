from django.db import models

# Create your models here.
class Courses(models.Model):
    first_name = models.CharField(max_length = 100)
    last_name = models.CharField(max_length = 100)
    student_number = models.CharField(max_length = 100)
    registration_number = models.CharField(max_length = 100)
    level = models.CharField(max_length = 100)
    college = models.CharField(max_length = 100)
    program = models.CharField(max_length = 100)
    course_unit = models.CharField(max_length = 100)
    course_code = models.CharField(max_length = 100)
    course_instructor = models.CharField(max_length = 100)
    argument = models.CharField(max_length = 500)
    
    """
    Description = models.TextField()
    Category = models.TextField()
    Price = models.IntegerField()
    User = models.CharField(max_length = 50)
    Contact = models.TextField()
    
    """
    
class Instructors(models.Model):
    first_name = models.CharField(max_length = 100)
    last_name = models.CharField(max_length = 100)
    student_number = models.CharField(max_length = 100)
    registration_number = models.CharField(max_length = 100)
    level = models.CharField(max_length = 100)
    college = models.CharField(max_length = 100)
    program = models.CharField(max_length = 100)
    course_unit = models.CharField(max_length = 100)
    course_code = models.CharField(max_length = 100)
    course_instructor = models.CharField(max_length = 100)
    argument = models.CharField(max_length = 500)
    learning_environment = models.CharField(max_length = 100 , null= True)
    students_engagement= models.CharField(max_length = 100 , null= True)
    students_support  = models.CharField(max_length = 100 , null= True)
    lecturer_response  = models.CharField(max_length = 100 , null= True)
    overall_experience= models.CharField(max_length = 100 , null= True)
    
    
class Facilities(models.Model):
    first_name = models.CharField(max_length = 100)
    last_name = models.CharField(max_length = 100)
    student_number = models.CharField(max_length = 100)
    registration_number = models.CharField(max_length = 100)
    level = models.CharField(max_length = 100)
    college = models.CharField(max_length = 100)
    program = models.CharField(max_length = 100)
    facility = models.CharField(max_length = 100)
    waden = models.CharField(max_length = 100)
    argument = models.CharField(max_length = 100)
    facilityQuery = models.CharField(max_length = 100 , null= True)
    awareness = models.CharField(max_length = 100 , null= True)
    facilityUsage = models.CharField(max_length = 100 , null= True)
    cleaning = models.CharField(max_length = 100 , null= True)
    rating = models.CharField(max_length = 100 , null= True)
    

