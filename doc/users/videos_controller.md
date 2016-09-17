## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/44/videos HTTP/1.1
Accept: application/json
Authorization: 44:BCbCNpnkeL3RUTBfMn31
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
ETag: W/"b41dc2159c7c59b49080ca7468195c0a"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e894967d-0d7e-493b-887c-0b638596839a
X-Runtime: 0.014757
X-XSS-Protection: 1; mode=block

[
  {
    "id": 29,
    "resource": {
      "original": "https://d2nfxe3r64iwve.cloudfront.net/fzu1fdWxQdcPeiUPCvaN.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/Z-Qj7sz75b58TYd-Jjnk.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/S31ugonE7CcVJCPwFtFg.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 30,
    "resource": {
      "original": "https://d2nfxe3r64iwve.cloudfront.net/PVVwDdJSZMduAyAYTs4u.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/eEBhXB7pWxnDGzA6-nra.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/CssRiKn1eGecy8g7k6eH.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 31,
    "resource": {
      "original": "https://d2nfxe3r64iwve.cloudfront.net/evvepvfHxmc7XwJNxbiP.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/DMWaAfz4QPvx_7yDExBA.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/hMzLLZr7fzsspkbJx1R7.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  }
]
```
