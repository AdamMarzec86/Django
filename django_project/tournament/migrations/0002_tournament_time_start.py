# Generated by Django 2.2.4 on 2019-11-25 17:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tournament', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='tournament',
            name='time_start',
            field=models.TimeField(blank=True, null=True),
        ),
    ]
