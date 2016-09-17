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
ETag: W/"43ea054bc81ef6cf7454ca59527c5827"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cf509727-fb7f-44b9-8790-bdb78d73d622
X-Runtime: 0.078148
X-XSS-Protection: 1; mode=block

{
  "token_type": "Bearer",
  "user_id": 29,
  "access_token": "29:MePUd86taxWvfUNZfqY_"
}
```
