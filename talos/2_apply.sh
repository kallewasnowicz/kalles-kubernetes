#!/bin/bash
talosctl apply-config --insecure -n 10.10.20.101 --file master1.yaml
talosctl apply-config --insecure -n 10.10.20.201 --file worker1.yaml
talosctl apply-config --insecure -n 10.10.20.202 --file worker2.yaml