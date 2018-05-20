<?php

$file = fopen("c:\\test.txt", "r");
$data = Array();

$data['product_description'] = Array();
$data['product_description'][1]['name'] = str_replace("\r\n", "",fgets($file) );
$data['product_description'][1]['description'] = str_replace("\r\n", "",fgets($file) );;
$data['product_description'][1]['meta_title'] = str_replace("\r\n", "",fgets($file) );;
$data['product_description'][1]['meta_h1'] = str_replace("\r\n", "",fgets($file) );;
$data['product_description'][1]['meta_description'] = str_replace("\r\n", "",fgets($file) );;
$data['product_description'][1]['meta_keyword'] = str_replace("\r\n", "",fgets($file) );;
$data['product_description'][1]['tag'] = str_replace("\r\n", "",fgets($file) );;

$data['model'] = str_replace("\r\n", "",fgets($file) );;
$data['sku'] = str_replace("\r\n", "",fgets($file) );;
$data['upc'] = str_replace("\r\n", "",fgets($file) );;
$data['ean'] = str_replace("\r\n", "",fgets($file) );;
$data['jan'] = str_replace("\r\n", "",fgets($file) );;
$data['isbn'] = str_replace("\r\n", "",fgets($file) );;
$data['mpn'] = str_replace("\r\n", "",fgets($file) );;
$data['location'] = str_replace("\r\n", "",fgets($file) );;
$data['price'] = str_replace("\r\n", "",fgets($file) );;
$data['tax_class_id'] = str_replace("\r\n", "",fgets($file) );;
$data['quantity'] = str_replace("\r\n", "",fgets($file) );;
$data['minimum'] = str_replace("\r\n", "",fgets($file) );;
$data['subtract'] = str_replace("\r\n", "",fgets($file) );;
$data['stock_status'] = str_replace("\r\n", "",fgets($file) );;
$data['shipping'] = str_replace("\r\n", "",fgets($file) );;
$data['keyword'] = str_replace("\r\n", "",fgets($file) );;
$data['date_available'] = str_replace("\r\n", "",fgets($file) );;
$data['length'] = str_replace("\r\n", "",fgets($file) );;
$data['width'] = str_replace("\r\n", "",fgets($file) );;
$data['height'] = str_replace("\r\n", "",fgets($file) );;
$data['length_class_id'] = str_replace("\r\n", "",fgets($file) );;
$data['weight'] = str_replace("\r\n", "",fgets($file) );;
$data['weight_class_id'] = str_replace("\r\n", "",fgets($file) );;
$data['status'] = str_replace("\r\n", "",fgets($file) );;
$data['sort_order'] = str_replace("\r\n", "",fgets($file) );;
$data['manufacturer_id'] = str_replace("\r\n", "",fgets($file) );;
$data['main_category_id'] = str_replace("\r\n", "",fgets($file) );;

$data['product_category'] = Array();
$data['product_category'][0] = str_replace("\r\n", "",fgets($file) );;

$data['filter'] = str_replace("\r\n", "",fgets($file) );;

$data['product_store'] = Array();
$data['product_store'][0] = str_replace("\r\n", "",fgets($file) );;

$data['download'] = str_replace("\r\n", "",fgets($file) );;
$data['related'] = str_replace("\r\n", "",fgets($file) );;
$data['option'] = str_replace("\r\n", "",fgets($file) );;
$data['image'] = str_replace("\r\n", "",fgets($file) );;
$data['points'] = str_replace("\r\n", "",fgets($file) );;

$data['product_reward'] = Array();
$data['product_reward'][1]['points'] = str_replace("\r\n", "",fgets($file) );;

$data['product_layout'] = Array();
$data['product_layout'][0] = str_replace("\r\n", "",fgets($file) );;

fclose($file);