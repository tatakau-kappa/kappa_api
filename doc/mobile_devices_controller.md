## POST /mobile_devices
Register mobile device token.

### Example

#### Request
```
POST /mobile_devices HTTP/1.1
Accept: application/json
Authorization: 112:5N-63s6_YF6GwMD1Yc7Q
Content-Length: 59
Content-Type: application/json
Host: www.example.com

{
  "device_token": "8x7vEM7Vjgmdmj6CRqq9",
  "device_type": "ios"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cdb76380-b675-42be-b415-1702c9b042b2
X-Runtime: 0.036886
X-XSS-Protection: 1; mode=block
```
