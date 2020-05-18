#!/bin/bash

if [ "$(hostname)" == "rmqn1" ]; then 
  sudo sshpass -p "vagrant" scp /var/lib/rabbitmq/.erlang.cookie root@rmqn2:/var/lib/rabbitmq/
  sudo sshpass -p "vagrant" scp /var/lib/rabbitmq/.erlang.cookie root@rmqn3:/var/lib/rabbitmq/
fi


if [ "$(hostname)" == "rmqn2" ] | [ "$(hostname)" == "rmqn3" ]; then
  sudo systemctl restart rabbitmq-server
  sudo rabbitmqctl stop_app
  sudo rabbitmqctl join_cluster rabbit@rmqn1
  sudo rabbitmqctl start_app    
fi

if [ "$(hostname)" == "rmqn1" ]; then 
  sudo rabbitmqctl set_policy ha-all ".*" '{"ha-mode":"all"}'
fi