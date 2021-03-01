# Trojan-Go Docker build

## 使用说明
```shell
# 1、get service config
wget https://github.com/zxing0214/trojan-go/raw/master/example/server.json
# 2、修改 server.json 重点关注 password/ssl部分
# 3、启动容器
docker run --restart=always --net=host --volume server.json:/config/server.json -p 80:80  -p 443:443  zxing/trojan-go 
```