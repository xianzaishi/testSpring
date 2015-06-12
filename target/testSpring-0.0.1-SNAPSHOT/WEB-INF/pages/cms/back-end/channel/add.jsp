<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui-1.8.21.custom.css" />
<script language="javascript" type="text/javascript" src="${contextPath}/script/jquery-1.7.2.min.js"></script>
<script language="javascript" type="text/javascript" src="${contextPath}/script/lhgdialog/lhgcore.lhgdialog.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<center><br/>
<form:form id="channelForm" commandName="channel" method="POST">
    <table>
        <tr>
            <td>上级频道:</td>
            <td><form:input path="parentName" disabled="true"/></td>
            <form:hidden path="parentId" />
        </tr>
        <tr>
            <td>频道名:</td>
            <td><form:input path="name" id="channelName"/></td>
        </tr>
        <tr>
            <td colspan="3">
                <div style="text-align:center">
                	<br/><a class="ui-state-default ui-corner-all" id="add" href="#">添加</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<a class="ui-state-default ui-corner-all" id="cancel" href="#">取消</a>
                </div>
            </td>
        </tr>
    </table>
</form:form>
</center>

<script type="text/javascript">
$(function(){
	$("#add").click(function(){
		//频道名不能重复
		var key;
		$.ajax( {
				type:"GET",
				url : "${contextPath }/cms/channel/get/all" + ".json",
				dataType : "json",
				timeout : 5000,
				async:false,
				success:function(data) {
					for(i=0; i<data.length; i++){
						if(data[i].name == $('#channelName').val()){
							key = 1;
						}
					}
				},
				error : function(response) {
					alert("error");
				}
			});
		if(key != 1){
			var url = "${contextPath }/cms/channel/add";
			$("#channelForm").attr("action", url);
			$("#channelForm").submit();
		}else{
			alert("频道名不能重复！");
		}
		
	});
	
	$("#cancel").click(function(){
		window.close();
	});
	
	$(window).unload(function(){
		window.close();
	});
});
</script>
