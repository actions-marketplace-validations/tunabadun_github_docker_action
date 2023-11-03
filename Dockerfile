# Container image that runs your code
FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl unzip python3-pip

RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash -s -- -i /opt/yandex-cloud -n
RUN ln -s /opt/yandex-cloud/bin/yc /usr/local/bin/yc

# RUN curl -O https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
# RUN unzip terraform_0.12.24_linux_amd64.zip
# RUN mv terraform /usr/local/bin/

# RUN pip3 install awscli

# RUN apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*


CMD [ "yc", " --version" ]


# # Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh
# # Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.sh"]
