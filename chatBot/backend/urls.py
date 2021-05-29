from django.urls import path
from rest_framework import routers
from .viewsets import TestViewset
from . import views

urlpatterns = [
    path('', views.index, name='index'),
]

router = routers.DefaultRouter()
router.register('api/test', TestViewset)

urlpatterns = urlpatterns + router.urls