FROM ubuntu:20.04
LABEL maintainer="Yakovenko Aleksey, lexa_322@mail.ru"
ENV TZ=Asia/Novosibirsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && groupadd --gid 1000 user \
    && useradd --uid 1000 --gid user --shell /bin/bash --create-home user \
    && apt-get -y update \
    && apt-get -y install curl \
       gnupg \
       gnupg2 \
       gnupg1 \
    && curl -sL https://nginx.org/keys/nginx_signing.key | apt-key add - \
    && echo "deb https://packages.nginx.org/unit/ubuntu/ focal unit"  | tee -a /etc/apt/sources.list.d/unit.list \
    && echo "deb-src https://packages.nginx.org/unit/ubuntu/ focal unit" | tee -a /etc/apt/sources.list.d/unit.list \
    && apt-get -y update \
    && apt-get -y install unit \
    && apt-get -y install  \
       supervisor \
       unit-dev \
       unit-go \
       unit-jsc11 \
       unit-perl \
       unit-php \
       unit-python2.7 \
       unit-python3.8 \
       unit-ruby \
       apache2 \
       libapache2-mod-php7.4 \ 
       php7.4-fpm \ 
       adminer \
    && rm -rf /var/lib/apt/lists/* \
    && a2enconf adminer
COPY supervisor.conf /etc/supervisor/conf.d/supervisor.conf
CMD ["/usr/bin/supervisord"]
