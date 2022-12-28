FROM ubuntu:18.04
ENV USER=root
ENV PASSWORD=password
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt update && \
        apt install -y wget gnupg firefox ffmpeg  && \
        { echo -n 'deb https://xpra.org/ bionic main'; cat /etc/apt/sources.list; } >/etc/apt/sources.list.new && \
        mv /etc/apt/sources.list.new /etc/apt/sources.list && \
        wget -q https://xpra.org/gpg.asc -O- | apt-key add - && \
        apt install -y xpra  && \
        apt autoremove
EXPOSE 9898

CMD MIN_START_BUFFERS=100 XPRA_SOUND_QUEUE_TIME=450 XPRA_XSHM=0 XPRA_ENCODING_STRICT_MODE=1 XPRA_MIN_DELTA_SIZE=0 XPRA_MAX_DELTA_SIZE=6553600 xpra start --bind-tcp=0.0.0.0:9898 --html=on --start-child="firefox --no-sandbox" --daemon=off  --opengl=no --pulseaudio=on --speaker-codec=mp3 --webcam=off --av-sync --no-daemon && tail -f /dev/null
