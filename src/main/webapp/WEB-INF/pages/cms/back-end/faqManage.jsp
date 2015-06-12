<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css" href="${contextPath}/css/dtree.css" />
<script language="javascript" type="text/javascript" src="${contextPath}/script/dtree.js"></script> 
<div id="a"></div>
<div id="tree" style="float: left; height: 400px; height: auto; min-height: 400px; margin-left: 20px; margin-top: 10px;">
</div>


<div style="float: left; height: auto; min-height: 200px; margin-left: 20px; margin-top: 10px;">
	<table id="infoList"></table>
	<div id="pager1"></div>
	<br/>
</div>


<script type="text/javascript">
var clickedId;

//回复
function Reply(id) {
	var url = "${contextPath }/faq/reply/question/id/" + id;
	var left = screen.width/2 - 600/2;
	var top = screen.height/2 -330/2;
	window.open (url, 'newwindow', 'height=330, width=600, left=' + left + ', top=' + top + ', location=no, fullscreen=no, scrollbars=yes, menubar=no');
}

//删除问题
function Delete(id) {
	var url = "${contextPath }/faq/question/id/" + id + "/delete";
	var del = confirm("确定要删除？");
	
	if(del == true){
		$.ajax({
			url : url,
			timeout : 5000,
			success:function(data) {
				$("#infoList").jqGrid().hideCol("somecol").trigger("reloadGrid");
			},
			error : function(response) {
				alert("error");
			}
		});
	}
}


$(function(){
	var url = "${contextPath }/faq/question/get";
	
	$("#infoList").jqGrid({
	    url:'${contextPath }/faq/question/get',
	    datatype:'json',
	    mtype:'GET',
	    colNames:['编号','问题','创建时间','操作'],
	    colModel:[
	        {name:'id',index:'id',width:55},
	        {name:'content',index:'content',width:380},
	        {name:'createDate',index:'createDate',width:120,formatter:"date",formatoptions: {srcformat:'u',newformat:'Y-m-d H:i:s'}},
	        {name:'Modify',index:'Id',width:80,align:"center",sortable:false}
	    ],
	    //autowidth:true,
	    jsonReader:{
	        page:"page",
	        total:"total",
	        repeatitems:false
	    },
	    pager:jQuery('#pager1'),
	    rowNum:20,
	    rowList:[10,20],
	    sortname:'id',
	    sortorder:'desc',
	    viewrecords:true,
	    caption:'',
	    height:'462px',
	    gridComplete:function(){  //在此事件中循环为每一行添加修改和删除链接
            var ids=jQuery("#infoList").jqGrid('getDataIDs');
            for(var i=0; i<ids.length; i++){
                var id=ids[i];
                modify = "<a href='#' style='color:#f60' onclick='Reply(" + id + ");'>回复</a>&nbsp;<a href='#'  style='color:#f60' onclick='Delete(" + id + ");' >删除</a>";  //这里的onclick就是调用了上面的javascript函数 Modify(id)
                jQuery("#infoList").jqGrid('setRowData', ids[i], { Modify: modify });
            }
        }
	}).navGrid("#pager1",{edit:false,add:false,del:false,search:false});
	
});
</script>
