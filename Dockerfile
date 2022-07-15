<<<<<<< HEAD
# Ubuntu
FROM ubuntu:20.04
=======
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
>>>>>>> parent of cf0d994... Revert back to Debian slim dist
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