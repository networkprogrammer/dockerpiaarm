FROM armv7/armhf-ubuntu:16.04
RUN apt-get -qq update && apt-get -yqq install openvpn curl qbittorrent-nox
COPY ca.rsa.4096.crt /root/ca.rsa.4096.crt
COPY crl.rsa.4096.pem /root/crl.rsa.4096.pem
COPY siliconvalley.ovpn /root/siliconvalley.ovpn
COPY script /root/script
COPY qbstart /root/qbstart
RUN chmod +x /root/qbstart
RUN chmod +x /root/script
VOLUME /root/.config/qBittorrent
VOLUME /root/Downloads
VOLUME /root/.local/share/data/qBittorrent
EXPOSE 8080
CMD /root/script
