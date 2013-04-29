<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="apptags" tagdir="/WEB-INF/tags" %>
<apptags:setPath/>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Border Layout on Panel - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="${path}/js/js_plug/easyui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="${path}/js/js_plug/easyui/themes/icon.css">
	<script type="text/javascript" src="${path}/js/jquery/jquery.js"></script>
	<script type="text/javascript" src="${path}/js/js_plug/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${path}/js/appjs/myPlug.js"></script>
</head>
<body>
	<div class="easyui-layout" style="height:480px;">
		<div data-options="region:'north',split:true,rownumbers: true," title="条件查询" style="height:100px;padding:10px;">
		<p>1,按权限查询  2,按角色查询  3, 按用户查询 4, 可勾选多个角色查看角色权限合集 5,批量对角色授权</p>
	</div>
		<div data-options="region:'north'" style="overflow:hidden;padding:10px">
			<h2>权限管理</h2>
		</div>
		<div data-options="region:'west',split:true" title="资源列表" style="width:250px;" id="left-tree"></div>
		<div data-options="region:'center',title:'角色列表'" style="background:#fafafa;overflow:hidden;">
			<table id="table1"></table>
		</div>
		<div data-options="region:'east',iconCls:'icon-reload',split:true" title="用户列表 " style="width:250px;"><table id="right-panel"></table></div>
	</div>
	<script type="text/javascript">
