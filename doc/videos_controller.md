## PUT /videos/:id
Update video.

### Example

#### Request
```
PUT /videos/75 HTTP/1.1
Accept: application/json
Content-Length: 77
Content-Type: application/json
Host: www.example.com

{
  "swapped_uid": "azxynxgnowWm3ijykxnS",
  "thumbnail_uid": "D6dh3QZE1v4zscxmNTJa"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e9df8bb3-6968-4602-8b74-dc4c67cb0973
X-Runtime: 0.048599
X-XSS-Protection: 1; mode=block
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: application/json
Authorization: 185:QqXRrazxPykG_rXsp7io
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
X-Request-Id: 5dc4a0d1-3dd6-4537-87b9-07040813730b
X-Runtime: 0.018806
X-XSS-Protection: 1; mode=block

[

]
```

## GET /videos/:id
Get video.

### Example

#### Request
```
GET /videos/76 HTTP/1.1
Accept: application/json
Authorization: 187:jsrUtu5icNFoSXBXq37r
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 297
Content-Type: application/json; charset=utf-8
ETag: W/"9d5a3c9b52d6dc3755fff3fb5266e515"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1d15d1d2-2c79-4e78-b53f-c40250e39706
X-Runtime: 0.043797
X-XSS-Protection: 1; mode=block

{
  "id": 76,
  "resource": {
    "original": "https://d2nfxe3r64iwve.cloudfront.net/RJRBZGs5xHxoSdyDtcA7.mp4",
    "swapped": "https://d2nfxe3r64iwve.cloudfront.net/f-rMKKvfTrgMU6xFigWM.mp4",
    "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/zHi-PTFnxPyHe9mzPN2V.jpg"
  },
  "program_name": "番組名",
  "video_comments": [

  ]
}
```

## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: application/json
Authorization: 188:KgZZ8651zoj9J7nRWtqd
Content-Length: 39
Content-Type: application/json
Host: www.example.com

{
  "original_uid": "QkxGu1MDUeQ1GvSeZ5Tu"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 238
Content-Type: application/json; charset=utf-8
ETag: W/"ee53d5ebb0d0b091585e2c3235f351d2"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 51f06d68-ca18-46eb-a2ba-c7f0be8dcf8d
X-Runtime: 0.017651
X-XSS-Protection: 1; mode=block

{
  "id": 77,
  "resource": {
    "original": "https://d2nfxe3r64iwve.cloudfront.net/QkxGu1MDUeQ1GvSeZ5Tu",
    "swapped": "https://d2nfxe3r64iwve.cloudfront.net/",
    "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/"
  },
  "program_name": null,
  "video_comments": [

  ]
}
```
