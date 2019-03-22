## Tool

```
$ pip install httpstat
```

## Result

### Rails5

- no cache

```
httpstat 'http://localhost:3003/accounts'
Connected to ::1:3003 from ::1:55926

HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"6af353ac96c39cbce50890429340f042"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1a03a14e-9b85-4dbd-afe0-fd0681a38e77
X-Runtime: 0.076897
Transfer-Encoding: chunked

Body stored in: /var/folders/bw/1g9ncc7j1zb81mqsrjn_cjv1gh5x6n/T/tmp5gmeqsem

  DNS Lookup   TCP Connection   Server Processing   Content Transfer
[     4ms    |       0ms      |       293ms       |        0ms       ]
             |                |                   |                  |
    namelookup:4ms            |                   |                  |
                        connect:4ms               |                  |
                                      starttransfer:297ms            |
                                                                 total:297ms

```


- cached
```
httpstat 'http://localhost:3003/accounts'
Connected to ::1:3003 from ::1:55902

HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"6af353ac96c39cbce50890429340f042"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dae4edf5-3d91-4add-ad91-051df4ae6b08
X-Runtime: 0.063440
Transfer-Encoding: chunked

Body stored in: /var/folders/bw/1g9ncc7j1zb81mqsrjn_cjv1gh5x6n/T/tmp3qpzpb5w

  DNS Lookup   TCP Connection   Server Processing   Content Transfer
[     5ms    |       0ms      |       64ms        |        2ms       ]
             |                |                   |                  |
    namelookup:5ms            |                   |                  |
                        connect:5ms               |                  |
                                      starttransfer:69ms             |
                                                                 total:71ms
```

## Roda

```
httpstat 'http://localhost:9292/accounts'
Connected to ::1:9292 from ::1:55941

HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 108084
Server: WEBrick/1.4.2 (Ruby/2.6.1/2019-01-30)
Date: Fri, 22 Mar 2019 10:05:59 GMT
Connection: Keep-Alive

Body stored in: /var/folders/bw/1g9ncc7j1zb81mqsrjn_cjv1gh5x6n/T/tmpxck7hmhu

  DNS Lookup   TCP Connection   Server Processing   Content Transfer
[     5ms    |       0ms      |       14ms        |        1ms       ]
             |                |                   |                  |
    namelookup:5ms            |                   |                  |
                        connect:5ms               |                  |
                                      starttransfer:19ms             |
                                                                 total:20ms
```
