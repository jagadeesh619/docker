FROM almalinux:8
RUN yum install nginx -y
EXPOSE 80/tcp
LABEL IMAGE="nginx"      
ENV IMAGE="nginx"
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/
ONBUILD ADD index.html /usr/share/nginx/html/
ADD https://raw.githubusercontent.com/daws-76s/dockerfiles/main/COPY/Dockerfile  /tmp
# need to pass user name while building image  from cmd : docker build -t user:v1 --build-arg username=jagadeesh  .
RUN echo "hello world" > sample.txt
# CMD ["google.com"]
# ENTRYPOINT ["ping"]
WORKDIR /tmp
RUN echo "hello Docker" > docker.txt
CMD ["nginx","-g","daemon off;"]
ARG username
RUN adduser $username
USER $username
