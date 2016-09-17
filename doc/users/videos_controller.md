## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/151/videos HTTP/1.1
Accept: application/json
Authorization: 151:4Azsuq_tPqXqyCzKj2B3
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 907
Content-Type: application/json; charset=utf-8
ETag: W/"3b40026bcc9dd1341b04bff9d17bafcd"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 70602afb-e3b4-4ae5-b749-8fedd34df6a9
X-Runtime: 0.068008
X-XSS-Protection: 1; mode=block

[
  {
    "id": 118,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/118",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/3Y4_5s1eJpPXZ_2ecKh1.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 151,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 119,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/119",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/R9b71NrzvVpDyfsbbzYr.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 151,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 120,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/120",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/rtxTAUQMt8pgjZAh85GP.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 151,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
