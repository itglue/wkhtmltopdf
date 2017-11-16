FROM ubuntu:trusty
MAINTAINER Development "devops@itglue.com"

# install system dependencies
RUN apt-get update -qq \
&& apt -y upgrade \
&& apt -y install \
  wget \
  build-essential \
  python-software-properties \
  software-properties-common

RUN useradd -m wkhtmltopdf_compile \
&& usermod -aG sudo wkhtmltopdf_compile \
&& echo "wkhtmltopdf_compile ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/wkhtmltopdf_compile
USER wkhtmltopdf_compile

COPY . /home/wkhtmltopdf_compile/wkhtmltopdf
WORKDIR /home/wkhtmltopdf_compile/wkhtmltopdf

# mount point where compiled code will be copied
VOLUME /opt/wkhtmltopdf_build

ENTRYPOINT ["/bin/bash"]
