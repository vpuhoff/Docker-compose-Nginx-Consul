FROM nginx:alpine
 
COPY nginx.conf /etc/nginx/nginx.conf

COPY modules /etc/nginx/lua/

COPY ./ app

WORKDIR app

RUN sh install-nginx.sh