## GET /points
Get docomo point.

### Example

#### Request
```
GET /points HTTP/1.1
Accept: application/json
Authorization: 115:S_YzyvVmAipUHXbmKTH4
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 13
Content-Type: application/json
ETag: W/"2f7312c2824acb3db695c4631e360d90"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a6cb5d55-3cac-4314-b113-2d06253228b1
X-Runtime: 0.008427
X-XSS-Protection: 1; mode=block

{
  "point": 200
}
```
