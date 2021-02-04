# personal cloud thing
# shell script
# Run as SUDO

# Update/upgrade
apt --assume-yes update
apt --assume-yes upgrade
apt --assume-yes install emacs fish 


# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker pi
sudo chmod 666 /var/run/docker.sock

docker version
docker info
