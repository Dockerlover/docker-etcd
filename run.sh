curl -L  https://github.com/coreos/etcd/releases/download/v2.0.12/etcd-v2.0.12-linux-amd64.tar.gz -o etcd-v2.0.12-linux-amd64.tar.gz
tar xzvf etcd-v2.0.12-linux-amd64.tar.gz etcd
docker build -t docker-etcd .
