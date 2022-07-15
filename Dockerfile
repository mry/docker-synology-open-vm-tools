# Ubuntu
FROM ubuntu:20.04
RUN apt-get update \
  && apt-get install -y openssh-client open-vm-tools \
  && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
COPY shutdown.sh /sbin/shutdown
RUN command
CMD [ "/run.sh" ]