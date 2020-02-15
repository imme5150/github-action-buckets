# Container image that runs your code
FROM alpine:3.10

# RUN apk add --no-cache \
#         bash \
#         wget \
#     && mkdir /target \
#     && cd /target \
#     && wget https://github.com/textileio/textile/releases/download/v0.0.2/textile_v0.0.2_linux-amd64.tar.gz \
#     && tar -xvf textile_v0.0.2_linux-amd64.tar.gz \
#     && chmod +x textile \
#     && cp textile /usr/local/bin/

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY textile /usr/local/bin
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