$(function(){
	$('#table1').datagrid({  
	    url:'${actionPath}/privilegeManager_getAllRole',  
	    columns:[[  
	        {field:'check',checkbox:true},  
	        {field:'roleid',title:'角色ID',width:100},  
	        {field:'rolename',title:'角色名称',width:100},  
	        {field:'roledesc',title:'角色说明',width:100,align:'right'}  
	    ]],
	    toolbar: [{
			iconCls: 'icon-add',
			text: '新增',
			handler: function(){
				$('#role_save_dialog').dialog('open'); 
			}
		},'-',{
			iconCls: 'icon-edit',
			text: '编辑',
			handler: function(){
				var selected = $('#table1').datagrid('getSelected');
				if(selected != null){
					$("#roleid_dialog").val(selected.roleid);
					$("#rolename_dialog").val(selected.rolename);
					$("#roledesc_dialog").val(selected.roledesc);
					$("#edit_status").val("update");
					
					$("#save_msg").hide();
					$('#role_save_dialog').dialog('open'); 
				}
				
			}
		},'-',{
			iconCls: 'icon-remove',
			text: '删除',
			handler: function(){
				var selected = $('#table1').datagrid('getSelected');
				if(selected != null){
					var ids = getTableChecked($('#table1'));
					$.ajax({
						url: '${actionPath}/privilegeManager_delRole', 
						type: 'post',
						data:{roleid: ids},
						success: function(data, textStatus){
							if(data != "ok"){
								alert(textStatus);
							}
							$('#table1').datagrid("reload");
	
						}
					});
				}
				
			}
		},'-',{
			iconCls: 'icon-save',
			text: '保存',
			handler: function(){doEvent_save();}
		},'-',{
			iconCls: 'icon-search',
			text: '查询',
			handler: function(){ doEvent_query();}
		}],
		pagination: true,
		singleSelect: false,
		fitColumns: true
	}); 
	
	$('#left-tree').tree({
        checkbox: true,
        url: '${actionPath}/privilegeManager_getPriAll',
		onClick : function(node) {}
	});
	$('#right-panel').datagrid({  
		singleSelect: true,
		rownumbers: true,
	    url: null,
	    columns:[[  
	        {field:'username',title:'用户名',width:100}
	    ]],
		fitColumns: true
	});  
	
	function doEvent_save(){
		var selected = $('#table1').datagrid('getSelected');
		if(selected != null){
			/**
			*得到选中的角色id
			*/
			var ids = getTableChecked($('#table1'));
			/**
			*得到选中的权限tree
			*/
			var solids = $("#left-tree").tree("getCheckedExt");
			var treeDataNew = [];
			$.each(solids,function(){
				treeDataNew.push(this.id);
			});
			if(typeof(treeDataOld) == "undefined"){
				alert("请先查询后再修改");
				return;
			}
			/**
			*得到权限的变动
			*/
			priidDel = getDiffData(treeDataOld, treeDataNew);
			priidAdd = getDiffData(treeDataNew, treeDataOld);
			
			if(priidDel != "" || priidAdd != ""){
				$.ajax({
					url: '${actionPath}/privilegeManager_savePriOfRole',
					type: 'post',
					dataType: 'text',
					data: {'priidDel': priidDel, 'priidAdd': priidAdd, 'roleid': ids},
					success: function(data, textStatus){
		 				queryCheck(ids);
						alert(data);
					}
				});
			}else{
				alert("权限未做变动!");
			}
		}
		
	}
	
	
	function getTableChecked(tabl){
		var ids = [];
		var rows = tabl.datagrid('getSelections');
		for(var i=0;i<rows.length;i++){
			ids.push(rows[i].roleid);
		}
		return ids.join(',');
	}
	
	function doEvent_query(){
		var ids = getTableChecked($('#table1'));
		if(ids != ""){
			queryByRole(ids);
			queryCheck(ids);
		}
	}
	
	function queryByRole(ids){
		var queryParams = $('#right-panel').datagrid('options').queryParams;  
		$('#right-panel').datagrid('options').queryParams;  
	    queryParams.roleid = ids;
	    $('#right-panel').datagrid({url: '${actionPath}/user_findUserByRole'});  
	    $('#right-panel').datagrid('reload');  
	}
	
	function queryCheck(ids){
		$.ajax({
			url: '${actionPath}/privilegeManager_getPriOfRole',
			type: 'post',
			dataType: 'json',
			data: {'roleid': ids},
			success: function(data, textStatus){
				autoChecking = true; 
				clearCheck($("#left-tree"));
         		data = data.ids;
         		var node;
         		for(i=0; i<data.length; i++){
					node = $("#left-tree").tree('find', data[i]);
					if(node != null && $("#left-tree").tree('isLeaf', node.target)){
						$("#left-tree").tree('check', node.target);
					}
         		}
				treeDataOld = data.toString().split(",");
			}
		});
	}
	
	/**
	*清空选中
	*/
	function clearCheck(tree){
		var nodes = tree.tree('getChecked');
		for(var i=0; i<nodes.length; i++){
			$("#left-tree").tree('uncheck', nodes[i].target);
		}
	}
});

	function save_role(){
		var edit_status = $("#edit_status").val();
		var method = "saveRole";
		if(edit_status == "update"){
			method = "updateRole";
		}
		var dd=$("#roledesc_dialog").val();
		$.ajax({
			url: '${actionPath}/privilegeManager_' + method, 
		    type: 'post',
			data: {'role.rolename': $("#rolename_dialog").val(), 'role.roledesc': $("#roledesc_dialog").val(), 'role.roleid': $("#roleid_dialog").val()}, 
			success: function(data, textStatus){
						if(data != "ok"){
							$("#save_msg").show().html(textStatus);
						}
						if(edit_status == "update"){
							$('#role_save_dialog').dialog('close');
							$("input[id$='_dialog']").val("");
						}else{
							$("input[id$='_dialog']").val("");
							$("#save_msg").show().html("操作成功！<br>");
						}
						$('#table1').datagrid("reload");
				   }
		});
	}
	
	function dialog_cancel(){
		$('#role_save_dialog').dialog('close');
		$("input[id$='_dialog']").val("");
	}

</script>
	<div id="role_save_dialog" class="easyui-dialog" style="width:400px;height:200px;" title="角色" closed="true"
		data-options="modal:true,buttons:[{text:'保存',iconCls: 'icon-ok',handler:function(){save_role();}},{text:'取消',iconCls: 'icon-cancel',handler:function(){dialog_cancel();}}]">
		<div style="margin-top:30px;margin-left:100px;">
			<font id="save_msg" color="red" style="margin-left:50px;display: none"><br></font>
			角色: <input type="text" id="rolename_dialog"><br><br>
			描述: <input type="text" id="roledesc_dialog"><br>
			<input type="hidden" id="roleid_dialog">
			<input type="hidden" id="edit_status" value="new" >
			<script type="text/javascript">
				$(function(){
					$("#rolename_dialog").click(function(){
						$("#save_msg").hide();
					});
				});
			</script>
		</div>
	</div>
</body>
</html>