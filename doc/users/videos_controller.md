## GET /users/:user_id/videos
Create comment of video.

### Example

#### Request
```
GET /users/26/videos HTTP/1.1
Accept: application/json
Authorization: 26:yU36KqwhxzvYx5QMFezi
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1204
Content-Type: application/json; charset=utf-8
ETag: W/"0e64dea76cf80f03d8591c5081e16a6c"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fac8ad1d-5365-417a-8568-811f5b5d6a71
X-Runtime: 0.013744
X-XSS-Protection: 1; mode=block

[
  {
    "id": 20,
    "resource": {
      "original_image": "https://d2nfxe3r64iwve.cloudfront.net/vqERgFrd2B32YrRvUcdZ.jpg",
      "original_video": "https://d2nfxe3r64iwve.cloudfront.net/x1LnhwnhrhbypJJsmWM5.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/_y56QiVGJU-fLy6zAnx7.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/7DeFr9-v4ntA_7BANZUs.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 21,
    "resource": {
      "original_image": "https://d2nfxe3r64iwve.cloudfront.net/3wVrdxXkZvZjJ7E4UYq1.jpg",
      "original_video": "https://d2nfxe3r64iwve.cloudfront.net/-ndqCZVZ9zb5yvukA5W2.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/YGNefnubrJxHSqbf5f79.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/N_13gAF2FFjt4xpFinQf.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  },
  {
    "id": 22,
    "resource": {
      "original_image": "https://d2nfxe3r64iwve.cloudfront.net/5SEEhmvQyQTKttfYePbY.jpg",
      "original_video": "https://d2nfxe3r64iwve.cloudfront.net/yKQNo-31VKwqVeJf-hF_.mp4",
      "swapped": "https://d2nfxe3r64iwve.cloudfront.net/rai9fbPzqHn_wDmQ81WV.mp4",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/Xc6pkZDi5TW6i2hFoSJx.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ]
  }
]
```
