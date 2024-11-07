vcl 4.0;

backend default {
    .host = "nginx";  # Имя сервиса Nginx
    .port = "8888";  # Порт Nginx
}

sub vcl_recv {
    # Здесь можно добавить правила кэширования
}

sub vcl_backend_response {
    # Здесь можно управлять ответами от бэкенда
}

