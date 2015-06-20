# 基础镜像
FROM docker-ubuntu
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 安装ETCD
ADD etcd /usr/bin
# 配置supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 映射数据卷
VOLUME ["/var/log/supervisor","/data"]
# 暴露端口号
EXPOSE 2379 2380 4001 7001
# 启动supervisord
CMD ["/usr/bin/supervisord"]
