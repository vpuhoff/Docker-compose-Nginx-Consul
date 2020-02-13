FROM emazzotta/docker-nginx-lua
 
COPY nginx.conf /etc/nginx/nginx.conf

COPY modules /etc/nginx/lua/

