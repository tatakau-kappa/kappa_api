## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/30/videos/comments HTTP/1.1
Accept: application/json
Authorization: 30:YvopQQEFWSaAJgGzafaV
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 184
Content-Type: application/json; charset=utf-8
ETag: W/"4b27d115578d2170517ad085b8869c31"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a7d08298-0bf4-4ab9-a103-5bf9784574a7
X-Runtime: 0.046170
X-XSS-Protection: 1; mode=block

[
  {
    "id": 6,
    "contents": "コメントだよー",
    "user": {
      "id": 30
    }
  },
  {
    "id": 7,
    "contents": "コメントだよー",
    "user": {
      "id": 30
    }
  },
  {
    "id": 8,
    "contents": "コメントだよー",
    "user": {
      "id": 30
    }
  }
]
```
