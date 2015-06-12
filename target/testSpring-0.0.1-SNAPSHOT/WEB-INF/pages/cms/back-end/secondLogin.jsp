<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <script language="javascript" type="text/javascript" src="${contextPath}/script/jquery-1.7.2.min.js"></script> 
    
<style type="text/css">
* {
  /* 全部对象过渡方法开启、过程时长、运动曲线 */
  transition:all 0.5s ease-in-out;
  -webkit-transition:all 0.5s ease-in-out;
	-moz-transition:all 0.5s ease-in-out;
	-o-transition:all 0.5s ease-in-out;
}

div {
  float:left;
  width:200px;
  height:200px;
  background:#fff;
  margin:200px 100px;
  position:relative;
  padding:1px;
  border:4px solid rgba(0,0,0,0.85);
  border-radius:15px;
}

.a {
  /* 变形 1倍 */
	transform:scale(1);
	-webkit-transform:scale(1);
	-moz-transform:scale(1);
	-o-transform:scale(1);
}
.a:hover {
/* 变形 1.5倍 */
	transform:scale(1.5);
	-webkit-transform:scale(1.5);
	-moz-transform:scale(1.5);
	-o-transform:scale(1.5);
}

div{ margin-top:150px;}
</style>
</head>
<body id="login">
	<form id="YYForm" method="post">
		<div class="a"><h2 align="center">医院登陆</h2>
			用户名：<input id="yyUsername" name="username" type="text" size="15"/><br/><br/>
			密&nbsp;&nbsp;码：<input id="yyPassword" name="password" type="password" size="15"/>
			<input type="hidden" name="go" value="YY" />
			<center><br/><a id="loginYY" href="#">登陆</a></center>
		</div>
	</form>
	<form id="GHForm" method="post">
		<div class="a"><h2 align="center">工会登陆</h2>
			用户名：<input id="ghUsername" name="username" type="text" size="15"/><br/><br/>
			密&nbsp;&nbsp;码：<input id="ghPassword" name="password" type="password" size="15"/>
			<input type="hidden" name="go" value="GH" />
			<center><br/><a id="loginGH" href="#">登陆</a></center>
		</div>
	</form>
</body>
<script type="text/javascript">
$(function(){
	var url = "${contextPath}/system/login/";
	$("#loginYY").click(function(){
		//var url = "${contextPath}/system/login/username/" + $('#yyUsername').val() +"/password/" + $('#yyPassword').val() +"/go/1";
		//window.location.href = url;
		$("#YYForm").attr("action", url);
		$("#YYForm").submit();
	});
	
	$("#loginGH").click(function(){
		//var url = "${contextPath}/system/login/username/" + $('#ghUsername').val() +"/password/" + $('#ghPassword').val() +"/go/2";
		//window.location.href = url;
		$("#GHForm").attr("action", url);
		$("#GHForm").submit();
	});
});
</script>
</html>