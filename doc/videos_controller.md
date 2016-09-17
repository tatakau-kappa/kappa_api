## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 21:f9zV3FGfMB97UcSy6d-C
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1204
Content-Type: application/json; charset=utf-8
ETag: W/"41e3ef2a7bfadbef7cec04ee8f05e85c"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 57486b68-a0ba-4adb-ab95-0f299de8133e
X-Runtime: 0.041722
X-XSS-Protection: 1; mode=block

[
  {
    "id": 16,
    "resource": {
      "original_image": "https://d2nfxe3r64iwve.cloudfront.net/iPxiUh99GDy1avUdzhz4.jpg",
      "original_video": "https://d2nfxe3r64iwve.cloudfront.net/QiGf46SRP5S1W8yAQNxw.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/axW8B3dcgfSosx3k6wsC.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/44weZBki_gy31kkZSAh5.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 15,
    "resource": {
      "original_image": "https://d2nfxe3r64iwve.cloudfront.net/QxJwxUQCSkR_6d8H8dKs.jpg",
      "original_video": "https://d2nfxe3r64iwve.cloudfront.net/2v5KEgGFQsa3QQDoGu6y.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/oHnnM_5iZDX7Hx9FzSqn.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/4pxk7whe29UnfBUggYsb.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 14,
    "resource": {
      "original_image": "https://d2nfxe3r64iwve.cloudfront.net/fwAvX4MPbARsbkcsb5_F.jpg",
      "original_video": "https://d2nfxe3r64iwve.cloudfront.net/RJkEGNs3vhmSyszYv9mk.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/xYiRUKkq2Le-yMcSNYxm.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/-_cix3zH-HMAhjZB3NPJ.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
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
Authorization: 22:bq8VnFjjHnFyaR3i5iWj
Content-Length: 79
Content-Type: application/json
Host: www.example.com

{
  "video_uid": "rg1NQGM3u1-V4X8wxHze.mp4",
  "image_uid": "ndEa-LyVyhEFzofBKg4J.jpg"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 273
Content-Type: application/json; charset=utf-8
ETag: W/"9c82a0fd44b6a0dcd36630771c11be77"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0c37287c-98a6-48a5-8b65-fdb711e20d31
X-Runtime: 0.017015
X-XSS-Protection: 1; mode=block

{
  "id": 17,
  "resource": {
    "original_image": "https://d2nfxe3r64iwve.cloudfront.net/ndEa-LyVyhEFzofBKg4J.jpg",
    "original_video": "https://d2nfxe3r64iwve.cloudfront.net/rg1NQGM3u1-V4X8wxHze.mp4",
    "swapped": null,
    "thumbnail": null
  },
  "program_name": null,
  "view_count": 0,
  "video_comments": [

  ]
}
```

## GET /videos/:id
Redirect video.

### Example

#### Request
```
GET /videos/18 HTTP/1.1
Accept: application/json
Authorization: 24:gJmJgoUtpYZB_8BxZS36
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
Location: https://d2nfxe3r64iwve.cloudfront.net/8BxLGGjq7K8Q8JFAsHQt.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 09c4c212-4340-4a38-8413-4e7c6354abf8
X-Runtime: 0.012130
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/8BxLGGjq7K8Q8JFAsHQt.mp4">redirected</a>.</body></html>
```

## PUT /videos/:id
Update video.

### Example

#### Request
```
PUT /videos/19 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "qSR7j-Ska3Zj7NbLyHuT.mp4",
  "thumbnail_uid": "xbeWBcAaN3XEQ4BHbaLE.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9ea9fd47-71da-43e3-89b5-75d2693bca7b
X-Runtime: 0.006527
X-XSS-Protection: 1; mode=block
```
