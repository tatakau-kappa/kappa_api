## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/127/videos/comments HTTP/1.1
Accept: application/json
Authorization: 127:SyYnjxZ-x_uf2u2y4-G-
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 403
Content-Type: application/json; charset=utf-8
ETag: W/"4fef7fee2122253f7f11417f9fcc1007"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4f7fcd58-8784-48fc-abbb-1a4fbd0272d0
X-Runtime: 0.017444
X-XSS-Protection: 1; mode=block

[
  {
    "id": 33,
    "contents": "コメントだよー",
    "user": {
      "id": 127,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 34,
    "contents": "コメントだよー",
    "user": {
      "id": 127,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 35,
    "contents": "コメントだよー",
    "user": {
      "id": 127,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
