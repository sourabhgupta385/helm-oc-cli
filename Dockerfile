FROM ubuntu

USER root
 
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://get.helm.sh/helm-v3.2.0-linux-amd64.tar.gz && \
	tar -zxvf helm-v3.2.0-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    wget https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz && \
    tar -zxvf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz && \
    mv openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit/oc /usr/local/bin/oc
 
CMD bash