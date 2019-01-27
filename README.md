## Currency Converter App using [AngularDart](https://github.com/dart-lang/angular) and [ExchangesRates API](https://github.com/exchangeratesapi/exchangeratesapi).

### Deployment with [Webdev](https://github.com/dart-lang/site-webdev/blob/master/src/tools/webdev.md)

Installing Pubspec dependencies.

```
pub get
```

Starting local development environment.

```
webdev serve
```

### Deployment with Docker

Building the image.

```
docker build -t "currency-converter-angulardart-app:dockerfile" .
```

Running the container from the previous image.

```
docker run -it -p 8082:8082 currency-converter-angulardart-app:dockerfile
```

