server {
    listen 80;
    server_name localhost www.divvai.com divvai.com;

    location / {
        proxy_set_header   Host                 $host;
        proxy_set_header   X-Real-IP            $remote_addr;
        proxy_set_header   X-Forwarded-For      $proxy_add_x_forwarded_for;
        proxy_set_header   X-Forwarded-Proto    $scheme;
        proxy_set_header Host $http_host;

        proxy_pass http://divvai:5000;
    }
}