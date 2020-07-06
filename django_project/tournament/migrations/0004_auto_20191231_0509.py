# Generated by Django 2.2.4 on 2019-12-31 04:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tournament', '0003_tournament_school'),
    ]

    operations = [
        migrations.AddField(
            model_name='tournament',
            name='first_place',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AddField(
            model_name='tournament',
            name='second_place',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AddField(
            model_name='tournament',
            name='third_place',
            field=models.CharField(default='', max_length=100),
        ),
    ]