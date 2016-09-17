## PUT /videos/:id
Update video for video server.

### Example

#### Request
```
PUT /videos/135 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "PJXb1s-V6qQ8xQL7mPz6.mp4",
  "thumbnail_uid": "dkHrvxhVN7-Q3vx6_6FZ.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 37c83e2f-76cf-466e-8398-cc018f55a890
X-Runtime: 0.006197
X-XSS-Protection: 1; mode=block
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 180:C1DHyRc_cjm4hGzrsPcJ
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 951
Content-Type: application/json; charset=utf-8
ETag: W/"aec48fc3993fa241815e7c13b7b82148"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2b4e7630-a4fd-44d6-a681-3b9b917612b3
X-Runtime: 0.022067
X-XSS-Protection: 1; mode=block

[
  {
    "id": 138,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/138",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/iBnzLJNtVjEeuZAMLuK8.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [
      {
        "id": 52,
        "contents": "コメントだよー"
      }
    ],
    "user": {
      "id": 179,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 137,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/137",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/b1-J94EDzeYTXNPQpDUo.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 177,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 136,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/136",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/RXo_SEGDw3m_uhTi3Aes.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 176,
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
Authorization: 181:EGsQfd-S5xTev37mucYQ
Content-Length: 115
Content-Type: application/json
Host: www.example.com

{
  "video_uid": "By_bTot7TcqC3Uk897ro.mp4",
  "image_uid": "h_4FszH9cn_63DwexiLs.jpg",
  "program_name": "番組名だよー"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 250
Content-Type: application/json; charset=utf-8
ETag: W/"9e4dd2e4cd56e479d132ea0113f624ab"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 68f93489-1740-48dc-8115-30ab4d4d6290
X-Runtime: 0.017895
X-XSS-Protection: 1; mode=block

{
  "id": 139,
  "resource": {
    "swapped": "http://tvar.claudetech.com/videos/139",
    "thumbnail": null
  },
  "program_name": "番組名だよー",
  "view_count": 0,
  "video_comments": [

  ],
  "user": {
    "id": 181,
    "screen_name": "Kappa Taro",
    "image_url": "https://facebook.com/hgoe.jpg"
  }
}
```

## GET /videos/:id
Redirect video.

### Example

#### Request
```
GET /videos/140 HTTP/1.1
Accept: application/json
Authorization: 183:dmPaQSwQVAb4P-vzmnkd
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
Location: https://d2nfxe3r64iwve.cloudfront.net/VDv5Dz_YhmLe4uynsZYK.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 348473c2-5f30-4d10-9e79-7620a7f7f357
X-Runtime: 0.012029
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/VDv5Dz_YhmLe4uynsZYK.mp4">redirected</a>.</body></html>
```
