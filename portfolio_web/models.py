from datetime import datetime

from django.db import models

JOB_TYPE_CHOICES = (
    ('Full Time', 'Full Time'),
    ('Part Time', 'Part Time'))


# Create your models here.
class Person(models.Model):
    firstname = models.CharField(max_length=20)
    lastname = models.CharField(max_length=20)
    modified_date = models.DateTimeField(default=datetime.now())

    def __str__(self):
        return self.firstname

    class Meta:
        db_table = "person_table"


class Details(models.Model):
    row_ref_id = models.ForeignKey(Person, on_delete=models.CASCADE)
    info_head = models.CharField(max_length=70)
    info_detail = models.CharField(max_length=250)
    modified_date = models.DateTimeField(default=datetime.now())

    def __str__(self):
        return self.info_head

    class Meta:
        db_table = "details_table"


class Education(models.Model):
    row_ref_id = models.ForeignKey(Person, on_delete=models.CASCADE)
    course_name = models.CharField(max_length=100)
    inst_name = models.CharField(max_length=100)
    completion_yr = models.CharField(max_length=100)

    job_type = models.CharField(max_length=15, choices=JOB_TYPE_CHOICES, default='full time')
    description = models.CharField(max_length=350)
    modified_date = models.DateTimeField(default=datetime.now())

    def __str__(self):
        return self.course_name

    class Meta:
        db_table = "edu_table"


class Work(models.Model):
    row_ref_id = models.ForeignKey(Person, on_delete=models.CASCADE)
    company_name = models.CharField(max_length=100)
    start_date = models.CharField(max_length=50)
    end_date = models.CharField(max_length=50)
    job_type = models.CharField(max_length=15, choices=JOB_TYPE_CHOICES, default='Full Time')
    designation = models.CharField(max_length=50)
    Description = models.CharField(max_length=350)
    modified_date = models.DateTimeField(default=datetime.now())

    def __str__(self):
        return self.company_name

    class Meta:
        db_table = "work_table"


class Skills(models.Model):
    row_ref_id = models.ForeignKey(Person, on_delete=models.CASCADE)
    skill_name = models.CharField(max_length=100)
    skill_per_level = models.CharField(max_length=100)
    SKILL_PROF_LEVEL = (
        ('Novice', 'Novice'),
        ('Intermediate', 'Intermediate'),
        ('Advanced', 'Advanced')
    )
    skill_proficiency = models.CharField(max_length=15, choices=SKILL_PROF_LEVEL, default='full time')
    skill_description = models.CharField(max_length=350, default='')
    modified_date = models.DateTimeField(default=datetime.now())

    def __str__(self):
        return self.skill_name

    class Meta:
        db_table = "skills_table"


class Projects(models.Model):
    row_ref_id = models.ForeignKey(Person, on_delete=models.CASCADE)
    project_name = models.CharField(max_length=150)
    project_image = models.FileField(upload_to='project/', blank=True)
    proj_details = models.CharField(max_length=350)
    modified_date = models.DateTimeField(default=datetime.now())

    def __str__(self):
        return self.project_name

    class Meta:
        db_table = "projects_table"
