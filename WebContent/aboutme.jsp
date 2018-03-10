<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>关于我</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<meta name="keywords" content="个人博客,Yuan个人博客,个人博客系统,袁霄的博客">
	<meta name="description" content="YuanZzz个人博客系统。">
	
	<LINK rel="Bookmark" href="banben.ico" />
	<LINK rel="Shortcut Icon" href="banben.ico" />
	
	<!--引入bootStrap核心样式文件-->
	<link rel="stylesheet" type="text/css" href='css/bootstrap.css' />
	<!--引入JQ核心文件-->
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<!--引入bootStrap核心JQ文件-->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!--导航栏CSS-->
	<link rel="stylesheet" href="css/navbar-default.css" />
	
	<link rel="stylesheet" type="text/css" href="css/index.css" />

</head>
<body background="img/bg.jpeg">
	<!-- 引入header.jsp -->
	<jsp:include page="/header.jsp"></jsp:include>


	<!--橙色条条-->
	<div class="container">
		<div style="background-color: coral; margin-bottom: 20px;">
			<div class="row">
				<div class="col-md-2">
					<button id="midbutton" type="button">最新发布</button>
				</div>
				<div class="col-md-10"></div>
			</div>
		</div>
	</div>
	<!--轮播图-->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="alert alert-info" role="alert">
					<h2>Just about me</h2>
					一枚正在努力的 <span style="text-decoration: line-through;font-style:italic">程序员</span> 搬砖工
				</div>
				
				<div class="alert alert-info" role="alert">
					<h2>About my blog</h2>
					一个仅供学习和展示的个人小Web
				</div>
				
				<div class="alert alert-info" role="alert">
					<h2>Content me</h2>
					邮箱：497796460@qq.com
				</div>
			</div>

			<!--右侧博客信息-->
			<div class="col-md-3 hidden-xs">
				<div class="panel panel-primary">
					<div class="panel-heading">博客信息</div>
					<div class="panel-body">
						一个仅供个人学习和展示的<br>
						个人博客/个人网站<br>
						<br>
						博客构成: JS、JQuery、jsp、bootStrap<br>
						数据库: mysql<br><br>
						
						博主：YuanZzz/袁霄
					</div>
				</div>
				
			</div>
			
			<!--右侧热门推荐-->
				<div class="col-md-3 hidden-xs">
					<div class="panel panel-primary">
						<div class="panel-heading">热门推荐</div>
						<div class="panel-body">
							1.<a href="https://www.zhihu.com/question/38206477">为什么电影《魔戒》、《加勒比海盗》中的人物都脏脏的？</a><br>
							2.<a href="https://www.zhihu.com/question/19760394">被猫狗咬伤了，必须去打狂犬疫苗吗？</a><br>
							3.<a href="https://zhuanlan.zhihu.com/p/26734501">中国武术、中医这些东西都怎么了？</a><br>
							4.<a href="https://www.zhihu.com/question/55556079">有什么廉价但是技术含量很高的东西？</a><br>
							5.<a href="https://www.zhihu.com/question/53219429">如何评价守望先锋荣获 TGA 2016 年度游戏？</a><br>
							6.<a href="https://www.zhihu.com/question/24764399">韩剧、泰剧在中国都很火，为何日剧却在中国火不起来？</a>
						</div>
					</div>
				</div>
			
		</div>
	</div>

	<!-- 引入footer.jsp -->
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>