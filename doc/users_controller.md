## POST /login
Sign up and sign in.

### Example

#### Request
```
POST /login HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 66
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

id=facebook_id&provider=facebook&access_token=this_is_access_token
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 79
Content-Type: application/json; charset=utf-8
ETag: W/"aa9866f1f7f52ad71819e8ef6889a06a"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7226aab3-04e1-415c-bbd4-7528dc006e35
X-Runtime: 0.020358
X-XSS-Protection: 1; mode=block

{
  "token_type": "Bearer",
  "user_id": 142,
  "access_token": "142:eY8ws4kgy1JWjFNK_x4j"
}
```
