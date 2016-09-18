## POST /mobile_devices
Register mobile device token.

### Example

#### Request
```
POST /mobile_devices HTTP/1.1
Accept: application/json
Authorization: 74:Nieu-JPYmWgvQWS_ZzvL
Content-Length: 59
Content-Type: application/json
Host: www.example.com

{
  "device_token": "wzvYHh8pHR1Gwvxsd6uN",
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
X-Request-Id: 4af1f522-892e-40ff-a092-12c9522e408d
X-Runtime: 0.032537
X-XSS-Protection: 1; mode=block
```
