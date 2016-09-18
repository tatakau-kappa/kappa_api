## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/26/videos/comments HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 397
Content-Type: application/json; charset=utf-8
ETag: W/"73dbf8c941b125c75f4e9eaa17a95046"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5732fe11-75b1-4816-a630-8e7b70fb2253
X-Runtime: 0.025155
X-XSS-Protection: 1; mode=block

[
  {
    "id": 4,
    "contents": "コメントだよー",
    "user": {
      "id": 26,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 5,
    "contents": "コメントだよー",
    "user": {
      "id": 26,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 6,
    "contents": "コメントだよー",
    "user": {
      "id": 26,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
