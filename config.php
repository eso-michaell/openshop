<?php

// HTTP
define('HTTP_SERVER', 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/.\\') . '/');
define('HTTPS_SERVER', 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/.\\') . '/');

// DIR
define('DIR_OPENCART', str_replace('\'', '/', realpath(dirname(__FILE__))) . '/');
define('DIR_APPLICATION', DIR_OPENCART.'catalog/');
define('DIR_SYSTEM', DIR_OPENCART.'system/');
define('DIR_LANGUAGE', DIR_OPENCART.'catalog/language/');
define('DIR_TEMPLATE', DIR_OPENCART.'catalog/view/theme/');
define('DIR_CONFIG', DIR_OPENCART.'system/config/');
define('DIR_IMAGE', DIR_OPENCART.'image/');
define('DIR_CACHE', DIR_OPENCART.'system/cache/');
define('DIR_DOWNLOAD', DIR_OPENCART.'system/download/');
define('DIR_UPLOAD', DIR_OPENCART.'system/upload/');
define('DIR_MODIFICATION', DIR_OPENCART.'system/modification/');
define('DIR_LOGS', DIR_OPENCART.'system/logs/');

define('LANG', 'catalog');

// DB
/*
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', '3a_events_op');
define('DB_PASSWORD', 'test123');
define('DB_DATABASE', '3a_events_op');
define('DB_PREFIX', '3a_');
*/

define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '52.64.50.236');
define('DB_USERNAME', 'eso');
define('DB_PASSWORD', 'GcSY6VEaeaPswmBx');
define('DB_DATABASE', 'eso_unit_test');
define('DB_PREFIX', '3a_');
