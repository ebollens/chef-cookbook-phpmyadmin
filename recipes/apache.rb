include_recipe "phpmyadmin"

template node['phpmyadmin']['apache']['conf'] do
  source "apache-phpmyadmin.conf.erb"
  variables({
    :path => node['phpmyadmin']['path'],
    :docroot => node['phpmyadmin']['docroot']
  })
  notifies(:restart, resources(:service=>"apache"))
end