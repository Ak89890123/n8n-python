FROM n8nio/n8n:latest

# 切換到 root 使用者
USER root

# 更新套件庫並安裝 Python
RUN apk update && apk add --no-cache python3 py3-pip python3-dev

# 安裝常用的 Python 套件
RUN pip3 install --no-cache-dir numpy pandas requests beautifulsoup4 lxml

# 切換回原本的使用者
USER node