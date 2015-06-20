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

        docker run -it -d --name etcd -p 2379:2379 -p 2380:2380 -p 4001:4001 -p 7001:7001 docker-etcd

- 测试是否安装正确

        docker run -it --rm docker-etcd
        etcdctl set mykey "this is awesome"
        etcdctl get mykey
