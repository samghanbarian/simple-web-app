FROM nginx
LABEL maintainer='samaneh-D'
RUN apt-get update && apt install -y git
WORKDIR /tmp
RUN pwd
RUN git clone https://github.com/daviddias/static-webpage-example.git 
RUN pwd && ls
ADD ./src usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
