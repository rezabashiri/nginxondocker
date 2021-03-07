docker compose of running nginx, php, mysql, phpmyadmin


This is a fully functional docker-compose sample in addition MySQL config and PHPMyadmin to work with each other.

Nginx bypass all PHP requests to PHP and PHP is linked to MySQL container. 
I used MySQL 8 and due to its some updates, we have to configure it to service older queries by setting sql_mode='' and
to be able to be connected by PHP till getting updates from pdo_mysql need to set default-authentication-plugin=mysql_native_password

PHPMyadmin configured to request user and password and deny unauthorized requests by setting $cfg['Servers'][$i]['auth_type'] = 'cookie' 
