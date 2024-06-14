# 使用官方 Python 镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制当前目录的内容到工作目录
COPY . /app

# 安装所需的 Python 包
RUN pip install --no-cache-dir -r requirements.txt

# 设置环境变量
ENV PROD_DB_HOST=host
ENV PROD_DB_USER=user
ENV PROD_DB_PASSWORD=pass
ENV PROD_DB_NAME=db
ENV TEST_DB_HOST=host
ENV TEST_DB_USER=user
ENV TEST_DB_PASSWORD=pass
ENV TEST_DB_NAME=db
ENV FEISHU_RECEIVE_ID=rid
ENV FEISHU_APP_ID=aid
ENV FEISHU_APP_SECRET=ast

# 暴露端口（如果需要）
# EXPOSE 8000

# 运行 Python 脚本
CMD ["python", "main.py"]
