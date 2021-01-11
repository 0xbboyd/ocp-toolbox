FROM registry.access.redhat.com/ubi8
LABEL com.toleon.vendor="Brendan Boyd<bboyd@tolaeon.io>"
LABEL com.toleon.version="0.1.0"
LABEL com.toleon.name="ocp-toolbox"
LABEL com.toleon.url="tolaeon.io"
LABEL com.toleon.vcs-url="https://github.com/0xbboyd/ocp-toolbox"

USER root
WORKDIR /bin
RUN yum install -y wget
RUN wget wget -c https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest/linux/oc.tar.gz -O - | tar -xz
RUN wget wget -c https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/latest/tkn-linux-amd64-0.13.1.tar.gz -O - | tar -xz
RUN wget wget -c https://mirror.openshift.com/pub/openshift-v4/clients/odo/latest/odo-linux-amd64.tar.gz -O - | tar -xz
WORKDIR ~