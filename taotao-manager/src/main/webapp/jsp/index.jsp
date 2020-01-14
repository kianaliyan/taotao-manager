<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>淘淘商城后台</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/layui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/echarts-en.common.min.js"></script>
</head>
<body class="layui-layout-body layui-bg-gray">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">淘淘商城后台</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->

			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="http://t.cn/RCzsdCq" class="layui-nav-img"> admin
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">个人中心</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">注销</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item"><a class="" href="javascript:;">商品管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a id="addItemCat" href="javascript:;">商品分类添加</a>
							</dd>
							<dd>
								<a href="javascript:;">商品分类查询</a>
							</dd>
							<dd>
								<a id="addItem" href="javascript:;">商品添加</a>
							</dd>
							<dd>
								<a id="showItem" href="javascript:;">商品查询</a>
							</dd>
							<dd>
								<a href="javascript:;">商品规格参数模板添加</a>
							</dd>
							<dd>
								<a href="javascript:;">商品规格参数模板查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">cms内容管理系统</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">cms内容模板添加</a>
							</dd>
							<dd>
								<a href="javascript:;">cms内容模板查询</a>
							</dd>
							<dd>
								<a href="javascript:;">cms内容添加</a>
							</dd>
							<dd>
								<a href="javascript:;">cms内容查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">订单管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">查询订单</a>
							</dd>
							<dd>
								<a href="javascript:;">订单统计</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">用户管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">查询用户</a>
							</dd>
							<dd>
								<a href="javascript:;">用户统计</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">权限管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">查看权限</a>
							</dd>
							<dd>
								<a href="javascript:;">分配权限</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">活动管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">新增活动</a>
							</dd>
							<dd>
								<a href="javascript:;">查看活动</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域
				 $("#content").load("/jsp/showItem.jsp");
			 -->
			<div style="padding: 20px">
				<div class="layui-row layui-col-space15">
					<div class="layui-col-sm6 layui-col-md3">
						<div class="layui-card">
							<div class="layui-card-header">
								访问量 <span class="layui-badge layui-bg-blue layuiadmin-badge">周</span>
							</div>
							<div class="layui-card-body layuiadmin-card-list">
								<p class="layuiadmin-big-font" style="font-size: 33px">9,999,666</p>
								</br>
								<p>
									总计访问量 <span class="layuiadmin-span-color">88万 <i
										class="layui-inline layui-icon layui-icon-flag"></i></span>
								</p>
							</div>
						</div>
					</div>
					<div class="layui-col-sm6 layui-col-md3">
						<div class="layui-card">
							<div class="layui-card-header">
								收入 <span class="layui-badge layui-bg-blue">日</span>
							</div>
							<div class="layui-card-body layuiadmin-card-list">
								<p class="layuiadmin-big-font" style="font-size: 33px">9,999,666</p>
								</br>
								<p>
									总计收入 <span class="layuiadmin-span-color">3万 <i
										class="layui-inline layui-icon layui-icon-dollar"></i></span>
								</p>
							</div>
						</div>
					</div>
					<div class="layui-col-sm6 layui-col-md3">
						<div class="layui-card">
							<div class="layui-card-header">
								收入 <span class="layui-badge layui-bg-blue">月</span>
							</div>
							<div class="layui-card-body layuiadmin-card-list">
								<p class="layuiadmin-big-font" style="font-size: 33px">9,999,666</p>
								</br>
								<p>
									总计收入 <span class="layuiadmin-span-color">88万 <i
										class="layui-inline layui-icon layui-icon-dollar"></i></span>
								</p>
							</div>
						</div>
					</div>
					<div class="layui-col-sm6 layui-col-md3">
						<div class="layui-card">
							<div class="layui-card-header">
								收入 <span class="layui-badge layui-bg-blue layuiadmin-badge">季度</span>
							</div>
							<div class="layui-card-body layuiadmin-card-list">
								<p class="layuiadmin-big-font" style="font-size: 33px">9,999,666</p>
								</br>
								<p>
									总计收入 <span class="layuiadmin-span-color">321万 <i
										class="layui-inline layui-icon layui-icon-dollar"></i></span>
								</p>
							</div>
						</div>
					</div>
					<div class="layui-col-sm12">
						<div class="layui-card">
							<div class="layui-card-header">统计</div>
							<div class="layui-card-body">
								<div id="echartsMain" style="width :600px;height:400px"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- <div id="content" style="padding: 15px;">内容主体区域</div>
			<div id="main" style="width: 600px; height: 300px;"></div> -->
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© 欢迎来到淘淘商城后台管理系统
		</div>

	</div>
	<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery-2.1.0.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
<script type="text/javascript">
	var myChart=echarts.init(document.getElementById('echartsMain'));
	var weatherIcons={
			
	};
	
	//使用刚指定的配置项和数据显示图表
	$.get('/itemCat/statisticsItem').done(function (resule) {
    // 填入数据
    myChart.setOption({
    	 title: {
		        text: '天气情况统计',
		        subtext: '虚构数据',
		        left: 'center'
		    },
		    tooltip: {
		        trigger: 'item',
		        formatter: '{a} <br/>{b} : {c} ({d}%)'
		    },
		   
		    series: [
		        {
		            type: 'pie',
		            radius: '65%',
		            center: ['50%', '50%'],
		            selectedMode: 'single',
		            data: resule
		           
		        }
		    ]
    });
});
</script>
	<!-- <script>
//JavaScript代码区域
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
</script> -->
	<!-- <script>
        // 绘制图表。
        echarts.init(document.getElementById('main')).setOption({
            series : [
                      {
                          name: '访问来源',
                          type: 'pie',
                          radius: '55%',
                          data:[
                              {value:235, name:'视频广告'},
                              {value:274, name:'联盟广告'},
                              {value:310, name:'邮件营销'},
                              {value:335, name:'直接访问'},
                              {value:400, name:'搜索引擎'}
                          ]
                      }
                  ]
        });
    </script> -->

</body>
</html>