default['phpmyadmin']['path'] = '/phpMyAdmin'

case node['platform_family']
  when 'rhel', 'fedora', 'debian'
    default['phpmyadmin']['docroot'] = '/usr/share/phpMyAdmin'
  when 'suse'
    default['phpmyadmin']['docroot'] = '/srv/www/htdocs/phpMyAdmin'
  when 'mac_os_x'
    default['phpmyadmin']['docroot'] = '/usr/local/share/phpmyadmin'
  when 'windows'
    # user-defined
end

case node['platform_family']
  when 'rhel', 'fedora'
    default['phpmyadmin']['apache']['conf'] = '/etc/httpd/conf.d/phpmyadmin.conf'
  when 'debian'
    default['phpmyadmin']['apache']['conf'] = '/etc/apache2/conf.d/phpmyadmin.conf'
  when 'suse'
    default['phpmyadmin']['apache']['conf'] = '/etc/sysconfig/apache2/phpmyadmin.conf'
  when 'mac_os_x'
    default['phpmyadmin']['apache']['conf'] = '/etc/apache2/other/phpmyadmin.conf'
  when 'windows'
    # user-defined
end
