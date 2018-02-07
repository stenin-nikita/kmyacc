FROM debian:jessie
LABEL mantainer="Nikita Stenin <stenin.nikita@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    autoconf \
    curl \
    ca-certificates \
    nano \
    git \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN git clone https://github.com/moriyoshi/kmyacc-forked.git /usr/local/kmyacc \
    && cd /usr/local/kmyacc \
    && make \
    && make install

COPY docker-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-entrypoint"]

CMD ["kmyacc", "-h"]