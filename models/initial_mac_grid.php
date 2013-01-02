<?php
require_once "abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];

if ($req=='menu'){
	$txtcari = $_REQUEST["txtcari"];
	$q = "SELECT DISTINCT mat_type,JnsBarang,DATE_FORMAT(date,'%d/%m/%Y') AS date
		  FROM mat_stockcard a 
		  LEFT JOIN mst_jenisbarang b ON b.KdJnsBarang=a.mat_type
		  WHERE type='B' AND mat_type IN ('3','5','12') ";
	if ($txtcari != ""){		  
			$q .= "AND mat_type LIKE '%$txtcari%' ";	  
	}  
	$q .= "ORDER BY mat_type, date ASC";
} else if ($req=='dgDet') {
	$mat_type = $_REQUEST["mat_type"];
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2
		  FROM mst_barang a 
		  LEFT JOIN mst_jenisbarang b ON KdJnsBarang=TpBarang 
		  WHERE TpBarang='$mat_type'
		  ORDER BY TpBarang, KdBarang ASC";
} else if ($req=='list') {	
	$mat_type = $_REQUEST["mat_type"];
	$date = dmys2ymd($_REQUEST["date"]);
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2,FORMAT(qty, 2) AS qty
		  FROM mst_barang a 
		  LEFT JOIN mat_stockcard b ON mat_id = KdBarang 
		  WHERE TpBarang='$mat_type' AND date='$date'
		  ORDER BY mat_id ASC";
}

$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>