#!/bin/bash
while ! ping -c 1 redis-0.redis; do
    echo 'Waiting for server'
    sleep 1
done

redis-sentinel /redis-config/sentinel.conf

