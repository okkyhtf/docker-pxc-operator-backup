FROM docker.io/percona/percona-xtradb-cluster-operator:1.6.0-pxc5.7-backup
LABEL maintainer="Okky Hendriansyah <okky.htf@gmail.com>"
USER root
# Replace the script to omit the MD5SUM check step,
# since Minio client is not compatible with Aliyun OSS right now
COPY backup.sh /usr/bin/backup.sh
USER mysql
