from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse




class Tournament(models.Model):
    AREA_CHOICES = (("Dolnośląskie", "Dolnośląskie"),("kujawsko-pomorskie", "Kujawsko-pomorskie"), ("Lubelskie", "Lubelskie"),
                    ("Lubuskie", "Lubuskie"),("Łódzkie", "Łódzkie"), ("Małopolskie", "Małopolskie"), ("Mazowieckie", "Mazowieckie"),
                    ("Opolskie", "Opolskie"), ('Podkarpackie', 'Podkarpackie'), ("Podlaskie", "Podlaskie"), ("Pomorskie", "Pomorskie"),
                    ("Śląskie", "Śląskie"), ('Świętokrzyskie', 'Świętokrzyskie'), ("Warmińsko-mazurskie", "Warmińsko-mazurskie"),
                    ("Wielkopolskie", "Wielkopolskie"), ("Zachodniopomorskie", "Zachodniopomorskie"))
    title = models.CharField(max_length=100, verbose_name='Tytuł')
    area = models.CharField(max_length=100, choices=AREA_CHOICES, verbose_name='Województwo')
    school = models.CharField(default="", max_length=100, verbose_name='Szkoła')
    time_start = models.TimeField(null=True, blank=True, verbose_name='Godzina startu')
    date_start = models.DateField(null=True, blank=True, verbose_name='Data startu')
    date_posted = models.DateTimeField(default=timezone.now, verbose_name='Data dodania')
    content = models.TextField(verbose_name='Opis')
    author = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='Autor')
    first_place = models.CharField(default="",max_length=100, verbose_name='Pierwsze miejsce')
    second_place = models.CharField(default="", max_length=100, verbose_name='Drugie miejsce')
    third_place = models.CharField(default="", max_length=100, verbose_name='Trzecie miejsce')

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('tournament-detail', kwargs={'pk': self.pk})

