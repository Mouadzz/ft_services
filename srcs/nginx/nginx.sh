openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
mv index.html /var/www/localhost/htdocs/
mv default.conf /etc/nginx/conf.d/default.conf



mkdir run/nginx
nginx -g 'daemon off;'