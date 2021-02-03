# personal cloud thing
# shell script
# Run as SUDO

# Update/upgrade the rPi
apt --assume-yes update
apt --assume-yes upgrade


# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker pi
sudo chmod 666 /var/run/docker.sock

docker version
docker info

# Fix system to let Docker run
wget http://ftp.us.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_armhf.deb
dpkg -i libseccomp2_2.5.1-1_armhf.deb
rm libseccomp2_2.5.1-1_armhf.deb

# Install some useful stuff
apt --assume-yes install emacs

