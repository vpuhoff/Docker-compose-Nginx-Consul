FROM openresty/openresty
 
COPY nginx.conf /etc/nginx/nginx.conf

COPY modules /etc/nginx/lua/

