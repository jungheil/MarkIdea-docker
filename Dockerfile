From openjdk:8-slim

ARG USERNAME=admin 
ENV USERNAME=$USERNAME
ARG PASSWORD=admin 
ENV PASSWORD=$PASSWORD

WORKDIR /markidea

RUN \
    mkdir data && \
    apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl wget && \
    curl -s https://api.github.com/repos/Hansanshi/mark-idea/releases/latest | grep browser_download_url | cut -d '"' -f 4 | xargs wget -O note.jar && \
    apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

COPY start.sh /markidea

EXPOSE 8090

CMD [ "/bin/sh", "/markidea/start.sh" ]