## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: application/json
Authorization: 5:GTpxaWZ8WsSAgBNiCu87
Content-Length: 44
Content-Type: application/json
Host: www.example.com

{
  "original_uid": "JR6ph9zui2fQrxG6nPPU.mp4}"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 185
Content-Type: application/json; charset=utf-8
ETag: W/"1263acb13b8c06b0e54e8d25bbac4e20"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: abcd4466-515a-4eec-bf8e-47886b0aa4fd
X-Runtime: 0.032079
X-XSS-Protection: 1; mode=block

{
  "id": 3,
  "resource": {
    "original": "https://d2nfxe3r64iwve.cloudfront.net/JR6ph9zui2fQrxG6nPPU.mp4}",
    "swapped": null,
    "thumbnail": null
  },
  "program_name": null,
  "view_count": 0,
  "video_comments": [

  ]
}
```

## PUT /videos/:id
Update video.

### Example

#### Request
```
PUT /videos/4 HTTP/1.1
Accept: application/json
Content-Length: 85
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "P-x_PZJzF7wympTNzrfi.mp4",
  "thumbnail_uid": "57Kx8xR65uk3jDQsWmBj.jpg"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b60dce6d-94a1-4925-9ba4-eccc903cec4f
X-Runtime: 0.007110
X-XSS-Protection: 1; mode=block
```

## GET /videos/:id
Redirect video.

### Example

#### Request
```
GET /videos/5 HTTP/1.1
Accept: application/json
Authorization: 8:UyeGbamUHDuj9V_MkAmw
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
Location: https://d2nfxe3r64iwve.cloudfront.net/PdndMyodoecgcDe_LmGS.mp4
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 268802c3-889a-4292-8889-b7ea3a8b05b8
X-Runtime: 0.013164
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://d2nfxe3r64iwve.cloudfront.net/PdndMyodoecgcDe_LmGS.mp4">redirected</a>.</body></html>
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 9:JdfGCBkZ8byBiF4x1de_
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 2
Content-Type: application/json; charset=utf-8
ETag: W/"4f53cda18c2baa0c0354bb5f9a3ecbe5"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0b02f10e-8b96-444d-9da5-942b3f9ac27d
X-Runtime: 0.006093
X-XSS-Protection: 1; mode=block

[

]
```
