# dockerpiaarm

mkdir ~/qb ~/torrent

cd dockerpiaarm

docker build -t openvpn .


docker run -itd --privileged --name=pia -e USER=piausername -e PASS=piapwd -p 8080:8080 \

-v /home/$USER/qb:/root/.config/qBittorrent \

-v /home/$USER/torrent/:/root/Downloads \

-v /home/$USER/torrent/:/root/.local/share/data/qBittorrent \

openvpn
