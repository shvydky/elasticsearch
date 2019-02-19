#!/bin/sh
set -ex

ulimit -n 65536
ulimit -u 4096
#ulimit -l unlimited

chown -R elasticsearch:elasticsearch /usr/share/elasticsearch
chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/data

su elasticsearch /usr/local/bin/docker-entrypoint.sh /usr/share/elasticsearch/bin/elasticsearch
