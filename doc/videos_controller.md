## PUT /videos/:id
Update video.

### Example

#### Request
```
PUT /videos/55 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 67
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

swapped_uid=hFQAf1BEi8WRh3wiY6sF&thumbnail_uid=9hrB-kz4GGxzTdoz95tU
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e6a63b41-fa18-4d21-b2aa-e31b395d567e
X-Runtime: 0.024571
X-XSS-Protection: 1; mode=block
```

## POST /videos
Create video.

### Example

#### Request
```
POST /videos HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: 135:DhgBbF9wFF84pBuW-JVY
Content-Length: 39
Content-Type: application/json
Host: www.example.com

{
  "original_uid": "xWCQCZ28AhNs4zMWJNGR"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 238
Content-Type: application/json; charset=utf-8
ETag: W/"fc3ce253815f435bd4e18a4aaf1ae033"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2c2d1d29-8df2-4fa1-8ea9-e1487c882402
X-Runtime: 0.047614
X-XSS-Protection: 1; mode=block

{
  "id": 56,
  "resource": {
    "original": "https://d2nfxe3r64iwve.cloudfront.net/xWCQCZ28AhNs4zMWJNGR",
    "swapped": "https://d2nfxe3r64iwve.cloudfront.net/",
    "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/"
  },
  "program_name": null,
  "video_comments": [

  ]
}
```

## GET /videos
Get videos.

### Example

#### Request
```
GET /videos HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: 136:XYAw6VmC2GCe93r3fHpL
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
X-Request-Id: 3e051e68-2f79-46a5-ba14-77749750ce03
X-Runtime: 0.009279
X-XSS-Protection: 1; mode=block

[

]
```

## GET /videos/:id
Get video.

### Example

#### Request
```
GET /videos/57 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: 138:dAjmRC-tzeQf2JFsBA9_
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
ETag: W/"4edcfee8dbee30d2a638eaf1998242f6"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d7d9c03f-6fe7-41c4-8f01-09231db7c70e
X-Runtime: 0.008942
X-XSS-Protection: 1; mode=block

{
  "id": 57,
  "resource": {
    "original": "https://d2nfxe3r64iwve.cloudfront.net/VnnALzcX8b_fevbrr_iR.mp4",
    "swapped": "https://d2nfxe3r64iwve.cloudfront.net/xJKTrobsczpzGanSBT7i.mp4",
    "thumbnail": "https://d2nfxe3r64iwve.cloudfront.net/TNQL7wnq-qJ_qb2LaeV6.jpg"
  },
  "program_name": "番組名",
  "video_comments": [

  ]
}
```
