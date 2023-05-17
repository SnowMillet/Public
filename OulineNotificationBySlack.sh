#!/bin/bash

# 下载并安装Docker（通过执行Docker官方安装脚本）
sudo wget -qO- https://get.docker.com/ | bash

# 允许6281端口访问（用于Outline的key）
sudo ufw allow 6281
# 允许20481端口访问（用于Outline的API通信）
sudo ufw allow 20481

# 下载并安装Outline Server
sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)" install_server.sh --keys-port=6281 --api-port=20481

# 读取Outline访问信息，将其转换为JSON格式，并通过curl发送到指定URL
access_content=$(sudo cat /opt/outline/access.json)
sudo curl -X POST -H "Content-Type: application/json" -d '{"text": "'"${access_content}"'"}' https://hooks.slack.com/services/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