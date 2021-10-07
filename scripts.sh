GET Request without auth
------------------------

curl -H 'Accept: application/json; indent=4' http://127.0.0.1:8000/bookmarks


GET Request with auth
------------------------

curl -H 'Accept: application/json; indent=4' http://127.0.0.1:8000/bookmarks -u username:password


POST REQUEST
------------

curl -X POST http://127.0.0.1:8000/bookmarks/ -H "Content-Type: application/json" -d '{"title":"facebook","url":"https://www.facebook.com"}' -u username:password


PUT Request
------------

curl -X PUT http://127.0.0.1:8000/bookmarks/2/ -H "Content-Type: application/json" -u username:password -d '{"title": "facebook cia","url":"https://www.facebook.com"}'


DELETE Request
--------------

curl -X DELETE http://127.0.0.1:8000/bookmarks/1/