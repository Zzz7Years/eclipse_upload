<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- QQ登录、页头Logo、导航 -->
<!--顶端QQ登录-->
<div class="container-fluid hidden-xs">
	<div class="row">
		<div class="col-lg-10 col-md-10"></div>
		<div class="col-md-2" onclick="wrong_qq()">
			<img src="img/qq.jpg" alt="YuanZzz博客" /> <a href="#"
				onclick="javascript:alert('对不起,该功能尚未开通')">QQ登录</a>
		</div>
	</div>
</div>

<!--Logo栏-->
<div class="container">
	<div class="col-md-4">
		<a href="${pageContext.request.contextPath }/home"><img src="img/logo.png" alt="YuanZzz博客" /></a>
	</div>
</div>

<!--导航栏-->
<div class="container">

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath }/home">首页</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a class="navbar-a" href="${pageContext.request.contextPath }/articleList">学无止境</a></li>
					<li><a class="navbar-a" href="showpicture.jsp">美图展示</a></li>
					<li><a class="navbar-a" href="video.jsp">视频空间</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">查看所有<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath }/articleList">学无止境</a></li>
							<li><a href="showpicture.jsp">美图展示</a></li>
							<li><a href="video.jsp">视频空间</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="aboutme.jsp">关于我</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="${pageContext.request.contextPath }/message">留言板</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
</div>