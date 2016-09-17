## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/358/videos/comments HTTP/1.1
Accept: application/json
Authorization: 358:GksAEfga_2uApF4G55yx
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 406
Content-Type: application/json; charset=utf-8
ETag: W/"2fdcd18dfed1ed87a8298d8b110be72d"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4568e1fb-d891-4c9e-b53d-325cd5b9b81e
X-Runtime: 0.019324
X-XSS-Protection: 1; mode=block

[
  {
    "id": 101,
    "contents": "コメントだよー",
    "user": {
      "id": 358,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 102,
    "contents": "コメントだよー",
    "user": {
      "id": 358,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 103,
    "contents": "コメントだよー",
    "user": {
      "id": 358,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
