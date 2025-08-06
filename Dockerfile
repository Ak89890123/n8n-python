FROM n8nio/n8n:latest

# 安裝 Python 和所需套件
RUN apk add --no-cache python3 py3-pip
RUN pip3 install numpy pandas requests beautifulsoup4 lxml

# 設定 Python 環境變數
ENV PYTHON_PATH=/usr/bin/python3