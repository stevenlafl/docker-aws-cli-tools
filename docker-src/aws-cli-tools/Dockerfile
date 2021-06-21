FROM amazon/aws-cli

RUN yum -y install unzip \
  && curl -Lo sam.zip https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip \
  && unzip sam.zip -d sam-installation \
  && ./sam-installation/install \
  && rm -rf sam-installation sam.zip \
  && yum -y remove unzip

ENTRYPOINT []
