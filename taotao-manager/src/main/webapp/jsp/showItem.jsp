<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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

	<script type="text/html" id="toolbarDemo">
 	 <div class="layui-btn-container">
   	 	<button class="layui-btn layui-btn-sm" lay-event="addTbItem">添加</button>
		<button class="layui-btn layui-btn-sm" lay-event="upTbitem">上架</button>
    	<button class="layui-btn layui-btn-sm" lay-event="downTbitem">下架</button>
 	 </div>
	</script>

	<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

	<script>
		layui.use('table', function() {

			var table = layui.table;
			table.render({
				elem : '#demo',
				height : 420,
				url : '/item/showItem',
				title : '商品表',
				toolbar : '#toolbarDemo',
				defaultToolbar : [ 'filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
					title : '提示',
					layEvent : 'LAYTABLE_TIPS',
					icon : 'layui-icon-tips'
				} ],
				page : true,
				cols : [ [ {
					type : 'checkbox',
					fixed : 'left'
				}, {
					field : 'id',
					title : 'ID',
					width : 80,
					sort : true,
					fixed : 'left',
					totalRowText : '合计：'
				}, {
					field : 'title',
					title : '商品标题'
				}, {
					field : 'sellPoint',
					title : '商品卖点'
				}, {
					field : 'price',
					title : '商品价格'
				}, {
					field : 'num',
					title : '库存数量'
				}, {
					field : 'barcode',
					title : '商品条形码'
				}, {
					field : 'image',
					title : '商品图片'
				}, {
					field : 'cid',
					title : '所属类目'
				}, {
					field : 'status',
					title : '商品状态',
					templet : '#titleTpl'
				}, {
					field : 'created',
					title : '创建时间',
					templet:"<div>{{layui.util.toDateString(d.created)}}</div>"
				}, {
					field : 'updated',
					title : '更新时间',
					templet:"<div>{{layui.util.toDateString(d.updated)}}</div>"
				}, {
					fixed : 'right',
					width : 165,
					align : 'center',
					toolbar : '#barDemo'
				} ] ]

			})
		});
		//头工具栏事件
		table.on('toolbar(test)', function(obj) {
			var checkStatus = table.checkStatus(obj.config.id);
			switch (obj.event) {
			case 'addTbItem':
				var data = checkStatus.data;
				layer.alert(JSON.stringify(data));
				break;
			case 'upTbitem':
				var data = checkStatus.data;
				layer.msg('选中了：' + data.length + ' 个');
				break;
			case 'downTbitem':
				layer.msg(checkStatus.isAll ? '全选' : '未全选');
				break;

			//自定义头工具栏右侧图标 - 提示
			case 'LAYTABLE_TIPS':
				layer.alert('这是工具栏右侧自定义的一个图标按钮');
				break;
			}
			;
		});

		//监听行工具事件
		table.on('tool(test)', function(obj) {
			var data = obj.data;
			//console.log(obj)
			if (obj.event === 'del') {
				layer.confirm('真的删除行么', function(index) {
					obj.del();
					layer.close(index);
				});
			} else if (obj.event === 'edit') {
				layer.prompt({
					formType : 2,
					value : data.email
				}, function(value, index) {
					obj.update({
						email : value
					});
					layer.close(index);
				});
			}
		});
	</script>
<script type="text/html" id="titleTpl">
    {{#  if(d.status ==1){ }}
        正常
    {{#  }  else  { }}
        下架
    {{#  } }}
</script>

</body>
</html>