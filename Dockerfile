# 基础镜像
FROM docker-ubuntu
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 安装权限软件
RUN apt-get install ca-certificates
# 安装ETCD
RUN curl -L  https://github.com/coreos/etcd/releases/download/v2.1.0-alpha.1/etcd-v2.1.0-alpha.1-linux-amd64.tar.gz -o etcd-v2.1.0-alpha.1-linux-amd64.tar.gz \
&& tar xzvf etcd-v2.1.0-alpha.1-linux-amd64.tar.gz \
&& mv etcd-v2.1.0-alpha.1-linux-amd64/etcd /usr/bin && mv etcd-v2.1.0-alpha.1-linux-amd64/etcdctl /usr/bin && rm -Rf etcd-v2.1.0-alpha.1-linux-amd64*
# 配置supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 映射数据卷
VOLUME ["/var/log/supervisor","/data"]
# 暴露端口号
EXPOSE 2379 2380 4001 7001
# 启动supervisord
CMD ["/usr/bin/supervisord"]
