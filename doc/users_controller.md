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
ETag: W/"6cf329974572311d850654d682ff584b"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 88edc2ef-a592-4de3-8a62-8b0ad5d1e444
X-Runtime: 0.028402
X-XSS-Protection: 1; mode=block

{
  "id": 23,
  "screen_name": "Kappa Taro",
  "image_url": "https://facebook.com/hoge.jpg",
  "access_token": "23:FrCcLBzsv44zwYVwrwKy"
}
```
