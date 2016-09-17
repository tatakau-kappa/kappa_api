## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/126/videos HTTP/1.1
Accept: application/json
Authorization: 126:HSauqaQRp7-9hyvps--4
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 901
Content-Type: application/json; charset=utf-8
ETag: W/"d9676c1074f298a5d4ce44bbf67d7b07"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ca9710b3-e937-4759-909d-fa268b2ab7ff
X-Runtime: 0.015823
X-XSS-Protection: 1; mode=block

[
  {
    "id": 86,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/86",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/ircaLyHzqaQTTLfiUwf3.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 126,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 87,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/87",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/97YjoeJv2NwxhoFhuxbs.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 126,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 88,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/88",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/Zf7yxCxiN1_Kd-1jDa2Q.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 126,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
