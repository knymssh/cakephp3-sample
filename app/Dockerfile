FROM local/centos7-base
LABEL maintainer="Masashi Kanaya <kanaya@cloudpack.jp>"

#RUN cp -f /usr/share/zoneinfo/Japan /etc/localtime
#RUN timedatectl set-timezone Asia/Tokyo

VOLUME [ "/var/www/html" ]

#COPY scripts /root/scripts
#RUN chmod -R u+x /root/scripts

# init.sh をコンテナに追加し、実行権限を付与
#ADD init.sh /usr/local/bin/init.sh
#RUN chmod u+x /usr/local/bin/init.sh

# コンテナ起動時に init.sh を実行する
#RUN ["sh", "/usr/local/bin/init.sh"]

# Enable httpd service.
RUN systemctl enable httpd

#CMD ["/sbin/init"]
CMD [ "/root/scripts/setup_app.sh", "/sbin/init" ]

# docker build --rm -t local/c7-httpd .
# docker run -d --privileged -p 8080:80 -v `pwd`/app:/var/www/html -v `pwd`/scripts:/root/scripts local/c7-httpd
