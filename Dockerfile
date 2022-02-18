FROM centos:centos7

RUN yum install httpd -y
RUN rm -f /var/www/html/hello.html
COPY hello.html /var/www/html/

CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
CMD sudo rm -f /root/DevOpsAL/hello.html
CMD sudo cp -rvf * /root/DevOpsAL/
CMD sudo docker build -t raktim00/web:v1 /root/DevOpsAL/
CMD sudo docker push raktim00/web:v1
