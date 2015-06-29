<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<link rel="stylesheet" type="text/css" href="${contextPath}/css/ajaxfileupload.css" />
	<link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui-1.8.21.custom.css" />
	<script language="javascript" type="text/javascript" src="${contextPath}/script/jquery-1.7.2.min.js"></script>
	<script language="javascript" type="text/javascript" src="${contextPath}/script/ckeditor/ckeditor.js"></script> 
	<script language="javascript" type="text/javascript" src="${contextPath}/script/ajaxfileupload.js"></script> 
	<script language="javascript" type="text/javascript" src="${contextPath}/script/lhgdialog/lhgcore.lhgdialog.min.js"></script>
	<style type="text/css">
		#flow-div {
		     margin:0; /* 必须 */
		     border:0;
		     height:100%; /* 必须 */
		     overflow-y:auto;/* 必须 */
		    }
		#flow-menu {display:block; top:10px; left:150px; width:130px; position:fixed;} /* IE并不认识fixed，而FF认识 */
		* html #flow-menu {position:absolute;} /* 这个只有IE认识 */
	</style>
</head>
<body>
<center>
<table>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><h2>回复成功，<a href="javascript:window.close();">点此关闭此窗口</a></h2></td>
	</tr>
</table>
</center>
</body>
</html>