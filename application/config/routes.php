<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['register'] = 'user/register';
$route['login'] = 'user/login';
$route['logout'] = 'user/logout';

$route['default_controller'] = 'start';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
