# Generated by Django 3.0.3 on 2020-06-01 03:58

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_web', '0003_auto_20200531_2350'),
    ]

    operations = [
        migrations.AddField(
            model_name='skills',
            name='skill_description',
            field=models.CharField(default='NULL', max_length=350),
        ),
        migrations.AlterField(
            model_name='details',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 5, 31, 23, 58, 51, 29678)),
        ),
        migrations.AlterField(
            model_name='education',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 5, 31, 23, 58, 51, 29678)),
        ),
        migrations.AlterField(
            model_name='person',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 5, 31, 23, 58, 51, 28682)),
        ),
        migrations.AlterField(
            model_name='skills',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 5, 31, 23, 58, 51, 30675)),
        ),
        migrations.AlterField(
            model_name='skills',
            name='skill_proficiency',
            field=models.CharField(choices=[('Novice', 'Novice'), ('Intermediate', 'Intermediate'), ('Advanced', 'Advanced')], default='full time', max_length=15),
        ),
        migrations.AlterField(
            model_name='work',
            name='modified_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 5, 31, 23, 58, 51, 30675)),
        ),
    ]