## POST /videos/:video_id/comments
Create comment of video.

### Example

#### Request
```
POST /videos/273/comments HTTP/1.1
Accept: application/json
Authorization: 357:SGJAYBuQNGatZ6oYAD44
Content-Length: 36
Content-Type: application/json
Host: www.example.com

{
  "contents": "コメントだよー"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 134
Content-Type: application/json; charset=utf-8
ETag: W/"587d853333bf8939cd2df47b428c297a"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e250aebe-777b-4865-a0dc-a085f806178e
X-Runtime: 0.015537
X-XSS-Protection: 1; mode=block

{
  "id": 100,
  "contents": "コメントだよー",
  "user": {
    "id": 357,
    "screen_name": "Kappa Taro",
    "image_url": "https://facebook.com/hgoe.jpg"
  }
}
```
