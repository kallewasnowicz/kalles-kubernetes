#!/bin/bash
helm repo add metallb https://metallb.github.io/metallb
#helm upgrade metallb metallb/metallb
helm --namespace metallb-system install --create-namespace metallb metallb/metallb
