
/**
 * 请求后台数据
 * @param url 请求的后台url
 * @returns {String} 返回请求的数据
 */
function doAjaxUrl(url){
	var data1 = "";
	$.ajax({
		url:url,
		type: 'post',
		async: false,
		timeout: 3000,
		dataType:'text',
		error: function(){
			data1 = "加载数据失败!";
		},
		success:function(data){
			data1 = data;
		}
	});
	return data1;
}
/**
 * 请求后台某个类的某个方法
 * @param className 请求的类名
 * @param className 请求的方法名
 * @returns {String} 返回请求的数据
 */
function doAjaxClass(className, classMethod){
	var url = "/" + className + "_" + classMethod;
	return doAjaxUrl(url);
}