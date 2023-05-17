#!/bin/bash

# 转换 /opt/outline/access.txt 为 /opt/outline/access.json

# 使用 grep 查找包含关键字 "certSha256" 的行，然后使用 cut 从第一个冒号开始分割行并提取冒号后面的部分，再通过 tr 删除空白字符
certsha256=$(grep "certSha256" /opt/outline/access.txt | cut -d ':' -f 2- | tr -d '[:space:]')

# 使用 grep 查找包含关键字 "apiUrl" 的行，然后使用 cut 从第一个冒号开始分割行并提取冒号后面的部分，再通过 tr 删除空白字符
apiurl=$(grep "apiUrl" /opt/outline/access.txt | cut -d ':' -f 2- | tr -d '[:space:]')

# 利用提取到的 certsha256 和 apiurl 变量创建 access.json 文件
cat <<- EOF > /opt/outline/access.json
{
  "certSha256": "$certsha256",
  "apiUrl": "$apiurl"
}
EOF
