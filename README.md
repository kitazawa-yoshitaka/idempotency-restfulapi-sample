# idempotency-restfulapi-sample
WIP POST,PUT,PATCHに冪等性を持たせたRESTfulAPIのサンプルです。

# Build and run.
```
$ docker-compose up -d
```

# Operation confirmation
```
$ curl -i http://localhost:8080/
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
Date: Sat, 22 Jan 2022 05:41:47 GMT
Content-Length: 25

{"message":"hello world"}
```