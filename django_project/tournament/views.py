from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib import messages
from django.conf import settings
from django.core.mail import send_mail
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Tournament
from django.contrib.auth.models import User


def home(request):
    context = {
        'tournaments': Tournament.objects.all()
    }
    return render(request, 'tournament/tournaments.html', context)


class TourListView(ListView):
    model = Tournament
    template_name = 'tournament/tournaments.html'  # <app>/<model>_<viewtype>.html
    context_object_name = 'tournaments'
    ordering = ['-date_posted']


class TourDetailView(DetailView):
    model = Tournament


class TourCreateView(LoginRequiredMixin, CreateView):
    model = Tournament
    fields = ['title', 'area', 'school', 'time_start', 'date_start', 'content']

    def form_valid(self, form):
        form.instance.author = self.request.user
        receivers = []
        for user in User.objects.all():
            receivers.append(user.email)

        send_mail('Nowy turniej!', 'Na naszej stronie zosrał ogłoszony nowy turniej! http://localhost:8000/tournaments/', settings.EMAIL_HOST_USER,
                  receivers, fail_silently='True')
        return super().form_valid(form)


class TourUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Tournament
    fields = ['title', 'area', 'school', 'time_start', 'date_start', 'content', 'first_place', 'second_place', 'third_place']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        tour = self.get_object()
        if self.request.user == tour.author:
            return True
        return False


class TourDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Tournament
    success_url = '/tournaments/'

    def test_func(self):
        tour = self.get_object()
        if self.request.user == tour.author:
            return True
        return False








