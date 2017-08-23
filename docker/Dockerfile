FROM phusion/baseimage:0.9.22

ENV DEBIAN_FRONTEND=noninteractive \
	LANG=C.UTF-8 \
	LC_ALL=C.UTF-8 \
	ANT_VERSION=1.10.1 \
	ANT_HOME=/opt/ant

WORKDIR /tmp

RUN echo "nameserver 192.168.22.2" > /etc/resolv.conf \
&&  apt-get update \
&&  apt-get install -y --no-install-recommends \
    openjdk-8-jdk \
    wget \
    rsync \
    ssh \
    git \
&&  apt-get clean \
&&  wget --no-check-certificate --no-cookies http://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz \
&&  wget --no-check-certificate --no-cookies http://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz.md5 \
&&  echo "$(cat apache-ant-${ANT_VERSION}-bin.tar.gz.md5) apache-ant-${ANT_VERSION}-bin.tar.gz" | md5sum -c - \
&&  tar -zvxf apache-ant-${ANT_VERSION}-bin.tar.gz -C /opt/ \
&&  ln -sf /opt/apache-ant-${ANT_VERSION} /opt/ant \
&&  rm -f apache-ant-${ANT_VERSION}-bin.tar.gz* \
&&  update-alternatives --install /usr/bin/ant ant /opt/ant/bin/ant 1000 \
&&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /code


