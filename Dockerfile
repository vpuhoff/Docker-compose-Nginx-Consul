FROM nginx:alpine
 
COPY nginx.conf /etc/nginx/nginx.conf

COPY modules /etc/nginx/lua/

RUN sh install-nginx.sh