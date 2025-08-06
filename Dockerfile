FROM n8nio/n8n:latest

# 切換到 root 使用者
USER root

# 安裝 Python 和基本套件
RUN apk update && apk add --no-cache \
    python3 \
    py3-pip \
    py3-numpy \
    py3-pandas \
    py3-requests \
    py3-beautifulsoup4 \
    py3-lxml

# 設定 Python 環境變數
ENV PYTHON_PATH=/usr/bin/python3

# 切換回原本的使用者
USER node