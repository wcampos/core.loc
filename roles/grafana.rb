name "grafana"
description "Grafana Server"
run_list "recipe[base::default]","recipe[grafana::default]"