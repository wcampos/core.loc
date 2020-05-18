name "jenkins"
description "Jnekins Server"
run_list "recipe[base::default]","recipe[jenkins::default]"