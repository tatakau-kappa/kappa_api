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
ETag: W/"9bf7152097102dd255f02f5247ee8dac"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e1c23067-4db1-4a7a-a77e-628dc67d3e3a
X-Runtime: 0.081845
X-XSS-Protection: 1; mode=block

{
  "token_type": "Bearer",
  "user": {
    "id": 168,
    "screen_name": "Kappa Taro",
    "image_url": "https://facebook.com/hoge.jpg"
  },
  "access_token": "168:w6fycu3uSsrrz3izyZkc"
}
```
