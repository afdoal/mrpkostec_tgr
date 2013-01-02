<?php 
$grp=$_SESSION['grup']; 
switch ($grp){
	case "admin":
		$tm = "tree_data";
		break;
	case "marketing":
		$tm = "tree_data_mkt";
		break;
	case "gudang":
		$tm = "tree_data_gudang";
		break;	
	case "purchasing":
		$tm = "tree_data_pur";
		break;
	case "produksi":
		$tm = "tree_data_prod";
		break;	
	case "exim":
		$tm = "tree_data_exim";
		break;
	case "bc":
		$tm = "tree_data_bc";
		break;		
	default://case "eksekutif":
		$tm = "tree_data_eks";
		break;	
}

?>
<script type="text/javascript">
$(function(){


$('#tt').tree({  
    url:'models/<?php echo $tm?>.json',
	onClick:function(node){
		$(this).tree('toggle', node.target);
	}
});

$('#menuutama').click(function(){
	$('#tt').tree('collapseAll');
});

});
</script>
