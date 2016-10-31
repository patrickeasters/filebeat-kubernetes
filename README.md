# filebeat-kubernetes

[![Build Status](https://travis-ci.org/patrickeasters/filebeat-kubernetes.svg?branch=master)](https://travis-ci.org/patrickeasters/filebeat-kubernetes)
[![](https://images.microbadger.com/badges/image/patrickeasters/filebeat-kubernetes.svg)](https://microbadger.com/images/patrickeasters/filebeat-kubernetes "Get your own image badge on microbadger.com")
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/patrickeasters/filebeat-kubernetes/blob/master/LICENSE)

A super lightweight filebeat container with only a statically linked binary and config file. The default configuration is set to stream container logs from Kubernetes to a set of Logstash (or Graylog) hosts.

## Getting Started

### Prerequisites

Setting up this image to log from Kubernetes to Logstash or Graylog is pretty simple. Here are a few prerequisites:

- Server running Logstash or Graylog (with [Beats plugin](https://github.com/Graylog2/graylog-plugin-beats))
- Kubernetes cluster (version >=1.1)

### Creating the Daemon Set

All that's needed to collect logs from containers running in Kubernetes is to create the Daemon Set for filebeat.

Before creating the resource, be sure to edit the `LOGSTASH_HOSTS` environment variable in `filebeat-daemonset.yaml`.

```
env:
  - name: LOGSTASH_HOSTS
    value: "'server1:12201','server2:12201'"
```

Once your Daemon Set spec is ready to go, create it using kubectl.

```
kubectl create -f filebeat-daemonset.yaml
```
