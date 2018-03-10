<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>YuanZzz的个人博客</title>
	
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
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="img/paixu.jpg" alt="java排序算法" />
							<div class="carousel-caption">
								<a class="pic_a" href="${pageContext.request.contextPath }/articleBody?aid=01" target="view_window">
									<h3>一遍记住 Java 常用的八种排序算法与代码</h3>
								</a>
							</div>
						</div>
						<div class="item">
							<a href="${pageContext.request.contextPath }/articleBody?aid=03" target="view_window">
								<img src="img/HashMap.jpg" alt="HashMap VS 技术深度" />
							</a>
						</div>

						<div class="item">
							<img src="img/java_hd.jpg" />
							<div class="carousel-caption">
								<a class="pic_a" href="${pageContext.request.contextPath }/articleBody?aid=05" target="view_window">
									<h3>成为Java高手的25个学习要点</h3>
								</a>
							</div>
						</div>

					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
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
			
		</div>
	</div>

	<!--博客展示-->
	<div class="container" style="margin-top: 25px;">
		<div class="row">
			<div class="col-md-8">
				
				<c:forEach items="${newArticle }" var="article">
				
					<div class="panel panel-default">
						<div class="panel-heading">
							<a href="${pageContext.request.contextPath }/articleBody?aid=${article.aid }">${article.atitle }</a>
						</div>
						<div class="panel-body">
							${article.aoverview }...<a href="${pageContext.request.contextPath }/articleBody?aid=${article.aid }">阅读全文</a>
						</div>
					</div>
				
				</c:forEach>			

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