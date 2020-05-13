from django.shortcuts import render

posts = [
    {
        'author'
    }
]


def home(request):
    return render(request, "portfolio/home.html")


def original(request):
    return render(request, "index.html")
