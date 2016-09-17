## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/362/videos HTTP/1.1
Accept: application/json
Authorization: 362:FoxymiZvwWvJsntuKPQ4
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
ETag: W/"f460e9790831d480b4012bc1c36acfb7"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2d396d03-23c4-4e20-b197-74fac4cb8669
X-Runtime: 0.013778
X-XSS-Protection: 1; mode=block

[
  {
    "id": 277,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/277",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/gF-LBKGmsNfnmnTeGs5y.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 362,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 278,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/278",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/jZanYrpx1vXSxhMWbw1E.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 362,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 279,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/279",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/JxxXj2ej24zQLu19FRaq.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 362,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
