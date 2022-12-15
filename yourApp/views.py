from django.shortcuts import render


# Create your views here.
def index_view(request):
    return render(request, "yourApp/index.html", {})


def accessibility_view(request):
    return render(request, "yourApp/accessibility.html", {})
