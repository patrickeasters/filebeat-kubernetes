# filebeat-kubernetes

[![Build Status](https://travis-ci.org/patrickeasters/filebeat-kubernetes.svg?branch=master)](https://travis-ci.org/patrickeasters/filebeat-kubernetes)
[![](https://images.microbadger.com/badges/image/patrickeasters/filebeat-kubernetes.svg)](https://microbadger.com/images/patrickeasters/filebeat-kubernetes "Get your own image badge on microbadger.com")
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/patrickeasters/filebeat-kubernetes/blob/master/LICENSE)

A super lightweight filebeat container with only a statically linked binary and config file. The default configuration is set to stream container logs from Kubernetes to a set of Logstash (or Graylog) hosts.
