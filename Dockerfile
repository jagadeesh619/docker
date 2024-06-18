FROM almalinux:8
RUN yum install nginx -y
CMD ["nginx","-g","deamon off;"]