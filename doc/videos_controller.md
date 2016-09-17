## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 351:sosW-mvgnZ2iz7TmY8pV
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
ETag: W/"b5c8d4d6e98101ea4c03d528dfa97841"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 92853075-ffea-4c90-a0a6-5de23b6c1078
X-Runtime: 0.066102
X-XSS-Protection: 1; mode=block

[
  {
    "id": 269,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/269",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/QsszT5EitH7Fe1Rn6ubX.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [
      {
        "id": 99,
        "contents": "コメントだよー"
      }
    ],
    "user": {
      "id": 350,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 268,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/268",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/Uodqq3uPzY11bJBsFph6.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 348,
      "screen_name": "Kappa Taro",
      "image_url": "https://facebook.com/hgoe.jpg"
    }
  },
  {
    "id": 267,
    "resource": {
      "swapped": "http://tvar.claudetech.com/videos/267",
      "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/HfMMjz6dFvhNtJnXPqZf.jpg"
    },
    "program_name": "番組名",
    "view_count": 0,
    "video_comments": [

    ],
    "user": {
      "id": 347,
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
Authorization: 352:1Vat6oPqvxgroZqXEidE
Content-Length: 115
Content-Type: application/json
Host: www.example.com

{
  "video_uid": "3XZ7FZ7Nkf3TNsqSHses.mp4",
  "image_uid": "WecQYwzwVMzJrXV49gyR.jpg",
  "program_name": "番組名だよー"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 250
Content-Type: application/json; charset=utf-8
ETag: W/"e18bc3804a99f8db489115127c6ee085"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 359d2727-a2e4-4103-91ab-e8f1e69d3c37
X-Runtime: 0.018000
X-XSS-Protection: 1; mode=block

{
  "id": 270,
  "resource": {
    "swapped": "http://tvar.claudetech.com/videos/270",
    "thumbnail": null
  },
  "program_name": "番組名だよー",
  "view_count": 0,
  "video_comments": [

  ],
  "user": {
    "id": 352,
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
GET /videos/271 HTTP/1.1
Accept: application/json
Authorization: 354:eQG8sZvqksMFs-JsPj8T
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
Location: https://d2nfxe3r64iwve.cloudfront.net/y8PSP9URXhFNV18RRTpu.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bef2cae8-7859-4647-ab2c-ccd06d53c716
X-Runtime: 0.011565
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/y8PSP9URXhFNV18RRTpu.mp4">redirected</a>.</body></html>
```

## PUT /videos/:id
Update video for video server.

### Example

#### Request
```
PUT /videos/272 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "tzW9_jTSsWE7BrYCGGFs.mp4",
  "thumbnail_uid": "rws7c8K4oypRuJxF9rsr.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 67d51be9-f04d-420c-bc4b-4361fb7194a7
X-Runtime: 0.005942
X-XSS-Protection: 1; mode=block
```
