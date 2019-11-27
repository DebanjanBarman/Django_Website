from django.db import models
from django.utils import timezone
from django.db.models.signals import pre_save
from django.contrib.auth.models import User


# from django.contrib.auth.models import (
#     AbstractBaseUser, BaseUserManager
# )
#
#
# class PgOwnerManager(BaseUserManager):
#     def create_user(self, email, password=None, is_active=True, is_staff=False, is_admin=False):
#         if not email:
#             raise ValueError("Users Must have an email")
#         if not password:
#             raise ValueError('Must have password')
#         user_obj = self.model(
#             self.normalize_email(email)
#         )
#         user_obj.set_password(password)
#         user_obj.staff = is_staff
#         user_obj.admin = is_admin
#         user_obj.active = is_active
#         user_obj.save(using=self._db)
#         return user_obj
#
#     def create_staffuser(self, email, password=None):
#         user = self.create_user(
#             email,
#             password=password,
#             is_staff=True
#         )
#         return user
#
#     def create_superuser(self, email, password=None):
#         user = self.create_user(
#             email,
#             password=password,
#             is_admin=True
#         )
#         return user
#
#
# class PgOwner(AbstractBaseUser):
#     email = models.EmailField(max_length=255, unique=True)
#     active = models.BooleanField(default=True)
#     staff = models.BooleanField(default=False)
#     admin = models.BooleanField(default=False)
#     USERNAME_FIELD = 'email'
#     REQUIRED_FIELDS = []
#     objects = PgOwnerManager()
#
#     def __str__(self):
#         return self.email
#
#     def get_full_name(self):
#         return self.email
#
#     def get_short_name(self):
#         return self.email
#
#     @property
#     def is_staff(self):
#         return self.staff
#
#     @property
#     def is_admin(self):
#         return self.admin
#
#     @property
#     def is_active(self):
#         return self.active
#

class PgDetail(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    pgName = models.CharField(max_length=200)
    pgMail = models.EmailField()
    pgPhone = models.CharField(max_length=14)
    pgCity = models.CharField(max_length=200)
    pgLocation = models.CharField(max_length=200)
    pgAddress = models.TextField(max_length=500)
    pgImage1 = models.ImageField(upload_to='pg_pics')
    pgImage2 = models.ImageField(upload_to='pg_pics')
    pgImage3 = models.ImageField(upload_to='pg_pics')
    pgRating = models.FloatField()
    pgDescription = models.TextField(max_length=5000)
    pgRules = models.TextField(max_length=1000)
    pgFood = models.TextField(max_length=500)
    pgRoom = models.IntegerField()
    pgBathroom = models.BooleanField(default=True)
    pgWiFi = models.BooleanField(default=False)
    pgLaundry = models.BooleanField(default=True)
    pgCharge = models.IntegerField()
    pgFor = models.CharField(max_length=20, default='Boys and Girls')

    # def __str__(self):
    #     return f"{self.user.username} PG DETAILS"

# class Comment(models.Model):
#     post = models.ForeignKey(PgDetail, on_delete=models.CASCADE)
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#     content = models.TextField(max_length=1000)
#     timestamp = models.DateTimeField(auto_now_add=True)
#
#     def __str__(self):
#         return '{}-{}'.format(self.post.title, str(self.user.username))
