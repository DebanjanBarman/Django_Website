from django.urls import path
from .views import PgListView  # , PgDetailView
from .views import base, apply, contact, pg_register, pg_profile, search, about

urlpatterns = [
    path('', PgListView.as_view(), name="home"),
    path('pg/<int:pk>/', base, name="pg-detail"),
    path('pg/<int:pk>/apply/', apply, name="apply"),
    path('contact/', contact, name="contact"),
    path('search/', search, name="search"),
    path('pg_register/', pg_register, name="pg_register"),
    path('pg_profile/', pg_profile, name="pg_profile"),
    path('about/', about, name="about"),
]
