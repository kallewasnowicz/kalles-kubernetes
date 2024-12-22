#!/bin/bash
helm repo add metallb https://metallb.github.io/metallb
#helm upgrade metallb metallb/metallb
helm install metallb metallb/metallb --namespace metallb-system --create-namespace
