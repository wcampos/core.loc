name "rabbitmq"
description "RabbitMQ Server / Node Setup role"
run_list "recipe[rabbitmq::default]"
#run_list "recipe[base::default]", "recipe[rabbitmq::default]"