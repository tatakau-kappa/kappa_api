## GET /videos/:id
Redirect video.

### Example

#### Request
```
GET /videos/80 HTTP/1.1
Accept: application/json
Authorization: 117:zrFWUrQGjTs_rzwGB_XB
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 302
Cache-Control: no-cache
Content-Length: 128
Content-Type: text/html; charset=utf-8
Location: https://d2nfxe3r64iwve.cloudfront.net/-ADYixQSKdNQyEQPQWpm.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9be98968-1b7c-48b5-a5f7-9895a7707ab8
X-Runtime: 0.009308
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/-ADYixQSKdNQyEQPQWpm.mp4">redirected</a>.</body></html>
```

## PUT /videos/:id
Update video for video server.

### Example

#### Request
```
PUT /videos/81 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "ymX2E1k9j7GpjhzKxwMx.mp4",
  "thumbnail_uid": "RsdxEFCWSM5fsRz_74_7.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8dce1869-df23-45af-9de8-4d81de057ef7
X-Runtime: 0.005445
X-XSS-Protection: 1; mode=block
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 123:nve9sy2mgQNAwFkvsCGT
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 945
Content-Type: application/json; charset=utf-8
ETag: W/"02d44efbf265c5c95e20f94a113a5678"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 79f136d7-fa0d-4253-be7a-c38d8fd1f333
X-Runtime: 0.025447
X-XSS-Protection: 1; mode=block

[
  {
    "id": 84,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/84",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/o3-a6FdzZ9ExbezMF98m.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [
      {
        "id": 32,
        "contents": "コメントだよー"
      }
    ],
    "user": {
      "id": 122,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 83,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/83",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/oFvqBJUUGEDmVGdf46dw.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 120,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 82,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/82",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/oWu4vPyg62P14c8bZ85S.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 119,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```

## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: application/json
Authorization: 124:tUc3CSKssx6q-YEb1wFd
Content-Length: 115
Content-Type: application/json
Host: www.example.com

{
  "video_uid": "4eAiQhv2JPjEkp3-s8hs.mp4",
  "image_uid": "GYkq__yxZ9N8wVL5Tf6h.jpg",
  "program_name": "番組名だよー"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 248
Content-Type: application/json; charset=utf-8
ETag: W/"d0bbbdd190614891a29cea1d0aa3f32a"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 97912a88-66a1-43ef-8d45-fcbd11d2b693
X-Runtime: 0.019840
X-XSS-Protection: 1; mode=block

{
  "id": 85,
  "resource": {
    "swapped": "http://tvar.claudetech.com/videos/85",
    "thumbnail": null
  },
  "program_name": "番組名だよー",
  "view_count": 0,
  "video_comments": [

  ],
  "user": {
    "id": 124,
    "screen_name": "Kappa Taro",
    "image_url": "https://facebook.com/hgoe.jpg"
  }
}
```
