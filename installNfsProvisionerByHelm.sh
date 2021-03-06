#!/bin/bash
helm repo add azure http://mirror.azure.cn/kubernetes/charts/
helm install nfs-storage azure/nfs-client-provisioner \
--set nfs.server=172.16.130.60 \
--set nfs.path=/data \
--set storageClass.name=nfs-storage \
--set storageClass.defaultClass=true
