FROM redis:3.2

RUN set -eux; \
        \
        mkdir -p /var/lib/redis; \
        chown redis:redis /var/lib/redis; \
        \
        mkdir -p /etc/redis /etc/redis/conf.d

WORKDIR /var/lib/redis

COPY defs/redis-3.2.conf /etc/redis/redis.conf

RUN set -eux; \
        \
        sed -i "s/^bind.*/bind 0.0.0.0/" /etc/redis/redis.conf; \
        sed -i "s/^# requirepass.*/requirepass ${REDIS_PASSWORD:-}/" /etc/redis/redis.conf

CMD ["redis-server", "/etc/redis/redis.conf"]