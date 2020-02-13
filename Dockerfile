FROM nginx:alpine
 
COPY nginx.conf /etc/nginx/nginx.conf

RUN apt install git -y

RUN git clone https://github.com/ledgetech/lua-resty-http.git lua-resty-http
RUN mkdir /usr/local/lib/lua/resty/
RUN cp lua-resty-http/lib/resty/*.lua /usr/local/lib/lua/resty/

RUN git clone https://github.com/hamishforbes/lua-resty-consul.git lua-resty-consul
RUN cp lua-resty-consul/lib/resty/*.lua /usr/local/lib/lua/resty/

