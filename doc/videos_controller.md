## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: application/json
Authorization: 80:yXyMhJT8CzBz-wKtA2Az
Content-Length: 115
Content-Type: application/json
Host: www.example.com

{
  "video_uid": "LAtyRUGJqkmQh6T82_Tb.mp4",
  "image_uid": "zm2rZ-C_ZY6meMxGW11Q.jpg",
  "program_name": "番組名だよー"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 247
Content-Type: application/json; charset=utf-8
ETag: W/"ef5f41c83b12eb0c0a442bf747e812ec"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b0b1a9a2-deb3-49ee-8db6-318157b703d9
X-Runtime: 0.024635
X-XSS-Protection: 1; mode=block

{
  "id": 73,
  "resource": {
    "swapped": "http://tvar.claudetech.com/videos/73",
    "thumbnail": null
  },
  "program_name": "番組名だよー",
  "view_count": 0,
  "video_comments": [

  ],
  "user": {
    "id": 80,
    "screen_name": "Kappa Taro",
    "image_url": "https://facebook.com/hgoe.jpg"
  }
}
```

## PUT /videos/:id
Update video for video server.

### Example

#### Request
```
PUT /videos/74 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "mRygePqDBbCGxTBx-27H.mp4",
  "thumbnail_uid": "qut9WPfsAWDheoBoSNU-.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 18ace66e-7cc9-48d1-bf47-ce7a362ec1f3
X-Runtime: 0.005460
X-XSS-Protection: 1; mode=block
```

## GET /videos/:id
Redirect video.

### Example

#### Request
```
GET /videos/75 HTTP/1.1
Accept: application/json
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
Location: https://d2nfxe3r64iwve.cloudfront.net/uFo6v9bgNt6M93D1EA7D.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 26c108b8-a415-4a49-8700-fece1d35a1d2
X-Runtime: 0.008744
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/uFo6v9bgNt6M93D1EA7D.mp4">redirected</a>.</body></html>
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1030
Content-Type: application/json; charset=utf-8
ETag: W/"db0bbdfd6436ca82751113712a9d4f98"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bdc11044-e634-411d-877e-3bc3d3a7a84c
X-Runtime: 0.014485
X-XSS-Protection: 1; mode=block

[
  {
    "id": 78,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/78",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/pxdtc8aJYPVKRpK858KQ.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [
      {
        "id": 25,
        "contents": "コメントだよー",
        "user": {
          "id": 85,
          "screen_name": "Kappa Taro",
          "image_url": "https://facebook.com/hgoe.jpg"
        }
      }
    ],
    "user": {
      "id": 86,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 77,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/77",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/jis24H4zxPxzFj779kmx.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 84,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 76,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/76",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/saQDsQoR6yFsWdZuZzCd.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 83,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
