<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>

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

<script type="text/javascript">
	function submitAll(){
		if($("#mcontent")[0].value=="请输入留言内容"){
			alert("请输入留言内容！")
		}else if($("#mname")[0].value==""){
			alert("请输入昵称！")
		}else{
			$("#form1").submit();
		}
	}
	function changeImg(obj){
		obj.src="${pageContext.request.contextPath}/checkImg?time="+new Date().getTime();
	}
</script>

<style type="text/css">

#mcontent{
	width:360px;
	height:120px;
	max-width:360px;
	max-height:120px;
}

</style>

</head>
<body background="img/bg.jpeg">
	<!-- 引入header.jsp -->
	<jsp:include page="/header.jsp"></jsp:include>
	
	<!-- 留言历史 -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				
				<div style="background-color: white;">
				
					<c:forEach items="${messages }" var="msg">
					
						<div class="media">
						  <div class="media-left media-middle">
						    <a href="#">
						      <img class="media-object" src="img/head.jpg" alt="...">
						    </a>
						  </div>
						  <div class="media-body">
						    <h4 class="media-heading">${msg.mname }</h4>
						    ${msg.mcontent }
						    <h5>${msg.mdate }</h5>
						  </div>
						</div>
					
					</c:forEach>
					
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
	
	<!-- 当前留言框 -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
			
			<br>
			
				<textarea name="mcontent" id="mcontent" onfocus="if(value=='请输入留言内容'){value=''}"  
				onblur="if (value ==''){value='请输入留言内容'}" form="form1">请输入留言内容</textarea>  
	
			</div>
			
			<!--右侧热门推荐-->
			<div class="col-md-3 hidden-xs">
				<div class="panel panel-primary">
					<div class="panel-heading">P.S.</div>
					<div class="panel-body">
						感谢留言！
						欢迎下次访问！
					</div>
				</div>
			</div>
		
		</div>
		
		<br>
		
		<div>
			<span style="color:red">
				<%= request.getAttribute("loginfo")==null?"":request.getAttribute("loginfo") %>
			</span>
		</div>
		
		<div class="row">
			<div class="col-md-2">
				<form action="${pageContext.request.contextPath }/message" method="post" id="form1">
					<input name="verificod" type="text" class="form-control" placeholder="点击图片更换验证码" aria-describedby="sizing-addon2">
				</form>
			</div>
			
			<div class="col-md-2">
			
				<img alt="imgWrong" src="${pageContext.request.contextPath}/checkImg" onclick="changeImg(this)" />
			
			</div>
		
		</div>
		
		<br>
			
		<div class="row">
				<div class="col-md-4">
				    <div class="input-group">
				    
				      <input name="mname" id="mname" form="form1" type="text" class="form-control" placeholder="输入昵称..">
				      
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="button" onclick="submitAll()">提交留言</button>
				      </span>
				      
				    </div>
					
				</div>
		</div>
	</div>
	
	
	<!-- 引入footer.jsp -->
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>