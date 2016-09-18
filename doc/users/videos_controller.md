## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/24/videos HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 898
Content-Type: application/json; charset=utf-8
ETag: W/"5f946d6d6ee0f5bdab1985d85f60767b"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c99389f8-c9c9-4ed3-b5ff-12bf550a6d8a
X-Runtime: 0.016932
X-XSS-Protection: 1; mode=block

[
  {
    "id": 33,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/33",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/i6EVgYSyRGLNGr3FApt9.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 24,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 34,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/34",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/ySP6kWgdqntz3wZaxzvd.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 24,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 35,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/35",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/_9EdAxYL_sktNNKxRCSf.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 24,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
