## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/27/videos/comments HTTP/1.1
Accept: application/json
Authorization: 27:z2ByA5nx1VXAzV4LFDTL
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
ETag: W/"53db5a89d7272e74564e14b4d7f17dca"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f14a7e1d-d565-41fb-b86e-0e30a4f5038e
X-Runtime: 0.025716
X-XSS-Protection: 1; mode=block

[
  {
    "id": 5,
    "contents": "コメントだよー",
    "user": {
      "id": 27
    }
  },
  {
    "id": 6,
    "contents": "コメントだよー",
    "user": {
      "id": 27
    }
  },
  {
    "id": 7,
    "contents": "コメントだよー",
    "user": {
      "id": 27
    }
  }
]
```
