# outline-http-proxy-docker


## Сборка
```docker build -t outline-http-proxy .```

## Запуск
```docker run -e KEY="ss://ENCRYPTION_KEY@HOST:PORT/" -p 8080:8080 outline-http-proxy```