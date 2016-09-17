## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: application/json
Authorization: 34:BkmRNy1EjQEoQztPjbCF
Content-Length: 43
Content-Type: application/json
Host: www.example.com

{
  "original_uid": "FcKuaaoBRy_v96xzsfA5.mp4"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 185
Content-Type: application/json; charset=utf-8
ETag: W/"a574e0b531289ed1a89e52dbc5ba7e1e"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: eff646d4-3592-4bed-9a8b-7cc3e8218b00
X-Runtime: 0.023390
X-XSS-Protection: 1; mode=block

{
  "id": 22,
  "resource": {
    "original": "https://d2nfxe3r64iwve.cloudfront.net/FcKuaaoBRy_v96xzsfA5.mp4",
    "swapped": null,
    "thumbnail": null
  },
  "program_name": null,
  "view_count": 0,
  "video_comments": [

  ]
}
```

## PUT /videos/:id
Update video.

### Example

#### Request
```
PUT /videos/23 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "WyasQNq2CRgsc2bxde9V.mp4",
  "thumbnail_uid": "4p4SywiqxyVk5-VAAhXy.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 55c88439-4d08-497b-bbe0-45a13bb0e712
X-Runtime: 0.007008
X-XSS-Protection: 1; mode=block
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 39:oHEWrG1qzD_fc2nt9yCm
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 940
Content-Type: application/json; charset=utf-8
ETag: W/"015ed34c6e4008b26fce89160c42879e"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4027f6d8-f7ec-4a9b-9fa3-fda5678bdf06
X-Runtime: 0.013057
X-XSS-Protection: 1; mode=block

[
  {
    "id": 26,
    "resource": {
      "original": "https://d2nfxe3r64iwve.cloudfront.net/XosLL7Ho-TzaAhika_zY.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/Unvb6zU9dy7TaDxWPpLs.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/HcBXv9zXiWzyfCfyM6Nc.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 25,
    "resource": {
      "original": "https://d2nfxe3r64iwve.cloudfront.net/BXaLSdE73oiq3Fbyz_sB.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/d8B7iYJRZ3PouyqPDkAZ.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/Ps6zLom7_PR1zyRkKY6d.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 24,
    "resource": {
      "original": "https://d2nfxe3r64iwve.cloudfront.net/AvCpqQ8c1PnZxKTj8Wmq.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/t-vW76n66se6sthvtcbD.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/GZc1G5yPzB5UcXA_xxC3.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  }
]
```

## GET /videos/:id
Redirect video.

### Example

#### Request
```
GET /videos/27 HTTP/1.1
Accept: application/json
Authorization: 41:zCVNc-5kpA_RjntXDDP-
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
Location: https://d2nfxe3r64iwve.cloudfront.net/pN3sRBZJER2ysvV9dXBu.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 255ad0e0-011f-4d44-ae6f-d46fabecea43
X-Runtime: 0.011972
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/pN3sRBZJER2ysvV9dXBu.mp4">redirected</a>.</body></html>
```
