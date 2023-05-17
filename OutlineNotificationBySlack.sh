#!/bin/bash

# 通过 slack 发送 /opt/outline/access.json

# 读取Outline访问信息，并通过curl发送到指定URL
access_content=$(sudo cat /opt/outline/access.txt)

sudo curl -X POST -H "Content-Type: application/json" -d '{"text": "'"${access_content}"'"}' https://hooks.slack.com/services/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