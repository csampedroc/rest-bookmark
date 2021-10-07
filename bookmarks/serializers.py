from django.contrib.auth.models import User
from rest_framework import serializers

from .models import Bookmark


class BookmarkSerializer(serializers.ModelSerializer):

    created_by = serializers.ReadOnlyField(source='owner.username')

    class Meta:
        model = Bookmark
        fields = ['id', 'title', 'url', 'created_by']

class UserSerializer(serializers.ModelSerializer):
    snippets = serializers.PrimaryKeyRelatedField(many=True, queryset=Bookmark.objects.all())

    class Meta:
        model = User
        fields = ['id', 'username', 'bookmarks']
