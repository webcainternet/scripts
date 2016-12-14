cat << EndOfMessage
server {
    listen 80;

    server_name www.$1;

    location / {
        return 301 http://$1\$request_uri;
    }
}

server {
    listen 80;

    server_name $1;

    location / {
        proxy_pass          http://127.0.0.1:$2;
        proxy_http_version  1.1;
        proxy_set_header    Upgrade     \$http_upgrade;
        proxy_set_header    Host        \$host;
        proxy_set_header X-Real-IP  \$remote_addr;
        proxy_set_header X-Forwarded-For \$remote_addr;
        proxy_set_header    Connection  \$connection_upgrade;
    }
}
EndOfMessage
