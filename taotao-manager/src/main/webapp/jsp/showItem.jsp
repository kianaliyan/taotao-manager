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
	<form class="layui-form" id="searche_submits" method="post">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">名称:</label>
				<div class="layui-input-block">
					<input type="text" name="title" lay-verify="title"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">描述:</label>
				<div class="layui-input-block">
					<input type="text" name="sellPoint" lay-verify="title" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<button class="layui-btn" id="search" lay-submit="search_submits" lay-filter="searche_btn">搜索</button>
		</div>
	</form>
	<table class="layui-table" id="demo" lay-filter="test" lay-skin="line">

	</table>

	
 	 <div class="layui-btn-container" id="toolbarDemo">
   	 	<button class="layui-btn layui-btn-sm" lay-event="addTbItem">添加</button>
		<button class="layui-btn layui-btn-sm" lay-event="deleteItems">批量删除</button>
		<button class="layui-btn layui-btn-sm" lay-event="upTbitem">上架</button>
    	<button class="layui-btn layui-btn-sm" lay-event="downTbitem">下架</button>
 	 </div>
	
	<div id="barDemo">
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a> <a
			class="layui-btn layui-btn-danger layui-btn-xs"
			lay-event="deleteItem">删除</a>
	</div>


	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

	<script>
		layui.use(['table','form'], function() {
			var table = layui.table;
			var form = layui.form;
			
			table.render({
				elem : '#demo',
				height : 420,
				url : '/item/showItem',
				title : '商品表',
				toolbar : '#toolbarDemo',
				defaultToolbar : [ 'filter',{ //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
					layEvent : 'LAYTABLE_TIPS',
					icon : 'layui-icon-tips'
				} ],
				
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
				} 
					] 
				],
				page : true,
			});
			
			//头工具栏事件
			table.on('toolbar(test)', function(obj) {
				var checkStatus = table.checkStatus(obj.config.id);
				switch (obj.event) {
				case 'deleteItems':
					 var data = checkStatus.data;
					 if(data.length === 0){
					 layer.msg('请选择一行');
					 } else {
						 layer.confirm('确定要删除吗？',function(index){
							 $.ajax({
									type : "POST",
									url : "/item/deleteItems",
									contentType: "application/json;charset=utf-8",
									data : JSON.stringify(data),
									dataType : "json",
									success : function(message) {
										if (message.status==200) {
											layer.alert('删除成功');
											table.reload('showItemPage',{  });
										} else {
											layer.alert('删除失败');
										};
									},
									
								})
							 });
						 }			
					 break;
				
				  case 'upTbitem':
				        var data = checkStatus.data;
				             $.ajax({
					            type: "POST",
					            url: "/item/upTbitem",
					            contentType: "application/json;charset=utf-8",
					            data:JSON.stringify(data),
					            dataType: "json",
					            success:function (message) {
					               if(message.status==200){
					            	   layer.alert(message.msg);
					            	   table.reload('showItemPage',{  });
					               }else{
					            	   layer.alert(message.msg);
					               }
					            }
					        });
				      break;
			      case 'downTbitem':
				        var data = checkStatus.data;
				             $.ajax({
					            type: "POST",
					            url: "/item/downTbitem",
					            contentType: "application/json;charset=utf-8",
					            data:JSON.stringify(data),
					            dataType: "json",
					            success:function (message) {
					               if(message.status==200){
					            	   layer.alert(message.msg);
					            	   table.reload('showItemPage',{  });
					               }else{
					            	   layer.alert(message.msg);
					               }
					            }
					        });
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

				if (obj.event === 'deleteItem') {
					layer.confirm('真的删除行么', function(index) {
						obj.del();
						layer.close(index);
						//向服务端发送删除指令
						$.ajax({
							//几个参数需要注意一下
							type : "post",//方法类型
							url : "/item/deleteItem",//url
							data : {
								"id" : data.id
							},
							dataType : "json",
							async : false,
							success : function(data) {
								console.log(result);//打印服务端返回的数据(调试用)
								if (data.status==200) {
									layer.msg('删除成功');
								} else {
									layer.msg('删除失败');
								};
							},
							error : function() {
								alert("请稍后重试！");
							}
						})
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
			
		});
		
		//搜索条件查询(提交)
		
	/* 	form.on('submit(search_btn)', function(data) {
			var formData = data.field;
			var title = data.field.title;
			var sellPoint = data.field.sellPoint;
			url = formData.url, icon = formData.icon,
					parent_id = formData.parent_id; //执行重载
			table.reload('tableReload', {
				page : {
					curr : 1
				//重新从第 1 页开始
				},
				where : {//这里传参 向后台   
					title : title,
					sellPoint : sellPoint
				//可传多个参数到后台... ，分隔 
				},
				url : '/item/downTbitem'//后台做模糊搜索接口路径 
				,
				method : 'post'
			});
			return false;//false：阻止表单跳转 true：表单跳转
		});
		$('#search').on('click', function () {
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		})  */
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