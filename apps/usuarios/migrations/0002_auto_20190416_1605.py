# Generated by Django 2.1.5 on 2019-04-16 21:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('usuarios', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='rol',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='usuarios.Roles'),
        ),
    ]