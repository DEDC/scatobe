# Generated by Django 2.1.5 on 2019-04-09 22:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('solicitudes', '0003_auto_20190409_1729'),
    ]

    operations = [
        migrations.AlterField(
            model_name='imagenes',
            name='nombre',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='imagenes',
            name='solicitud',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='solicitudes.Solicitudes'),
        ),
    ]
