# # Debian
# FROM debian:stable-slim
# RUN apt-get update \
#   && apt-get install -y openssh-client open-vm-tools \
#   && rm -rf /var/lib/apt/lists/*

# COPY run-debian.sh /run.sh
# COPY shutdown.sh /sbin/shutdown
# RUN command
# CMD [ "/run.sh" ]


# Ubuntu
FROM ubuntu:latest
=======
# Ubuntu
FROM ubuntu:20.04
>>>>>>> Stashed changes
RUN apt-get update \
  && apt-get install -y openssh-client open-vm-tools \
  && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
COPY shutdown.sh /sbin/shutdown
RUN command
CMD [ "/run.sh" ]


# # Ubuntu open-vm-tools-dev
# FROM ubuntu:latest
# RUN apt-get update \
#   && apt-get install -y openssh-client open-vm-tools-dev \
#   && rm -rf /var/lib/apt/lists/*

# COPY run-debian.sh /run.sh
# COPY shutdown.sh /sbin/shutdown
# RUN command
# CMD [ "/run.sh" ]