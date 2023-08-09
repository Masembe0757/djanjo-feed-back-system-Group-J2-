# Makerere University Student Feedback System Documentation

## Introduction and Overview

The Makerere University Student Feedback System is an online platform designed to collect valuable feedback from students about their educational experiences at Makerere University. The system aims to improve the quality of education and enhance the learning environment by providing students with a platform to express their opinions and concerns constructively.

## Table of Contents

1. Installation and Setup
2. Usage and Features
3. Data Models and Database Schema
4. Authentication and Authorization
5. Error Handling
6. Testing
7. Troubleshooting
8. Security Considerations
9. Contributing Guidelines (if open source)
10. Contact Information
11. Acknowledgments

## 1. Installation and Setup

To install and set up the Makerere University Student Feedback System, follow these steps:

**Prerequisites**:
- Python 3.x installed
- Virtual environment (optional but recommended)

1. Clone the repository from GitHub:
git clone https://github.com/Masembe0757/djanjo-feed-back-system-Group-J2-.git
cd makerere-feedback-system


2. (Optional) Create and activate a virtual environment:
- Install virtualenv using pip if not already present in your system


3. Install required dependencies:

4. Configure the database settings in `settings.py`. 

5. Apply database migrations:

6. Create a superuser (administrator) account:

7. Run the development server:


The Makerere University Student Feedback System should now be accessible at `http://127.0.0.1:8000/`.

## 2. Usage and Features

The Makerere University Student Feedback System provides the following features for students, faculty, and administrators:

### For Students:
- Access the system dashboard to view courses and instructors.
- Submit feedback on courses, instructors, and campus facilities.


### For Administrators:
- Access the system dashboard to view feedback for their courses and instructors.
- Respond to student feedback and comments.
- Access  analytics on feedback data.
- Configure system settings and notifications.


## 3. Data Models and Database Schema

The feedback system uses the following data models:

1. `Courses`: Represents feedback about the different courses offered at the university.
2. `Instructors`: Represents feedback about the different instructor or professor teaching a course.
3. `Facilities`: Represents feedback submitted by students, concerning the different facilities.



## 4. Authentication and Authorization

The feedback system uses Django's built-in authentication system for user management. 
Students dont need to log in to submit there feedback.
Administrators have to log in to view the students feedback.

- Students have access to submit feedback .
- Administrators have access to all system features, including user management and student feedback and comments.



## 5. Error Handling

The feedback system incorporates robust error handling to handle unexpected scenarios gracefully. Errors are logged using Django's logging framework, and administrators are notified via email for critical errors.

## 6. Testing

The feedback system includes a comprehensive test suite to ensure its functionality remains consistent during development. To run tests, use the following command:python manage.py test

## 7. Troubleshooting

If you encounter any issues while using the feedback system, please refer to the troubleshooting section [here](troubleshooting.md) for common solutions.


## 8. Security Considerations

The Makerere University Student Feedback System follows industry best practices to ensure the security and privacy of user data. This includes:

- Secure communication using HTTPS.
- Encryption of sensitive data, including passwords.
- Protection against common web application vulnerabilities (e.g., Cross-Site Scripting, SQL Injection, Cross-Site Request Forgery) through input validation and output encoding.
- Regular security audits and vulnerability assessments.
- Restricted access to sensitive data and administrative functionalities.

## 9. Contact Information

For any inquiries, feedback, or support related to the Makerere University Student Feedback System, you can reach out to our support team at:

- Email: makfeedback500@gmail.com
- Telephone: +256 757 271 504
## 10. Acknowledgments

We would like to express our gratitude to the following individuals and organizations for their contributions to the development and improvement of the Makerere University Student Feedback System:

-Masembe Sendi Joseph - Senior Developer
- Ochieng Devote Boniface - Tech Lead
- Aparo Cecilia - Frontend Developer
- Kabenge Isham - Team Lead
- Mukisa Vaniah Christian- Project Lead


## Conclusion

Thank you for choosing the Makerere University Student Feedback System! We hope that this documentation provides you with the necessary information to make the most out of the system. If you have any questions or need further assistance, don't hesitate to contact our support team.

Happy feedback sharing, and we look forward to continuously enhancing the learning experience at Makerere University with your valuable feedback!

---
This documentation is maintained and updated by the Makerere University Student Feedback System Development Team. Last Updated: [Date].

