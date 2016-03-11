<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['register'] = 'user/register';
$route['login'] = 'user/login';
$route['logout'] = 'user/logout';

$route['default_controller'] = 'main';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['(en|uk|ru)'] = $route['default_controller'];
$route['(en|uk|ru)/(.+)'] = "$2";
