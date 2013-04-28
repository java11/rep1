(function(window, undefined){
	
	var stringutil = (function(){
		this.isBlank = function(str){
			var b = false;
			if(typeof str == undefined){
				b=true;
			}else if(str == "undefined"){
				b=true;
			}else if(str == null){
				b=true;
			}else if(str == ""){
				b=true;
			}else if(str == "null"){
				b=true;
			}else if((typeof str != "object") && str.replace(/[ ]/g, "") == ""){
				b=true;
			}
			return b;
		};
	});
	
	window.stringutil = new stringutil();
	
})(window);