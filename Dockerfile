# 基础镜像
FROM docker-ubuntu
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 安装ETCD
RUN curl -L  https://github.com/coreos/etcd/releases/download/v2.1.0-alpha.1/etcd-v2.1.0-alpha.1-linux-amd64.tar.gz -o etcd-v2.1.0-alpha.1-linux-amd64.tar.gz
RUN tar xzvf etcd-v2.1.0-alpha.1-linux-amd64.tar.gz
RUN cd etcd-v2.1.0-alpha.1-linux-amd64
RUN mv etcd-v2.1.0-alpha.1-linux-amd64/etcd /usr/bin && mv etcd-v2.1.0-alpha.1-linux-amd64/etcdctl /usr/bin && rm -Rf etcd-v2.1.0-alpha.1-linux-amd64*
# 配置supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
VOLUME ["/var/log/supervisor"]
CMD ["/usr/bin/supervisord"]
