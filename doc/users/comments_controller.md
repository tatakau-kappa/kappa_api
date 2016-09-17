## GET /users/:user_id/videos/comments
Create comment of video.

### Example

#### Request
```
GET /users/143/videos/comments HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: 143:6sxKTnMTyJ77zvZ7sofd
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
X-Request-Id: f8b1b8dc-61e6-44ce-9bfa-85132a328596
X-Runtime: 0.015139
X-XSS-Protection: 1; mode=block

[

]
```
