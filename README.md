# docker-etcd
Docker化Etcd

## 镜像特点

- 2015/6/20 继承基础镜像docker-ubuntu

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-etcd.git
        cd docker-etcd
        docker build -t docker-etcd .

- 运行容器
        
        docker run -it -d --name etcd -p 4001:4001 -p 7001:7001 docker-etcd
