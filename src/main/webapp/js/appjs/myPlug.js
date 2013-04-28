$.extend($.fn.tree.methods,{  
    getCheckedExt: function(jq){  
        var checked = $(jq).tree("getChecked");  
        var checkbox2 = $(jq).find("span.tree-checkbox2").parent();  
        $.each(checkbox2,function(){  
            var node = $.extend({}, $.data(this, "tree-node"), {  
                target : this  
            });  
            checked.push(node);  
        });  
        return checked;  
    },  
    getSolidExt:function(jq){  
        var checked =[];  
        var checkbox2 = $(jq).find("span.tree-checkbox2").parent();  
        $.each(checkbox2,function(){  
            var node = $.extend({}, $.data(this, "tree-node"), {  
                target : this  
            });  
            checked.push(node);  
        });  
        return checked;  
    }  
});  

//function getCheckedExt(){
//	  var solids = $("#tt1").tree("getCheckedExt");
//	  var nodes = [];
//	  $.each(solids,function(){
//	    nodes.push(this.text);
//	  });
//	  $("#logs").text("选择的节点是(包括实心):"+nodes.join(","));
//
//	}
//
//	function getSolidExt(){
//	  var solids = $("#tt1").tree("getSolidExt");
//	  var nodes = [];
//	  $.each(solids,function(){
//	    nodes.push(this.text);
//	  });
//	  $("#logs").text("选择的实心节点是:"+nodes.join(","));
//	}
/**
*返回arr1在arr2中不存在的元素
*/
function getDiffData(arr1, arr2){
	
	var temp = []; //临时数组1  
	var temparray = [];//临时数组2  

	for ( var i = 0; i < arr2.length; i++) {
		temp[arr2[i]] = true;//巧妙地方：把数组B的值当成临时数组1的键并赋值为真  
	};

	for ( var i = 0; i < arr1.length; i++) {
		if (!temp[arr1[i]]) {
			temparray.push(arr1[i]);//巧妙地方：同时把数组A的值当成临时数组1的键并判断是否为真，如果不为真说明没重复，就合并到一个新数组里，这样就可以得到一个全新并无重复的数组  
		}
	};
	
	return temparray.join(",");
}