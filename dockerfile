# Pull base image.
FROM ubuntu:18.04

RUN \
# Update
apt-get update -y && \
# Install Unzip
apt-get install unzip -y && \
# need wget
apt-get install wget -y && \
# vim
apt-get install vim -y && \
apt-get install -y curl && \
apt-get install -y keychain && \
apt-get install -y git

################################
# Install Terraform
################################

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_linux_amd64.zip
# Unzip
RUN unzip terraform_1.2.9_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/
# Check that it's installed
RUN terraform --version 

################################
# Install python
################################

RUN apt-get install -y python3-pip && \
#RUN ln -s /usr/bin/python3 python
  pip3 install --upgrade pip && \
  python3 -V 
RUN pip --version

################################
# Install gcloud
################################

RUN  apt-get install  -y apt-transport-https ca-certificates gnupg && \
     echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
     curl https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
     apt-get -y update &&  apt-get install -y  google-cloud-cli

     