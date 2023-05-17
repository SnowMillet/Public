#!/bin/bash

# Vultr 初始化脚本，依次完成如下脚本
# OutlineInstall.sh --> OutlineAccessTextToJson.sh

sudo wget -qO- https://raw.githubusercontent.com/SnowMillet/Public/main/OutlineInstall.sh | bash

sudo wget -qO- https://raw.githubusercontent.com/SnowMillet/Public/main/OutlineAccessTextToJson.sh | bash
