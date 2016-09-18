## POST /videos/:id/remove_ad
Remove ad.

### Example

#### Request
```
POST /videos/26/remove_ad HTTP/1.1
Accept: application/json
Authorization: 14:XBmsWsnwmJvHZ85WV4xZ
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: eacf17ab-5564-4311-be6e-4c2d46875d5a
X-Runtime: 0.015590
X-XSS-Protection: 1; mode=block
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
Content-Length: 1029
Content-Type: application/json; charset=utf-8
ETag: W/"99a1f870e2a3e804f82a777f1c24c506"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 25222a22-4f1e-43a7-bf81-c1173b48ba68
X-Runtime: 0.029322
X-XSS-Protection: 1; mode=block

[
  {
    "id": 29,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/29",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/yjDceYySZxbRchsz6AAn.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [
      {
        "id": 3,
        "contents": "コメントだよー",
        "user": {
          "id": 17,
          "screen_name": "Kappa Taro",
          "image_url": "https://facebook.com/hgoe.jpg"
        }
      }
    ],
    "user": {
      "id": 18,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 28,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/28",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/2WR122vV4BFcejwitq8e.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 16,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 27,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/27",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/CYtoxFR-3NCwy1otz4-F.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 15,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```

## GET /videos/:id
Redirect video.

### Example

#### Request
```
GET /videos/30 HTTP/1.1
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
Location: https://d2nfxe3r64iwve.cloudfront.net/G-cvX4iBxWpzDbzfa63e.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 43712766-251c-4db4-af9c-449a7e3a18b7
X-Runtime: 0.011030
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/G-cvX4iBxWpzDbzfa63e.mp4">redirected</a>.</body></html>
```

## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: application/json
Authorization: 20:2kadQu2z9U7ihmNexBi4
Content-Length: 115
Content-Type: application/json
Host: www.example.com

{
  "video_uid": "MNfLSakMxbbRAYzu4nGh.mp4",
  "image_uid": "ee6dQcY45aagXCC6MTh_.jpg",
  "program_name": "番組名だよー"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 247
Content-Type: application/json; charset=utf-8
ETag: W/"5f363c5c8b828f5f8ab592dc8f1e6815"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9e507027-f785-45bf-84a8-25b20262aee5
X-Runtime: 0.014503
X-XSS-Protection: 1; mode=block

{
  "id": 31,
  "resource": {
    "swapped": "http://tvar.claudetech.com/videos/31",
    "thumbnail": null
  },
  "program_name": "番組名だよー",
  "view_count": 0,
  "video_comments": [

  ],
  "user": {
    "id": 20,
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
PUT /videos/32 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "MmxRyqVKhuSNLFzmid3A.mp4",
  "thumbnail_uid": "YfzWpWeQHzyizkBoHzBx.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 66debede-fe1f-478b-9f5a-1c6356f5b864
X-Runtime: 0.004616
X-XSS-Protection: 1; mode=block
```
