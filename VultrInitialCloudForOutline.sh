#!/bin/bash

# 下载并安装Docker（通过执行Docker官方安装脚本）
sudo wget -qO- https://get.docker.com/ | bash
# 允许6281端口访问（用于Outline的key）
sudo ufw allow 6281
# 允许20481端口访问（用于Outline的API通信）
sudo ufw allow 20481
# 下载并安装Outline Server
sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)" install_server.sh --keys-port=6281 --api-port=20481
# 读取Outline访问信息，将其转换为JSON格式，并通过curl发送到指定URL（比如微信提醒服务）
sudo bash -c 'access_content=$(cat /opt/outline/access.txt) && printf "{\"title\": \"outline\", \"desp\": \"%s\"}" "$access_content" > /opt/outline/access.json' && sudo curl -X POST -H "Content-Type: application/json" -d "@/opt/outline/access.json" https://sctapi.ftqq.com/SCT164996Tz5LmqzTTFIDyFUZNmyvLXij5.send