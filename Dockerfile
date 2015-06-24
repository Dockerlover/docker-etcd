# 基础镜像
FROM coreos/etcd
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID etcd
# 暴露端口号
EXPOSE 4001 7001
# 启动supervisord
ENTRYPOINT ["/etcd"]
