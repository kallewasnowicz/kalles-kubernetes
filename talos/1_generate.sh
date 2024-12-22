#!/bin/bash
talosctl gen config --with-secrets secrets.yaml homelab https://10.10.20.101:6443 --force #--config-patch @cilium.patch
talosctl machineconfig patch controlplane.yaml --patch @master1.patch --output master1.yaml
talosctl machineconfig patch worker.yaml --patch @worker1.patch --output worker1.yaml
talosctl machineconfig patch worker.yaml --patch @worker2.patch --output worker2.yaml