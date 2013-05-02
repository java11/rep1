<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/app/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Border Layout on Panel - jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css"
	href="${path}/js/js_plug/easyui/themes/gray/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${path}/js/js_plug/easyui/themes/icon.css">
<script type="text/javascript" src="${path}/js/jquery/jquery.js"></script>
<script type="text/javascript"
	src="${path}/js/js_plug/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${path}/js/appjs/myPlug.js"></script>
</head>
<body>
	<div class="easyui-layout" style="height: 480px;">
		<div data-options="region:'west',split:true,checkbox: true,cascadeCheck:false," title="资源列表"
			style="width: 250px;" id="left-tree"></div>
		<div data-options="region:'center',title:'编辑表单'"
			style="background: #fafafa; overflow: hidden;">

			<div style="margin: 10px 0;"></div>
			<div class="easyui-panel" style="width: 600px;padding-left: 100px;border: 0;">
				<div style="padding: 10px 0 10px 60px">
					<form id="ff" method="post">
						<input id="priid" type="hidden">
						<input id="isAppend" type="hidden" value="false">
						<table>
							<tr>
								<td>序号:</td>
								<td><input class="easyui-validatebox" type="text" id="ordernum"></input>
								</td>
							</tr>
							<tr>
								<td>名称:</td>
								<td><input class="easyui-validatebox" type="text"
									id="text" data-options="required:true"></input>
								</td>
							</tr>
							<tr>
								<td>地址:</td>
								<td><input class="easyui-validatebox" type="text" style="width:300px;"
									id="url"></input>
								</td>
							</tr>
							<tr>
								<td>父节点id:</td>
								<td>
			                        <select id="parentId" style="width:155px;"><option value="1">根(root)</option></select>  
								</td>
							</tr>
							<tr>  
			                    <td>节点类型:</td>  
			                    <td>  
			                        <select id="type" style="width:155px;"><option value="1">节点</option><option value="2">叶子</option></select>  
			                    </td>  
              			  </tr>  
						</table>
					</form>
				</div>
				<div style="text-align: center; padding: 5px">
					<a href="javascript:void(0)" class="easyui-linkbutton" id="submit">提交</a>
				</div>
			</div>
		</div>
	</div>
	<div id="mm" class="easyui-menu" style="width:120px;">  
        <div onclick="append()" data-options="iconCls:'icon-add'">新增</div>  
        <div onclick="remove()" data-options="iconCls:'icon-remove'">删除</div>  
    </div> 
	<script type="text/javascript">
		$(function(){
			$('#left-tree').tree({
		        url: '${actionPath}/privilegeManager_getPriAll',
				onClick : function(node) {treeOnclick();},
				onContextMenu: function(e,node){  
	                e.preventDefault();  
	                $(this).tree('select',node.target);  
	                $('#mm').menu('show',{  
	                    left: e.pageX,  
	                    top: e.pageY  
	                });  
	            }  
			});
			
			$("#submit").click(function(){
				var url = "${actionPath}/privilegeManager_updatePri";
				if($("#isAppend").val() == "true"){
					url = "${actionPath}/privilegeManager_savePri";
				}
				$.post(url,
						{
						'pri.priid': $("#priid").val(),
						'pri.priname': $("#text").val(),
						'pri.url': $("#url").val(),
						'pri.type': $("#type").val(),
						'pri.parentcode': $("#parentId").val(),
						'pri.ordernum': $("#ordernum").val()
						},
				        function(data, textStatus){ 
							$("#left-tree").tree("reload").tree({
								onLoadSuccess: function(node, data){
									var node1 = $('#left-tree').tree('find', $('#priid').val());
									if(node1 != null){
										$('#left-tree').tree('select', node1.target);
									}
								}
							});

				});
			});
			
		});
        function treeOnclick(){
            var node = $('#left-tree').tree('getSelected');  
            $("#priid").val(node.id);
            $("#ordernum").val(node.attributes.ordernum);
            $("#text").val(node.text);
            $("#url").val(node.attributes.url);
            $("#type").val(node.attributes.type);
            $("#isAppend").val("false");
            var parent_node = $("#left-tree").tree("getParent", node.target);
            if(parent_node == null){
            	$("#parentId").val("1");
            }else{
	            var length = $("#parentId option[value='" +parent_node.id+ "']").length;
	            if(length == 0){
	            	$("#parentId").append("<option value='" +parent_node.id+ "'>"+parent_node.text+"</option>");
	            }
            	$("#parentId").val(parent_node.id);
            }
            
        }
        function append(){ 
            var node = $('#left-tree').tree('getSelected');  
            var ordernum = parseInt(node.attributes.ordernum) + 1;
            $("#priid").val(node.id);
            $("#ordernum").val(ordernum);
            $("#text").val("");
            $("#url").val("");
            $("#type").val(node.attributes.type);
            $("#isAppend").val("true");
            
            var length = $("#parentId option[value='" +node.id+ "']").length;
            if(length == 0){
            	$("#parentId").append("<option value='" +node.id+ "'>"+node.text+"</option>");
            }
        	$("#parentId").val(node.id);
        }  
        function remove(){  
        	var ids = [];
    		var nodes = $('#left-tree').tree('getChecked');
    		var nodes_len = nodes.length;
    		if(nodes_len == 0){
    			return;
    		}
    		for(var i=0; i<nodes.length; i++){
    			ids.push(nodes[i].id);
    		}
    		ids = ids.join(',');
            $.ajax({url: '${actionPath}/privilegeManager_delPri',
				type : 'post',
				dataType : 'text',
				data : {
					'priidDel' : ids
				},
				success : function(data, textStatus) {
					$("#left-tree").tree("reload");
				}
			});
		}
	</script>
</body>
</html>