# Generated by Django 4.2.4 on 2023-08-08 11:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mak_feedback', '0003_facilities_five_facilities_four_facilities_one_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='instructors',
            old_name='five',
            new_name='learning_environment',
        ),
        migrations.RenameField(
            model_name='instructors',
            old_name='four',
            new_name='lecturer_response',
        ),
        migrations.RenameField(
            model_name='instructors',
            old_name='one',
            new_name='overall_experience',
        ),
        migrations.RenameField(
            model_name='instructors',
            old_name='third',
            new_name='students_engagement',
        ),
        migrations.RenameField(
            model_name='instructors',
            old_name='two',
            new_name='students_support',
        ),
    ]
