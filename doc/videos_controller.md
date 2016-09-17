## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: application/json
Authorization: 156:UsMDuLf3vb2MRSBmcPLe
Content-Length: 79
Content-Type: application/json
Host: www.example.com

{
  "video_uid": "YxDThCYfyS5ybM4sEzPz.mp4",
  "image_uid": "yVWiZ8w7nZjs1HTt_J9q.jpg"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 234
Content-Type: application/json; charset=utf-8
ETag: W/"68b40790bdc1cb879fcb7b6fd5d53a73"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2971f572-cafa-45d7-8566-0ea62a9ff67d
X-Runtime: 0.017804
X-XSS-Protection: 1; mode=block

{
  "id": 124,
  "resource": {
    "swapped": "http://tvar.claudetech.com/videos/124",
    "thumbnail": null
  },
  "program_name": null,
  "view_count": 0,
  "video_comments": [

  ],
  "user": {
    "id": 156,
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
PUT /videos/125 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "hPz_7ymjnypsn6BTjhvy.mp4",
  "thumbnail_uid": "AhLMyq4qnuy8-wTE-VDk.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 38fe713c-5073-4db4-ad79-bd88ea757f15
X-Runtime: 0.008030
X-XSS-Protection: 1; mode=block
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 162:rsWta1XGVW-MYFYNT3qr
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
ETag: W/"19ccf3d1e4e484bfccd7ed57640dfd30"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c37fe1a1-b690-4f4d-9077-38d53fe23ef7
X-Runtime: 0.017626
X-XSS-Protection: 1; mode=block

[
  {
    "id": 128,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/128",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/RRhqaoVg2xg8PzZ8KzGs.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [
      {
        "id": 46,
        "contents": "コメントだよー"
      }
    ],
    "user": {
      "id": 161,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 127,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/127",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/S5mjS4cogN12nXNCQxAz.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 159,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 126,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/126",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/EuErmHnaTBFxjHhyApS3.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 158,
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
GET /videos/129 HTTP/1.1
Accept: application/json
Authorization: 164:j6hMv-fjA2Pjmcj1Pxaz
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
Location: https://d2nfxe3r64iwve.cloudfront.net/ssXoWzUW3ga6rXks3xhB.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bf6f4532-66dd-451f-9bd6-f960a17d2336
X-Runtime: 0.011617
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/ssXoWzUW3ga6rXks3xhB.mp4">redirected</a>.</body></html>
```
