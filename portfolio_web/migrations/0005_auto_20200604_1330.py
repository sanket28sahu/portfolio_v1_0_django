# Generated by Django 3.0.3 on 2020-06-04 17:30

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_web', '0004_auto_20200531_2358'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 6, 4, 13, 30, 47, 210069)),
        ),
        migrations.AlterField(
            model_name='education',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 6, 4, 13, 30, 47, 211225)),
        ),
        migrations.AlterField(
            model_name='person',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 6, 4, 13, 30, 47, 209125)),
        ),
        migrations.AlterField(
            model_name='skills',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 6, 4, 13, 30, 47, 213060)),
        ),
        migrations.AlterField(
            model_name='skills',
            name='skill_description',
            field=models.CharField(default='', max_length=350),
        ),
        migrations.AlterField(
            model_name='work',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 6, 4, 13, 30, 47, 212063)),
        ),
        migrations.CreateModel(
            name='Projects',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('project_name', models.CharField(max_length=150)),
                ('project_image', models.FileField(blank=True, upload_to='media/project/')),
                ('proj_details', models.CharField(max_length=350)),
                ('modified_date', models.DateTimeField(default=datetime.datetime(2020, 6, 4, 13, 30, 47, 213155))),
                ('row_ref_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='portfolio_web.Person')),
            ],
            options={
                'db_table': 'projects_table',
            },
        ),
    ]
