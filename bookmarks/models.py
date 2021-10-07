from django.db import models

# Create your models here.

class Bookmark(models.Model):
    title = models.CharField(max_length=200)
    url = models.URLField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
