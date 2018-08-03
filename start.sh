#!/bin/bash
chown -R www-data /var/www/project
chgrp -R www-data /var/www/project
service nginx start
service php7.2-fpm start
/bin/bash