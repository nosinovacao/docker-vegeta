# Vegeta Docker

Docker image for the [Vegeta](https://github.com/tsenart/vegeta) HTTP load testing tool.

## Usage

To build image:
```bash
docker build -t docker-vegeta .
```

To run:
```bash
docker run -d -p 8000:80 --name vegeta vegeta:1.0
```

### Api Usage

Simple Request:
```bash
curl --location --request POST 'http://vegeta-server/api/v1/attack' \
--header 'Content-Type: application/json' \
--data-raw '{
    "rate": 10,
    "duration": "10s",
    "target": {
        "method": "GET",
        "URL": "http://some.host./and/end/point",
        "scheme": "http"
    }
}
'
```
Documentation - [Vegeta](https://github.com/tsenart/vegeta) [RestApi](https://github.com/nitishm/vegeta-server/blob/master/docs/usage.md)
