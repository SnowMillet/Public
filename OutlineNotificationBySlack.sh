#!/bin/bash

# 通过 slack 发送 /opt/outline/access.json

# 读取Outline访问信息，并通过curl发送到指定URL
access_content=$(sudo cat /opt/outline/access.txt)

sudo curl -X POST -H "Content-Type: application/json" -d '{"text": "'"${access_content}"'"}' curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' https://hooks.slack.com/services/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