# podman build -t my-xtrabackup:8.4 -f xtrabackup.Dockerfile .
# podman save -o my-xtrabackup.tar my-xtrabackup:8.4 
# kind load image-archive my-xtrabackup.tar --name=local-cluster
# podman exec -it local-cluster-control-plane crictl images

FROM docker.io/percona/percona-xtrabackup:8.4

USER root

RUN microdnf install -y nmap-ncat && \
    microdnf clean all