FROM lscr.io/linuxserver/rdesktop:ubuntu-xfce

RUN \
  echo "**** install packages ****" && \
  apt-get update && \
  apt-get upgrade -y && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install --no-install-recommends -y \
    curl \ 
    notepadqq \
    openscad \
    prusa-slicer \
    vim
RUN \
  curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list && \
  apt update && \
  apt install --no-install-recommends -y brave-browser
RUN \
  echo "**** cleanup ****" && \
  apt-get autoclean && \
  rm -rf \
    /var/tmp/* \
    /tmp/*

# add local files
COPY /root /

# ports and volumes
EXPOSE 3389
VOLUME /config
