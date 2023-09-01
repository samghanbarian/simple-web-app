FROM nginx
LABEL maintainer='samaneh-D'
RUN apt-get update && apt install -y git
WORKDIR /tmp
RUN pwd
RUN git clone https://github.com/daviddias/static-webpage-example.git ./static-webpage-example
RUN pwd && ls
ADD ./static-webpage-example/src usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
