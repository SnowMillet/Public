#!/bin/bash

# 安装 Outline Server

# 下载并安装Docker（通过执行Docker官方安装脚本）
sudo wget -qO- https://get.docker.com/ | bash

# 允许6281端口访问（用于Outline的key）
sudo ufw allow 6281
# 允许20481端口访问（用于Outline的API通信）
sudo ufw allow 20481

# 下载并安装Outline Server
sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)" install_server.sh --keys-port=6281 --api-port=20481
