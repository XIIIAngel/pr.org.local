<?
error_reporting(0);
if($_POST){
	$s='<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';
	$s.='<table border="1" cellspacing="0" cellpadding="5">';
	for($i=0; $i<count($_POST['name']); $i++){
		$s.="<tr><td>".($i+1)."</td><td>{$_POST['name'][$i]}</td><td>{$_POST['qty'][$i]} шт</td><td>{$_POST['price'][$i]}</td></tr>";
	}
	$s.='</table>';
	$s.="<div>Итого: {$_POST['total']} грн.</div>";
	$s.="<div>{$_POST['username']}</div>";
	$s.="<div>{$_POST['logist']}</div>";
	$s.="<div>{$_POST['oblast']}</div>";
	$s.="<div>{$_POST['town']}</div>";
	$s.="<div>{$_POST['sklad']}</div>";
	$s.="<div>{$_POST['phone']}</div>";
	$s.="<div>{$_POST['money']}</div>";
	$s.="<xmp>{$_POST['comments']}</xmp>";
	file_put_contents('orders/'.date('Y.m.d h-i-s').'     '.$_SERVER['REMOTE_ADDR'].'.html', $s);
}
header("Location: /kak-zakazat");
die();
