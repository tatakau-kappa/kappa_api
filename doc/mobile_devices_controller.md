## POST /mobile_devices
Register mobile device token.

### Example

#### Request
```
POST /mobile_devices HTTP/1.1
Accept: application/json
Authorization: 25:NgzcKuzixVm-pMuGmjYu
Content-Length: 59
Content-Type: application/json
Host: www.example.com

{
  "device_token": "m1Bs8vVxe1jPi-RrfdS8",
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
X-Request-Id: 8dda0f4d-5fdf-4e89-9b45-237b8cfd6194
X-Runtime: 0.022558
X-XSS-Protection: 1; mode=block
```
