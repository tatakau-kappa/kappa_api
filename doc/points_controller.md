## GET /points
Get docomo point.

### Example

#### Request
```
GET /points HTTP/1.1
Accept: application/json
Authorization: 79:A-s6ouy6yRMgE_QGqHe2
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 14
Content-Type: application/json
ETag: W/"2daa16ba222c75cd47dacea9508c66c1"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: dbea7c85-5899-4545-b1f4-d2776de2f29f
X-Runtime: 0.012426
X-XSS-Protection: 1; mode=block

{
  "point": 1560
}
```
