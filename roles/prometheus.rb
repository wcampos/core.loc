name "prometheus"
description "Prometheus Server"
run_list "recipe[base::default]","recipe[prometheus::default]"