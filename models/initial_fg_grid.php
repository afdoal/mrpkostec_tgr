<?php
require_once "abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];

if ($req=='menu'){
	$pilcari = $_REQUEST["pilcari"];
	$q = "SELECT DISTINCT a.wh_id,wh_name,DATE_FORMAT(date,'%d/%m/%Y') AS date
		  FROM mat_stockcard a 
		  LEFT JOIN mat_warehouse b ON b.wh_id=a.wh_id 
		  WHERE type='B' AND mat_type='0' ";
	if ($txtcari != ""){		  
		if ($pilcari == "date"){		  
			$q .= "AND $pilcari LIKE '%".dmys2ymd($txtcari)."%' ";	  
		} else {
			$q .= "AND $pilcari LIKE '%$txtcari%' ";	  
		}
	}  
	$q .= "ORDER BY wh_name, date ASC";
} else if ($req=='dgDet') {
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2, PartNo
		  FROM mst_barang a 
		  LEFT JOIN mst_jenisbarang b ON KdJnsBarang=TpBarang 
		  WHERE TpBarang='0'
		  ORDER BY TpBarang, KdBarang ASC";
} else if ($req=='list') {	
	$wh_id = $_REQUEST["wh_id"];
	$date = dmys2ymd($_REQUEST["date"]);
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2,FORMAT(qty, 2) AS qty, PartNo
		  FROM mst_barang a 
		  LEFT JOIN mat_stockcard b ON mat_id = KdBarang 
		  WHERE TpBarang='0' AND wh_id='$wh_id' AND date='$date'
		  ORDER BY mat_id ASC";
}



$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>