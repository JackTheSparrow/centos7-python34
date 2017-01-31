FROM centos:centos7
MAINTAINER Dinara Aleskarova <dinara.aleskarova@simbirsoft.com>

RUN yum -y update
RUN yum -y install epel-release git
RUN yum -y install python34
RUN curl -O https://bootstrap.pypa.io/get-pip.py && /usr/bin/python3.4 get-pip.py
RUN pip install git+https://github.com/boakley/robotframework-lint.git


ADD . /src
RUN cd /src

CMD ["bin/bash"]
