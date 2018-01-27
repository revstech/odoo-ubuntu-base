FROM ubuntu:14.04
LABEL author="tulio@vauxoo.com"
LABEL maintainer="com.revstech@gmail.com"

RUN apt-get update \
    && apt-get install language-pack-id -y \
    && locale-gen "en_US.UTF-8" "id_ID.UTF-8"
ENV LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" LC_ALL="en_US.UTF-8" \
    PYTHONIOENCODING="UTF-8" TERM="xterm" DEBIAN_FRONTEND="noninteractive"

COPY scripts/*.sh /usr/share/revs-docker-internal/ubuntu-base/
RUN bash /usr/share/revs-docker-internal/ubuntu-base/build-image.sh
