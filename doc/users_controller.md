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
Content-Length: 79
Content-Type: application/json; charset=utf-8
ETag: W/"8b8bcec39e20102232783f6376b97a04"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e0d787d2-cba6-426a-9b2e-5e2fe4f065eb
X-Runtime: 0.031493
X-XSS-Protection: 1; mode=block

{
  "token_type": "Bearer",
  "user_id": 193,
  "access_token": "193:1nxwnxE92Nw7PBz5aZAE"
}
```
