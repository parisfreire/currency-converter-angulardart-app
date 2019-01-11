# Currency Converter App using AngularDart using ExchangesRates API.

## Deployment with Docker

Building the image.

```
docker build -t "currency-converter-angulardart-app:dockerfile" .
```

Running the container from the previous image.

```
docker run -it -p 8082:8082 currency-converter-angulardart-app:dockerfile
```

