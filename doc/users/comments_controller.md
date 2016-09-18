## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/75/videos/comments HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 400
Content-Type: application/json; charset=utf-8
ETag: W/"7a9be04a0e325c5770690551201c0805"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 13d4070d-7626-46dd-8c2c-4b7dddcb40a7
X-Runtime: 0.034484
X-XSS-Protection: 1; mode=block

[
  {
    "id": 22,
    "contents": "コメントだよー",
    "user": {
      "id": 75,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 23,
    "contents": "コメントだよー",
    "user": {
      "id": 75,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 24,
    "contents": "コメントだよー",
    "user": {
      "id": 75,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
