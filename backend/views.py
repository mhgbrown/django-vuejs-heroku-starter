import logging

from django.shortcuts import render
from django.views.decorators.csrf import ensure_csrf_cookie

logger = logging.getLogger('django')


@ensure_csrf_cookie
def index(request):
    return render(request, 'index.html')
