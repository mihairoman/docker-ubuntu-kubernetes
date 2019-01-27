FROM ubuntu:18.10
run apt-get update
run apt-get install -y curl wget apt-transport-https gnupg2
run curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
run echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
run apt-get update
run apt-get install -y kubectl
