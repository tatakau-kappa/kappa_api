## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/152/videos/comments HTTP/1.1
Accept: application/json
Authorization: 152:R8Fbobdgxz96Ex2sX78D
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
ETag: W/"e86be0b65c507cf78176d628a3588d5d"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 701740ff-589c-465a-b85b-fa5f94f1025b
X-Runtime: 0.018654
X-XSS-Protection: 1; mode=block

[
  {
    "id": 43,
    "contents": "コメントだよー",
    "user": {
      "id": 152,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 44,
    "contents": "コメントだよー",
    "user": {
      "id": 152,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 45,
    "contents": "コメントだよー",
    "user": {
      "id": 152,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
