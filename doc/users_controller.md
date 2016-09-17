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
Content-Length: 77
Content-Type: application/json; charset=utf-8
ETag: W/"969025ff89203309716a70f7b3e6fbc0"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b20b70a7-2965-40d9-a653-961257e61b2a
X-Runtime: 0.076511
X-XSS-Protection: 1; mode=block

{
  "token_type": "Bearer",
  "user_id": 17,
  "access_token": "17:_hR8cZZC5AS6rtZjvzSd"
}
```
