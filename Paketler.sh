#!/bin/sh
# Sistem güncellemeleri
sudo apt update && sudo apt upgrade
# Gnome Entegrasyonu
sudo apt install -y chrome-gnome-shell
# Otomatik Numlock açılması
sudo apt install numlockx
# Gereksiz Paketlerin kaldırılması
sudo apt remove gnome-calculator gnome-characters gnome-logs gnome-system-monitor -y
# Linux araçları ve Flatpak
sudo apt install -y git zsh wget build-essential apt-transport-https flatpak gnome-software-plugin-flatpak
# Python pip paketi
sudo apt intall -y python3-pip
# Xanmod kernel kurulumu
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add -
sudo apt update && sudo apt install linux-xanmod
# Eski kernelin kaldırılması
sudo apt autoremove
# Video oynatıcı
sudo apt install -y vlc
# Sıkıştırma araçları
sudo apt install -y unace rar unrar unar p7zip-rar p7zip p7zip-full zip unzip
# Torrent indirme aracı
sudo apt install -y qbittorrent
# Telegram Desktop
sudo apt install -y telegram-desktop
# Ebook aracı
sudo apt install -y calibre
# Deb paketlerini yükleme aracı
sudo apt install -y gdebi
# Discord kurulumu
sudo apt install -y snapd
sudo systemctl start snapd.service
sudo snap install core
sudo snap install discord
# Brave tarayıcı
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install -y brave-browser
# Spotify Kurulumu
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install -y spotify-client
# Ohmyzsh kurulumu
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Snap ve Flatpak üzerinden kurduğum paketler
sudo snap install rocketchat-desktop
sudo snap install code --classic
sudo snap install whatee
sudo snap install qownnotes
sudo snap install wonderwall



