# Generated by Django 4.2.4 on 2023-08-07 15:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mak_feedback', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='instructors',
            name='five',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='instructors',
            name='four',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='instructors',
            name='one',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='instructors',
            name='third',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='instructors',
            name='two',
            field=models.CharField(max_length=100, null=True),
        ),
    ]