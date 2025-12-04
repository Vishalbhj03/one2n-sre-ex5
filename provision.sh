#!/usr/bin/env bash
set -e

install_docker() {
  echo ">>> Installing Docker..."
  apt-get update -y
  apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

  apt-get install -y docker.io
  systemctl enable docker
  systemctl start docker
}

install_docker_compose() {
  echo ">>> Installing docker-compose..."
  apt-get install -y docker-compose
}

install_make_and_git() {
  echo ">>> Installing make and git..."
  apt-get install -y make git
}

main() {
  install_docker
  install_docker_compose
  install_make_and_git

  echo ">>> Provisioning finished."
  echo ">>> Inside the VM, run:"
  echo "    cd /vagrant"
  echo "    make deploy"
}

main "$@"
