name "consul"
description "Consul Server"
run_list "recipe[base::default]",
         "recipe[consul::default]",
         "recipe[prometheus::repo]"
         "recipe[node-exporter::default]"