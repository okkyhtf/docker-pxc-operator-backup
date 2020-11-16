FROM docker.io/percona/percona-xtradb-cluster-operator:1.6.0-pxc5.7-backup
LABEL maintainer="Okky Hendriansyah <okky.htf@gmail.com>"
USER root
# Replace the scripts to omit the MD5SUM check step and list command,
# since Minio client is not compatible with Aliyun OSS right now
COPY scripts/backup.sh /usr/bin/backup.sh
COPY scripts/recovery-s3.sh /usr/bin/recovery-s3.sh
USER mysql
