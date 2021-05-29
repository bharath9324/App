from backend.models import Test
from rest_framework import viewsets, permissions
from .serializers import TestSerializer

class TestViewset(viewsets.ModelViewSet):
	queryset = Test.objects.all()
	permission_classes = [
		permissions.AllowAny
	]
	serializer_class = TestSerializer