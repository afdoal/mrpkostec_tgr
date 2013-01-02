<script type="text/javascript">   
function setdg(){
	$('#dg').datagrid({  	
		title:"",
		width:736,
		height:515,
		toolbar:"#toolbar",
		rownumbers:"true",
		fitColumns:true,
		pagination:true,
		pageList:[25,50,75,100],
		frozenColumns:[[  
			{field:'KdBarang0',title:'Kode Barang0',width:80,hidden:true},
			{field:'KdBarang',title:'Mat. Code',width:80},
			{field:'matgroup_name',title:'Mat. Group',width:100},			
			{field:'NmBarang',title:'Desc.',width:100},
		]],
		columns:[[  			
			{field:'twhmp',title:'Size',width:100},
			{field:'HsNo',title:'HS No.',width:100},
			{field:'DieNo',title:'Die No.',width:80},
			/*{field:'UWm',title:'UW/m',width:80},
			{field:'LPc',title:'L/Pc',width:80},
			{field:'WPcs',title:'W/Pcs',width:80},
			{field:'LBar',title:'L/Bar',width:80},
			{field:'PcBar',title:'Pc/Bar',width:80},
			{field:'WBar',title:'WBar',width:80},
			{field:'Finish',title:'Finish',width:60},*/
			{field:'Sat',title:'Unit',width:40}
		]],
		url: '<?php echo $basedir; ?>models/material/material_grid.php?TpBarang=<?php echo $TpBarang; ?>',  
		saveUrl: '',  
		updateUrl: '',  
		destroyUrl: '',
		onAdd:function(index,row){rowIndex=index;},
		onDblClickRow:function(index,row){rowIndex=index;}
		
	});
}

var url;
function tambah(){
	$('#dlg').dialog('open').dialog('setTitle','Tambah <?php echo $NmMenu ?>');
	$('#fm').form('clear');
	$('#Sat').val('PCE');
	$('#TpBarang').val('<?php echo $TpBarang ?>');
	url = '<?php echo $basedir; ?>models/material/material_tuh.php?aksi=t';
}

function ubah(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Ubah <?php echo $NmMenu ?>');
		$('#fm').form('load',row);
		$('#TpBarang').val('<?php echo $TpBarang ?>');
		url = '<?php echo $basedir; ?>models/material/material_tuh.php?aksi=u&KdBarang0='+row.KdBarang0;
	}
}

function simpan(){
	$('#fm').form('submit',{
		url: url,
		onSubmit: function(){
			return $(this).form('validate');
		},
		success: function(result){
			var result = eval('('+result+')');
			if (result.success){
				$('#dlg').dialog('close');		// close the dialog
				$('#dg').datagrid('reload');	// reload the user data
				$.messager.show({
					title: 'Info',
					msg: result.msg
				});
			} else {
				$.messager.show({
					title: 'Error',
					msg: result.msg
				});
			}
		}
	});
}

function hapus(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$.messager.confirm('Confirm','Are you sure to delete this date?',function(r){
			if (r){
				$.post('<?php echo $basedir; ?>models/material/material_tuh.php',{aksi:'h',KdBarang0:row.KdBarang0},function(result){
					var result = eval('('+result+')');
					if (result.success){
						$('#dg').datagrid('reload');	// reload the user data
						$.messager.show({
							title: 'Info',
							msg: result.msg
						});
					} else {
						$.messager.show({	// show error message
							title: 'Error',
							msg: result.msg
						});
					}
				});
			}
		});
	}
}

function topdf(){
	openurl("<?=$basedir?>material/material_pdf.php?NmMenu=<?=$NmMenu?>&TpBarang=<?=$TpBarang?>");
}

</script>	