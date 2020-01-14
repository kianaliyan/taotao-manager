$(function(){
		
		layui.use('element', function(){
			  var element = layui.element;
			  
			});
			$("#showItem").click(function(){
				 $("#content").load("/jsp/showItem.jsp");
			})
			$("#addItem").click(function(){
				 $("#content").load("/jsp/addItem.jsp");
			})
			$("#addItemCat").click(function(){
				$("#content").load("/jsp/addItemCat.jsp");
			})
			/*$.ajax({
			type: "POST",
			url: "/item/categoryStatistics",
			contentType: "application/json", //必须有  
			dataType: "json", //表示返回值类型，不必须  
			success: function(msg){
				console.log(msg);
				echarts.init(document.getElementById('main')).setOption(msg);
			}
		});*/
	})
	