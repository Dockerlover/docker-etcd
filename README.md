# docker-etcd
Docker化Etcd

## 镜像特点

- 2015/6/20 继承基础镜像docker-ubuntu

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-etcd.git
        cd docker-etcd
        sh run.sh

- 运行容器
        
        HOST_IP=$(hostname --all-ip-addresses | awk '{print $1}')
        docker run -it -d --name etcd -p 4001:4001 -e HOST_IP=$HOST_IP docker-etcd
