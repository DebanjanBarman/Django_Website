from django.conf import settings
from django.contrib import messages
from django.contrib.admin.templatetags.admin_list import pagination
from django.contrib.auth.decorators import login_required
from django.core.mail import send_mail
from django.db.models import Q
from django.shortcuts import render, redirect
from .forms import PgUserRegisterForm, PgUserUpdateForm, PgDetailUpdateForm
from .models import PgDetail
from django.views.generic import ListView, DetailView


# Create your views here.

def about(request):
    return render(request, 'about.html')


def home(request):
    pg_details = PgDetail.objects.all()
    return render(request, 'home.html', {'pg_details': pg_details})


class PgListView(ListView):
    model = PgDetail
    template_name = 'home.html'
    context_object_name = 'pg_details'
    ordering = ['-pgRating']
    paginate_by = 3


# class PgDetailView(DetailView):
#     model = PgDetail
#

def base(request, pk):
    singledetail = PgDetail.objects.get(id=pk)
    return render(request, 'safe.html', {'details': singledetail})


@login_required
def apply(request, pk):
    mail_details = PgDetail.objects.get(id=pk)
    pg_mail = mail_details.pgMail

    if request.method == 'POST':
        name = request.POST['name']
        phone = request.POST['phone']
        email = request.POST['email']
        message = request.POST['message']
        booking_mail = f"Hi \nI am {name} \nMy Phone Number - {phone} \nMy Email Id - {email} \nMy message \n{message}\n"

        send_mail(
            'PG BOOKING',
            booking_mail,
            settings.EMAIL_HOST_USER,
            ['debanjanbarman123456789@gmail.com', pg_mail],
            fail_silently=False
        )
        messages.success(request, f"Application Sent Successfully\nPlease Wait for our Response\n")
        return redirect('home')
    return render(request, 'apply.html')


# @login_required
def contact(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']
        mail = f"Hi \nI'm {name}  \nMy emails is   '{email}' \nSubject: '{subject}'  \nMy query is   '{message}'"

        send_mail(
            'WEBSITE QUERY',
            mail,
            settings.EMAIL_HOST_USER,
            ['debanjanbarman123456789@gmail.com', 'deba.barman@outlook.com'],
            fail_silently=False
        )
        messages.success(request, f"Mail Sent Successfully\nWe'll Contact You Soon\n")
        return redirect('contact')
    return render(request, 'contact.html', {})


def search(request):
    template = 'home.html'
    query = request.POST['q']
    results = PgDetail.objects.filter(
        Q(pgLocation__icontains=query) |
        Q(pgCity__icontains=query) |
        Q(pgAddress__icontains=query) |
        Q(pgCharge__icontains=query) |
        Q(pgImage1__icontains=query) |
        Q(pgName__icontains=query))

    return render(request, 'search.html', {'context': results})


def pg_register(request):
    if request.method == 'POST':
        form = PgUserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            name = request.POST['username']
            email = request.POST['email']
            phone = request.POST['phone']
            pg_reg_mail = f"Username = '{name} \nEmail = '{email} \nPhone = '{phone}"
            send_mail(
                'PG Register',
                pg_reg_mail,
                settings.EMAIL_HOST_USER,
                ['debanjanbarman123456789@gmail.com', 'deba.barman@outlook.com'],
                fail_silently=False
            )
            username = form.cleaned_data.get('username')
            messages.success(request, f"Account Created for {username}! as PG Owner")
            return redirect('home')
    else:
        form = PgUserRegisterForm()
    context = {
      'form': form
    }
    return render(request, 'pg_register.html', context)


@login_required
def pg_profile(request):
    puu_form = PgUserUpdateForm(instance=request.user)
    pdu_form = PgDetailUpdateForm(request.user.PgDetail)
    context = {
        'puu_form': puu_form,
        'pdu_form': pdu_form
    }

    return redirect(request, 'pg_profile.html', context)
