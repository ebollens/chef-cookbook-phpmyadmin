# PHPMyAdmin Chef Coobkook

Install phpMyAdmin package and expose via web server.

## Usage

To install package, use `phpmyadmin` default recipe.

To install package and link with Apache, use `phpmyadmin::apache` recipe.

More recipes may be added for additional web servers and to install from source.

## Configuration

* `phpmyadmin`.`path` - web-exposed path via server
* `phpmyadmin`.`docroot` - where phpMyAdmin pacakge is located
* `phpmyadmin`.`apache`.`conf` - Apache configuration file for phpMyAdmin (usually in conf.d)

Sane defaults have been used where possible.

## License

This repository is open-source software licensed under the **[BSD 3-clause license](https://github.com/ebollens/chef-osx/blob/master/LICENSE.txt)**.
