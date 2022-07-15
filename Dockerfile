# Debian slim
FROM debian:stable-slim
RUN apt-get update \
  && apt-get install -y openssh-client open-vm-tools \
  && rm -rf /var/lib/apt/lists/*

COPY run-debian.sh /run.sh
COPY shutdown.sh /sbin/shutdown
RUN command
CMD [ "/run.sh" ]