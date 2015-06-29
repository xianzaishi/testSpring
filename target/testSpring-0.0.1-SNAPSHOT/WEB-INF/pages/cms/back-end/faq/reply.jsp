<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui-1.8.21.custom.css" />
<script language="javascript" type="text/javascript" src="${contextPath}/script/jquery-1.7.2.min.js"></script>
<script language="javascript" type="text/javascript" src="${contextPath}/script/lhgdialog/lhgcore.lhgdialog.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<center><br/>
<form:form id="answerForm" commandName="answer" method="POST">
    <table>
    	<tr>
    		<td>问题：</td>
    		<td><div>${question.content }</div><div id="questionsId" style="display:none;" >${question.id }</div></td>
    	</tr>
        <tr>
            <td>回复:</td>
            <td><form:textarea id="questionContent" path="content" style="width:500px; height:200px;" /></td>
            <form:hidden id="answerId" path="id" />
            <form:hidden id="questionId" path="questionId" />
        </tr>
        <tr>
            <td colspan="3">
                <div style="text-align:center">
                	<br/><a class="ui-state-default ui-corner-all" id="add" href="javascript:void(0)">提交</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<a class="ui-state-default ui-corner-all" id="cancel" href="javascript:void(0)">取消</a>
                </div>
            </td>
        </tr>
    </table>
</form:form>
</center>

<script type="text/javascript">
$(function(){
	$('#questionId').val($('#questionsId').html());
	
	$("#add").click(function(){
		// 表单验证
		if($("#questionContent").val().trim() == undefined || "" == $("#questionContent").val().trim()){
			alert("回复不能为空");
			return 0;
		}
		
		$("#questionContent").val("A:" + $("#questionContent").val());
		
		var answerId = $('#answerId').val();
		var url;
		if(answerId == -1){
			url = "${contextPath}/faq/answer/submit";
		}else{
			url = "${contextPath}/faq/answer/edit/id/" + answerId;
		}
		$("#answerForm").attr("action", url);
		$("#answerForm").submit();
	});
	
	$("#cancel").click(function(){
		window.close();
	});
	
	$(window).unload(function(){
		window.close();
	});
});
</script>
