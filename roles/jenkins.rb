name "jenkins"
description "Jenkins Server"
run_list "recipe[base::default]",
         "recipe[jenkins::default]",
         "recipe[prometheus::repo]",
         "recipe[consul-client::default]",
         "recipe[node-exporter::default]"