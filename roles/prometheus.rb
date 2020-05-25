name "prometheus"
description "Prometheus Server"
run_list "recipe[base::default]",
         "recipe[prometheus::default]",
         "recipe[consul-client::default]",
         "recipe[prometheus::consul-client-svcs]",
         "recipe[node-exporter]"