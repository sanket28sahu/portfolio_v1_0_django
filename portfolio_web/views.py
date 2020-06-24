from django.shortcuts import render

from portfolio_web.models import Person, Details, Skills, Work, Projects, Education

posts = [
    {
        'author'
    }
]


def home(request):
    # Getting all person table data (Sanket details)
    person_data = Person.objects.all()
    # filter details table data according to head for placing in view without for (by making a list)
    title_data = Details.objects.get(info_head="Prof_title")
    phoneno_data = Details.objects.get(info_head="phone_no")
    email_data = Details.objects.get(info_head="Email")
    fb_link = Details.objects.get(info_head="facebook_link")
    linkedin_link = Details.objects.get(info_head="linkedin_link")
    resume_link = Details.objects.get(info_head="Resume Link")
    sex = Details.objects.get(info_head="sex")
    address = Details.objects.get(info_head="address")
    lang_knwn = Details.objects.get(info_head="Languages Known")
    strength = Details.objects.get(info_head="strength")
    added_strength = Details.objects.get(info_head="added_strength")
    # making List
    details_single_data = {
        'profile_title': title_data.info_detail,
        'phoneno_data': phoneno_data.info_detail,
        'email_data': email_data.info_detail,
        'fb_link': fb_link.info_detail,
        'linkedin_link': linkedin_link.info_detail,
        'resume_link': resume_link.info_detail,
        'sex': sex.info_detail,
        'address': address.info_detail,
        'lang_knwn': lang_knwn.info_detail,
        'strength': strength.info_detail,
        'added_strength': added_strength.info_detail,
    }

    # Fetching Skills table data
    skills_data = Skills.objects.all()

    # Fetching Skills table data
    project_data = Projects.objects.all()

    # Fetching timeline data
    timeline_edu_data = Education.objects.all().order_by('-completion_yr')
    timeline_work_data = Work.objects.all().order_by('-modified_date')


    # Pass all variables to final html view page.
    return render(request, "portfolio/home.html",
                  {'person_data': person_data, 'details_singledata': details_single_data, 'skills_data': skills_data,
                   'projects_data': project_data, 'timeline_edu_data': timeline_edu_data,
                   'timeline_work_data': timeline_work_data})


def original(request):
    return render(request, "index.html")
