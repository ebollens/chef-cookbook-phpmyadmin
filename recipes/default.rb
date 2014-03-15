package "phpmyadmin"

template "#{node['phpmyadmin']['docroot']}/config.inc.php" do
  source "config.inc.php.erb"
  variables({:config => node['phpmyadmin']['config']})
end