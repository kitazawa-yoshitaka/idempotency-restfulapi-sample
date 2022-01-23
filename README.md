# idempotency-restfulapi-sample
WIP 
This is a RESTful API sample with idempotency for POST, PUT, and PATCH.

# Build and run.
```
$ docker-compose up -d
```

# Operation confirmation
```
$ curl -i http://localhost:8080/health
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
Date: Sun, 23 Jan 2022 12:28:34 GMT
Content-Length: 16

{"message":"OK"}
```