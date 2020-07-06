from django.urls import path
from .views import TourListView, TourDetailView, TourCreateView, TourUpdateView, TourDeleteView
from . import views

urlpatterns = [
    path('', TourListView.as_view(), name='tournament-tournaments'),
    path('tour/<int:pk>/', TourDetailView.as_view(), name='tournament-detail'),
    path('tour/new/', TourCreateView.as_view(), name='tournament-create'),
    path('tour/<int:pk>/update/', TourUpdateView.as_view(), name='tournament-update'),
    path('tour/<int:pk>/delete/', TourDeleteView.as_view(), name='tournament-delete'),
]
