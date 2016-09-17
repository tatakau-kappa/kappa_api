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
ETag: W/"def5895cdb989f47f375907ffbb5e18c"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f7420a55-fb64-4bd5-97ec-d2c193742740
X-Runtime: 0.020345
X-XSS-Protection: 1; mode=block

{
  "id": 363,
  "screen_name": "Kappa Taro",
  "image_url": "https://facebook.com/hoge.jpg",
  "access_token": "363:y98BzP2WjWNKsB3dqA6H"
}
```
