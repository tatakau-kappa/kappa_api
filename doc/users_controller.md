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
Content-Length: 121
Content-Type: application/json; charset=utf-8
ETag: W/"92c2b0c4175fcbc8b07dba46d2a68dfc"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6a608f6a-c89f-48bf-aebd-24d3b91913d1
X-Runtime: 0.016616
X-XSS-Protection: 1; mode=block

{
  "id": 90,
  "screen_name": "Kappa Taro",
  "image_url": "https://facebook.com/hoge.jpg",
  "access_token": "90:jp3Eiwy3hMDsFb8_STYR"
}
```
