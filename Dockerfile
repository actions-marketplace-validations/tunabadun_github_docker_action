# Container image that runs your code
FROM ubuntu:latest

RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash -s -- -i /opt/yandex-cloud -n
RUN ln -s /opt/yandex-cloud/bin/yc /usr/local/bin/yc

CMD [ "yc", " --version" ]


# # Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh
# # Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.sh"]
