# Ethgrey-Docker
## 安装Docker
Ubuntu
```
# root权限下安装
# 下载安装
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun 
# 启动Docker
service docker start
```
Centos
```
# root权限下安装
# 下载安装
curl -fsSL https://get.docker.com | bash -s docker --mirror aliyun
# 启动 Docker
sudo systemctl start docker
```
## 构建Docker
Ubuntu 
```
sudo apt-get update -y
sudo apt-get install git 
git clone https://github.com/Pow-Duck/Ethgrey-Docker.git
cd Ethgrey-Docker/
docker build -t  ethgrey:v1 .
```
Centos
```
sudo yum update -y
sudo yum install git -y
git clone https://github.com/Pow-Duck/Ethgrey-Docker.git
cd Ethgrey-Docker/
docker build -t  ethgrey:v1 .
```
## 部署Docker
```
# 如构建多个请 修改name 后面的名字 例如构建两个则执行
# docker run -d --name ethgrey1  ethgrey:v1
# docker run -d --name ethgrey2  ethgrey:v1

docker run -d --name ethgrey1  ethgrey:v1
```
## 常见命令
```
# 查看Docker中的Grey 节点信息
docker logs  ethgrey1 
# 查看Docker中的运行数量
docker ps
# 关闭Docker中的节点
# 根据docker ps中得到 CONTAINER ID
# docker stop f48fcb969a42
docker stop CONTAINER ID
# 启动DOcker中暂停的节点
docker start CONTAINER ID
```
