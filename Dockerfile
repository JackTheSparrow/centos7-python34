FROM centos:centos7
LABEL maintainer "Dinara Aleskarova <dinara.aleskarova@simbirsoft.com>"

RUN yum -y update \
    && yum -y install epel-release git \
    && yum -y install python34 python34-pip \
    && yum clean all \
    && useradd -d /opt/linter -s /bin/bash linter \
    && pip3 install -U pip && pip install git+https://github.com/boakley/robotframework-lint.git

USER linter

VOLUME /test

CMD ["rflint", "/test"]
