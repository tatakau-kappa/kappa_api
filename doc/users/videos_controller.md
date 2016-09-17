## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/184/videos HTTP/1.1
Accept: application/json
Authorization: 184:5X1YjgHGa6X7jDCnMiT8
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
ETag: W/"ebcd35516e090834f8b4c8bf8b861a51"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c487bf98-05b3-4005-adb1-a40ff4f61281
X-Runtime: 0.016073
X-XSS-Protection: 1; mode=block

[
  {
    "id": 141,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/141",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/L_sWhejiomihNzFdYbbg.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 184,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 142,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/142",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/pEXVDqZ9-gdavyMuStcH.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 184,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 143,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/143",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/CDPbHD1nJNbuRukoSynf.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 184,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
