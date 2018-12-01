FROM mysql:5.7.16
EXPOSE 3306

# Set debian default locale to ja_JP.UTF-8
RUN apt-get update && \
    apt-get install -y locales && \
    rm -rf /var/lib/apt/lists/* && \
    echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

ADD ./my.app.cnf /etc/mysql/conf.d/my.app.cnf

CMD ["mysqld"]