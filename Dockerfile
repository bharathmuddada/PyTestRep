FROM amazonlinux:1
ENV AWS_DEFAULT_REGION us-east-1
# Make able to install Node 6.x from upstream
# Install Python3.6 and Python2.7 with pip and devel
# Install GCC, Make and MySQL-devel, NodeJS, Nano, findutils, and libyaml for parsing .yml (serverless) via Python
# Clean-up after ourselves
RUN yum install -y python-pip libpython-dev python36-setuptools python36-devel git && \
  yum clean all && rm -rf /var/cache/yum

# Install/upgrade pip, awscli, mysqlclient for both Python 2.7 and Python 3.6
RUN ls -la /usr/local/bin
RUN find / -iname "pip*"
RUN easy_install-3.6 pip &&\
         pip install --user --upgrade pip &&\
         pip install awscli==1.11.18

ENTRYPOINT ["/bin/bash", "-c"]