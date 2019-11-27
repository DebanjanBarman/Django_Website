from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import PgDetail


class PgUserRegisterForm(UserCreationForm):
    email = forms.EmailField()
    phone = forms.CharField()

    class Meta:
        model = User
        fields = ['username', 'email', 'phone', 'password1', 'password2']


class PgUserUpdateForm(forms.ModelForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email']


class PgDetailUpdateForm(forms.ModelForm):
    class Meta:
        model = PgDetail
        fields = ['pgName', 'pgMail', 'pgPhone', 'pgCity', 'pgLocation', 'pgAddress', 'pgImage1', 'pgImage2',
                  'pgImage3', 'pgRating', 'pgDescription', 'pgRules', 'pgFood', 'pgRoom', 'pgBathroom', 'pgWiFi',
                  'pgLaundry', 'pgCharge', 'pgFor']
