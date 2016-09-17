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
ETag: W/"e4cf4f355b4ebda3a4e263965ac96ee2"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 48b6c7ea-3da5-4988-b9d5-ebf63bc001e2
X-Runtime: 0.021799
X-XSS-Protection: 1; mode=block

{
  "token_type": "Bearer",
  "user_id": 11,
  "access_token": "11:hqFqD7dZq8R_zJrtqufT"
}
```
