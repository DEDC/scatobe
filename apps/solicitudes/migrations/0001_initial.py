# Generated by Django 2.1.5 on 2019-04-16 18:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categorias',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Facturas',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('factura', models.FileField(upload_to='facturas/')),
                ('nombre', models.CharField(blank=True, max_length=50, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='FanPages',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Gerentes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Imagenes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('imagen', models.ImageField(upload_to='screens/')),
                ('nombre', models.CharField(blank=True, max_length=50, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Solicitudes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField()),
                ('folio', models.CharField(max_length=10)),
                ('post', models.DateField()),
                ('link', models.CharField(max_length=200)),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='solicitudes.Categorias')),
                ('fanPage', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='solicitudes.FanPages')),
                ('gerente', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='solicitudes.Gerentes')),
            ],
        ),
        migrations.CreateModel(
            name='Tipos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Zonas',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.AddField(
            model_name='solicitudes',
            name='tipo',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='solicitudes.Tipos'),
        ),
        migrations.AddField(
            model_name='solicitudes',
            name='zona',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='solicitudes.Zonas'),
        ),
        migrations.AddField(
            model_name='imagenes',
            name='solicitud',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='solicitudes.Solicitudes'),
        ),
        migrations.AddField(
            model_name='gerentes',
            name='zona',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='solicitudes.Zonas'),
        ),
        migrations.AddField(
            model_name='fanpages',
            name='zona',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='solicitudes.Zonas'),
        ),
        migrations.AddField(
            model_name='facturas',
            name='solicitud',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='solicitudes.Solicitudes'),
        ),
    ]
