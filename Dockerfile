FROM google/dart
WORKDIR /app
ADD pubspec.* /app/
RUN pub get --no-precompile
ADD . /app/
RUN pub get --offline --no-precompile
ENV PATH="$PATH:/root/.pub-cache/bin"
RUN pub global activate webdev
EXPOSE 8082
CMD ["webdev", "serve", "web:8082", "--hostname", "0.0.0.0"]
