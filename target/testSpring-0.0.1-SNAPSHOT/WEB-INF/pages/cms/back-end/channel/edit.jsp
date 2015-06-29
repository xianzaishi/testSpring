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
	<link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui-1.8.21.custom.css" />
	<script language="javascript" type="text/javascript" src="${contextPath}/script/jquery-1.7.2.min.js"></script>
	<script language="javascript" type="text/javascript" src="${contextPath}/script/lhgdialog/lhgcore.lhgdialog.min.js"></script>
</head>
<body>
<center><br/>
<div>
<form id="editChannelForm_old" method="post">
<table>
	<tr>
		<td>
			<div id="list">
				<div>上级频道：<select name="selectChannel" id="selectChannel" style="width:290px;"></select></div> 
			</div>
		</td>
	</tr>
	<tr>
		<td>
			频道名：&nbsp; <input type="text" id="formChannelName" value="${channel.name }" style="width:290px;"/>
			<input type="hidden" id="hid" value="${channel.id }">
		</td>
	</tr>
	<br/>
	<tr>
		<td>
			修改上级频道&nbsp; <input type="checkbox" id="editChannelCheckBox"/>
		</td>
	</tr>
	<tr>
		<td>
			<div style="text-align:center">
		    	<br/><a class="ui-state-default ui-corner-all" id="edit" href="#">确定</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    	<a class="ui-state-default ui-corner-all" id="cancel" href="#">取消</a>
		    </div>
		</td>
	</tr>
</table>
</form>
<form:form id="editChannelSpringForm" commandName="channel1" method="POST">
	<form:input id="id" path="id" style="display:none;"/>
	<form:input id="name" path="name" style="display:none;"/>
	<form:input id="parent" path="parent" style="display:none;"/>
</form:form>
</div>	 
</center>

<script type="text/javascript">
$(function(){
	$('#list').hide();
	var parentId = "${channel.parentId}";
	var allChannelName = new Array();
	//原频道名
	var oldChannelName = $('#formChannelName').val();
	
	//获得所有频道
	$.ajax( {
		type:"GET",
		url : "${contextPath }/cms/channel/get/all" + ".json",
		dataType : "json",
		timeout : 5000,
		async:false,
		success:function(data) {
			for(i=0; i<data.length; i++){
				allChannelName[i] = data[i].name;
				$('#selectChannel').append('<option id="data[i].id" value="' + data[i].id + '">' + data[i].name + '</option>');
			}
		},
		error : function(response) {
			alert("error");
			//$.msg.alert("error:"+response);
		}
	});
	
	$('#editChannelCheckBox').click(function(){
		if($('#editChannelCheckBox').attr('checked') == 'checked'){
			$('#list').show();
		}else{
			$('#list').hide();
		}
	});
	
	$("#edit").click(function(){
		var url;
		var editedChannelId = $("#selectChannel").find("option:selected").val();
		var channelId = $('#hid').val();
		var formChannelName = $('#formChannelName').val();
		
		if(checkChannelName(formChannelName)){
			alert("频道名重复");
			return 0;
		}
		
		$('#id').val('${channel.id }');
		$('#name').val(formChannelName);
		
		if(!($('#editChannelCheckBox').attr('checked') == 'checked')){
			editedChannelId = "${channel.parentId}";
			//url = "${contextPath}/cms/channel/edit/channelId/" + channelId + "/channelName/" + formChannelName + "/parentId/" + editedChannelId;
			$('#parent').val(editedChannelId);
		}else{
			//url = "${contextPath}/cms/channel/edit/channelId/" + channelId + "/channelName/" + formChannelName + "/parentId/" + editedChannelId;
			$('#parent').val(editedChannelId);
		}
		url = "${contextPath}/cms/channel/edit";
		$("#editChannelSpringForm").attr("action", url);
		$("#editChannelSpringForm").submit();
	});
	
	//检查频道名是否重复
	function checkChannelName(channelName){
		for(i=0; i<allChannelName.length; i++){
			if(allChannelName[i] == channelName){
				if(oldChannelName == channelName){
					//原频道名
					return false;
				}
				return true;
			}
		}
		return false;
	}
	
	$("#cancel").click(function(){
		window.close();
	});
	
	$(window).unload(function(){
		window.close();
	});
});
</script>
</body>
</html>