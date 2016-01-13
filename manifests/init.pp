class apache2 {
	
	package {"Installing Webserver": name => "httpd", ensure => installed, require => File["/var/www/html/index.html"]}

	file {"/var/www/html/index.html": ensure => file, source => "puppet:///modules/apache2/index.html", notify =>  Service["Running Webserver"] }

	service {"Running Webserver": name => "httpd", ensure => running }


}