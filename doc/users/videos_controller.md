## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/87/videos HTTP/1.1
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
ETag: W/"bc6ba95afec9fb1d13ced699723baddc"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e08d3408-d0f4-4834-970b-2be8ea9dbf24
X-Runtime: 0.014072
X-XSS-Protection: 1; mode=block

[
  {
    "id": 79,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/79",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/CZAma1rsxZHWytAdCxs1.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 87,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 80,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/80",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/w2HGp52WNAa5srhZy-sb.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 87,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 81,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/81",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/_HHJNSowLktYxvK9pzzS.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 87,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  }
]
```
