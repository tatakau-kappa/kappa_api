## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/171/videos/comments HTTP/1.1
Accept: application/json
Authorization: 171:haQAq3XsVjHFVcVvgqkB
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
ETag: W/"4886f2b300abe6db4312f67a059401fd"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a03109a0-fb9a-4474-9a7d-456a1ad70f66
X-Runtime: 0.019644
X-XSS-Protection: 1; mode=block

[
  {
    "id": 49,
    "contents": "コメントだよー",
    "user": {
      "id": 171,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 50,
    "contents": "コメントだよー",
    "user": {
      "id": 171,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 51,
    "contents": "コメントだよー",
    "user": {
      "id": 171,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
