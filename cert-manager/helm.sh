#!/bin/bash
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm upgrade --install cert-manager jetstack/cert-manager \
  --namespace default \
  --create-namespace \
  --version v1.13.2 \
  --set installCRDs=true \
  --set 'extraArgs={--dns01-recursive-nameservers-only,--dns01-recursive-nameservers=8.8.8.8:53\,1.1.1.1:53}'
