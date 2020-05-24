name "grafana"
description "Grafana Server"
run_list "recipe[base::default]",
         "recipe[grafana::default]",
         "recipe[prometheus::repo]",
         "recipe[consul-client::default]",
         "recipe[node-exporter::default]"