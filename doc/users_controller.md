## POST /login
Sign up and sign in.

### Example

#### Request
```
POST /login HTTP/1.1
Accept: application/json
Content-Length: 80
Content-Type: application/json
Host: www.example.com

{
  "id": "facebook_id",
  "provider": "facebook",
  "access_token": "this_is_access_token"
}
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 123
Content-Type: application/json; charset=utf-8
ETag: W/"18d375e8ae7f6430aa542da3c2a86a2c"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5410fae2-33a5-486f-bea6-9855d912c39a
X-Runtime: 0.022004
X-XSS-Protection: 1; mode=block

{
  "id": 125,
  "screen_name": "Kappa Taro",
  "image_url": "https://facebook.com/hoge.jpg",
  "access_token": "125:pxRt7vZ9SNz2oMyhSrxW"
}
```
