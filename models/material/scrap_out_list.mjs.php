<script type="text/javascript">   
function setdg(){
	$('#dg').datagrid({  	
		title:"",
		width:736,
		height:515,	
		toolbar:"#toolCari",
		fitColumns:"true",
		rownumbers:"true",
		pagination:true,
		pageList:[25,50,75,100],
		columns:[[  		
			{field:'matout_no',title:'Scrap Out No.',width:100},
			{field:'matout_date',title:'Scrap Out Date',width:100},
			{field:'cust',title:'Customer',width:100},
			{field:'vehicle_no',title:'Vehicle No.',width:100},
			{field:'driver',title:'Driver',width:100},
			{field:'notes',title:'Notes',width:100},
			{field:'action',title:'Action',width:60,
				formatter:function(value,row,index){
					var det = '<a href="#" onclick="window.open(\'scrap_out_pdf.php?NmMenu=Scrap Out&matout_id='+row.matout_id+'\', \'_blank\');"><img src="<?php echo $basedir ?>themes/icons/pdf.png"></a>';
					return det;					
				}
			}
		]],
		url: '<?php echo $basedir; ?>models/material/scrap_out_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		view: detailview,  
		detailFormatter:function(index,row){  
			return '<div style="padding:2px"><table id="ddv-' + index + '"></table></div>';  
		},  
		onExpandRow: function(index,row){  
			$('#ddv-'+index).datagrid({  
				url:'<?php echo $basedir; ?>models/material/scrap_out_grid.php?req=list&matout_id='+row.matout_id,  
				fitColumns:true,  
				singleSelect:true,  
				rownumbers:true,  
				loadMsg:'',  
				height:'auto',  
				columns:[[  
					{field:'KdBarang2',title:'Scrap Code',width:80},  
					//{field:'PartNo',title:'Part No.',width:80}, 
					{field:'NmBarang2',title:'Desc',width:100},   
					{field:'qty',title:'Quantity',width:100,align:'right'}
					//{field:'price',title:'Price',width:100}  
				]],  
				onResize:function(){  
					$('#dg').datagrid('fixDetailRowHeight',index);  
				},  
				onLoadSuccess:function(){  
					setTimeout(function(){  
						$('#dg').datagrid('fixDetailRowHeight',index);  
					},0);  
				} 
			});
			$('#dg').datagrid('fixDetailRowHeight',index);
		}
	});
}

function showPrint(){
	pilcari=$("#pilcari").val();
	txtcari=$("#txtcari").val();
	openurl('scrap_out_list_pdf.php?NmMenu=Scrap Out List&pilcari='+pilcari+'&txtcari='+txtcari);
}

</script>	