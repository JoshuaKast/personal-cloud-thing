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

docker version
docker info

