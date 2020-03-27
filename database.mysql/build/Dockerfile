FROM mysql:5.7

RUN set -eux; \
        \
        sed -i "s/^#bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf