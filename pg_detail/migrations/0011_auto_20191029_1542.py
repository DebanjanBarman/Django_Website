# Generated by Django 2.2.6 on 2019-10-29 15:42

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pg_detail', '0010_auto_20191029_1539'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pgdetail',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.DeleteModel(
            name='PgOwner',
        ),
    ]
