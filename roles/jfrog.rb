name "jfrog"
description "Artifactory Server"
run_list "recipe[base::default]","recipe[jfrog::default]"