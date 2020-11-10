FROM nginx:1.19.4 as build-image

COPY ./config/nginx.conf /etc/nginx/

RUN mkdir /etc/nginx/certificates

RUN mkdir -p /etc/nginx/sites-available
COPY ./config/reverse_proxy.conf /etc/nginx/sites-available/

RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/reverse_proxy.conf /etc/nginx/sites-enabled/reverse_proxy.conf

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

