# Generated by Django 4.2.4 on 2023-08-09 16:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mak_feedback', '0005_rename_five_facilities_awareness_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='courses',
            name='assesement',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='courses',
            name='engagement',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='courses',
            name='recommend',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='courses',
            name='variety',
            field=models.CharField(max_length=100, null=True),
        ),
    ]