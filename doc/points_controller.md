## GET /points
Get docomo point.

### Example

#### Request
```
GET /points HTTP/1.1
Accept: application/json
Authorization: 22:xqLopfsv8Kh7BJP_DzPy
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
X-Request-Id: be8fa295-c177-4762-98a7-bc3ccb09ad9b
X-Runtime: 0.022197
X-XSS-Protection: 1; mode=block

{
  "point": 1560
}
```
