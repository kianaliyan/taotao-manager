<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加商品</title>
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
	  <legend>添加商品</legend>
	</fieldset>
	<form class="layui-form" action="">
		<div class="layui-form-item">
			<label class="layui-form-label">商品类目:</label>
			<div class="layui-input-block">
				<select name="interest" lay-filter="aihao">
					<option value=""></option>
					<option value="0">写作</option>
					<option value="1" selected="">阅读</option>
					<option value="2">游戏</option>
					<option value="3">音乐</option>
					<option value="4">旅行</option>
				</select>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">商品标题:</label>
			<div class="layui-input-block">
				<input type="text" name="title" lay-verify="title"
					autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">商品卖点:</label>
			<div class="layui-input-block">
				<textarea placeholder="请输入内容" class="layui-textarea"></textarea>
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">商品价格:</label>
				<div class="layui-input-block">
					<input type="text" name="title" lay-verify="title"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">库存数量:</label>
				<div class="layui-input-block">
					<input type="text" name="title" lay-verify="title"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		
		<div class="layui-form-item">
		 	<div class="layui-inline">
				<label class="layui-form-label">条形码:</label>
				<div class="layui-input-block">
					<input type="text" name="title" lay-verify="title"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		
		
		 <div class="layui-btn-container">
   	 		<button class="layui-btn layui-btn-sm" lay-event="addpic">添加图片</button>
   	 	</div>

		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">商品描述:</label>
			<div class="layui-input-block">
				<textarea placeholder="请输入内容" class="layui-textarea"></textarea>
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit
					lay-filter="addSubmit">提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
</body>
</html>