<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-2.1.0.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品展示页面</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

</head>
<body>

	<table class="layui-table" id="demo" lay-filter="test" lay-skin="line">

	</table>

	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

	<script>
		layui.use('table', function() {
			
			var table = layui.table;
			table.render({
				elem : '#demo',
				height : 420,
				url : '/TbItemController/showItem' //数据接口
				,title : '商品表',
				page : true,
				toolbar : 'default',
				totalRow : true,
				cols : [ [ {type: 'checkbox', fixed: 'left'}
			      ,{field: 'id', title: 'ID', width:80, sort: true, fixed: 'left', totalRowText: '合计：'}
			      ,{field: 'title', title: '商品标题'}
			      ,{field: 'sellPoint', title: '商品卖点'}
			      ,{field: 'price', title: '商品价格'}
			      ,{field: 'num', title: '库存数量'}
			      ,{field: 'barcode', title: '商品条形码'} 
			      ,{field: 'image', title: '商品图片'}
			      ,{field: 'cId', title: '所属类目'}
			      ,{field: 'status', title: '商品状态'}
			      ,{field: 'created', title: '创建时间'}
			      ,{field: 'updated', title: '更新时间'}
			      ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
			    ]]
			, page:true,
	            limits: [10,20,50],  //每页条数的选择项，默认：[10,20,30,40,50,60,70,80,90]
	            limit: 10, //每页默认显示的数量

			})
		});
		  //监听表格行点击
        table.on('tr', function(obj){
            console.log(obj)
        });
 
        //监听表格复选框选择
        table.on('checkbox(test)', function(obj){
            console.log(obj)
        });
 
        //监听表格单选框选择
        table.on('radio(test2)', function(obj){
            console.log(obj)
        });
 
        //监听单元格编辑
        table.on('edit(test2)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
 
        });
 
       


	</script>


</body>
</html>