FROM debian:bookworm-slim

WORKDIR /eduke32build

ARG DEBIAN_FRONTEND=noninteractive

RUN set -x && \
    apt-get update -qq && \
    apt-get upgrade -qq && \
    apt-get install -qq --no-install-recommends \
    	ca-certificates build-essential nasm \
		libgl1-mesa-dev libglu1-mesa-dev \
		libsdl1.2-dev libsdl-mixer1.2-dev libsdl2-dev libsdl2-mixer-dev \
		flac libflac-dev libvorbis-dev libvpx-dev libgtk2.0-dev freepats git && \
    rm -rf /var/lib/apt/lists/*

COPY /bin/* /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
