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
Content-Length: 154
Content-Type: application/json; charset=utf-8
ETag: W/"20221f6e28075ae0d8280f820c76fcbc"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f68bce2-be18-4948-8622-9634a103d198
X-Runtime: 0.023251
X-XSS-Protection: 1; mode=block

{
  "token_type": "Bearer",
  "user": {
    "id": 167,
    "screen_name": "Kappa Taro",
    "image_url": "https://facebook.com/hoge.jpg"
  },
  "access_token": "167:ESTx6SQhdvRr492GZaxV"
}
```
