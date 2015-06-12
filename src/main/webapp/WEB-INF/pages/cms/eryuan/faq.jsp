<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="cssBasePath" value="${contextPath}/css" />
<c:set var="scriptBasePath" value="${contextPath}/script" />
<c:set var="imagesBasePath" value="${contextPath}/images" />
<style type="text/css">
*{padding:0;list-style-type:none;}
a,img{border:0;}
a,a:visited{color:#5e5e5e; text-decoration:none;}
a:hover{color:#b52725;text-decoration:underline;}
.clear{display:block;overflow:hidden;clear:both;height:0;line-height:0;font-size:0;}
body{font:12px/180% Arial, Helvetica, sans-serif;}
.demo{width:640px;margin:40px auto;}
/* ranklist */
.ranklist{border:solid 1px #ddd;padding:10px 10px 0 10px;}
.ranklist li{overflow:hidden;position:relative;padding:0 70px 0 30px;margin:0 0 10px 0;}
.ranklist li em{background:url(${contextPath}/images/eryuan/mun.gif) no-repeat;width:20px;height:16px;overflow:hidden;display:block;position:absolute;left:0;top:0;text-align:center;font-style:normal;color:#333;}
.ranklist li em{background-position:0 -16px;}
.ranklist li.top em{background-position:0 0;color:#fff;}
.ranklist li .num{position:absolute;right:0;top:0;color:#999;}
</style>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" height="9"></th>
					</tr>
				</tbody>
			</table>
			</th>
			<td scope="col" align="right" valign="top">
			<table height="771" width="98%" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" height="30">
						<table height="30" width="100%" border="0" cellpadding="0"
							cellspacing="0">
							<tbody>
								<tr>
									<td scope="col" width="3"><img src="${contextPath}/images/eryuan/cfsdeyy_93.gif"
										height="30" width="3"></td>
									<td scope="col" align="left" valign="middle"
										background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
									<table height="30" width="532" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="center" width="27">
													<img src="${contextPath}/images/eryuan/cfsdeyy_100.gif" height="13" width="5">
												</th>
												<td class="lv11" scope="col" align="left" valign="middle" width="505">
													<strong>当前位置：</strong>首页 &gt;&gt; FAQ专区
												</td>
											</tr>
										</tbody>
									</table>
									</td>
									<td scope="col" width="3">
										<img src="${contextPath}/images/eryuan/cfsdeyy_98.gif" height="30" width="3">
									</td>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<td scope="col" align="left" valign="top">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td scope="col" width="6" background="${contextPath}/images/eryuan/03.jpg">
										<img src="${contextPath}/images/eryuan/03.jpg" height="12" width="6">
									</td>
									<td scope="col" align="left" height="739" valign="top" bgcolor="#FFFFFF">
										<p style="line-height: 17pt">
									<!-- 提问框 start -->
									<form:form id="faqForm" commandName="faqDto" method="POST">
										<table width="100%">
											<tr>
												<td>
													&nbsp;&nbsp;&nbsp;&nbsp;我要提问：
												</td>
												<td>
													<form:textarea id="textQuestion" path="question" style="width:400px; height:100px;"></form:textarea>
												</td>
											</tr>
											<tr>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;用户:</td>
												<td>
													<form:input id="creator" path="questionCreator" style="width:400px;"/>
												</td>
											</tr>
										</table>
										</form:form>
										<center>
											<table>
												<tr>
													<td><a id="submitQuestion" href="javascript:void(0)"><img src="${contextPath}/images/eryuan/submit.jpg"/></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td><a id="resetQuestion" href="javascript:void(0)"><img src="${contextPath}/images/eryuan/reset.jpg"/></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
												</tr>
											</table>
										</center>
									<!-- 提问框 end -->
										</p>

									<!-- answer div start -->
									<div class="demo">
										<div class="ranklist">
											<ol>
												<c:forEach items="${faqDtoPageList }" var="faqDtoPageList" varStatus="idx">
													<li>
														<em>${idx.index + 1}</em>
														<div><a href="javascript:void(0)" id="question${idx.index + 1}" name="question_a" title="${faqDtoPageList.question }"><c:out value="${faqDtoPageList.question }"/></a></div>
														<div id="question${idx.index + 1}_div" name="question_div" style="display:none;"><c:out value="${faqDtoPageList.answer }"/></div>
													</li>
												</c:forEach>
											</ol>
											<div class="clear"></div>
										</div>
									</div>
									<!-- answer div end -->
									<center>
										<font style="font-size: 9pt"> 
											<a id="toFirstPage" href="javascript:void(0)">首页&nbsp;&nbsp;</a>
											<a id="toPrePage" href="javascript:void(0)">上一页&nbsp;&nbsp;</a>
											<a id="toNextPage" href="javascript:void(0)">下一页&nbsp;&nbsp;</a>
											<a id="toEndPage" href="javascript:void(0)">尾页&nbsp;&nbsp;</a>
											<input id="goToPageText" type="text" style="width:30px; height:12px;"/><a id="goToPage" href="javascript:void(0)">GO</a>
											共<a id="total"></a>条&nbsp;&nbsp;&nbsp;共<a id="totalPage"></a>页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
										</font>
									</center>
									</td>
									<th scope="col" width="3" background="${contextPath}/images/eryuan/04.jpg"><img
										src="${contextPath}/images/eryuan/04.jpg" height="6" width="3"></th>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td scope="col" height="3">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" width="3"><img src="${contextPath}/images/eryuan/cfsdeyy_106.gif"
										height="3" width="3"></th>
									<th scope="col" height="3" background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
										src="${contextPath}/images/eryuan/cfsdeyy_107.gif" height="3" width="1"></th>
									<th scope="col" width="3"><img src="${contextPath}/images/eryuan/cfsdeyy_109.jpg"
										height="3" width="3"></th>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
<script type="text/javascript">
function isValid(p) {  
	  
    p = p.toUpperCase();  
  
    if (p.indexOf("DELETE") >= 0 || p.indexOf("ASCII") >= 0  
        || p.indexOf("UPDATE") >= 0 || p.indexOf("SELECT") >= 0  
        || p.indexOf("'") >= 0 || p.indexOf("SUBSTR(") >= 0  
        || p.indexOf("COUNT(") >= 0 || p.indexOf(" OR ") >= 0  
        || p.indexOf(" AND ") >= 0 || p.indexOf("DROP") >= 0  
        || p.indexOf("EXECUTE") >= 0 || p.indexOf("EXEC") >= 0  
        || p.indexOf("TRUNCATE") >= 0 || p.indexOf("INTO") >= 0  
        || p.indexOf("DECLARE") >= 0 || p.indexOf("MASTER") >= 0  
        ) {  
  
        logger.error("未能通过过滤器：p=" + p);  
  
        return false;  
    }  
    return true;  
}  
$(function(){
	//提交问题
	$('#submitQuestion').click(function(){
		var text = $('#textQuestion').val();
		text = text.replace(/(^s*)|(s*$)/g, "");  //ie不支持trim()
		text = text.replace(/<script.*?>.*?<\/script>/ig, '');  
		var creator = $('#creator').val();
		creator = creator.replace(/(^s*)|(s*$)/g, "");  //ie不支持trim()
		if(creator == ""){
			creator = "匿名用户";
		}
		var isvalid = isValid(text);
		
		if(text != ""){
			text = "Q:" + text;
			var url = "${contextPath}/faq/submit";
			$("#faqForm").attr("action", url);
			$('#textQuestion').val(text);
			$('#textQuestion').attr("readonly", true);
			$("#faqForm").submit();
		}else{
			alert("问题不能为空");
		}
	});
	
	//重置
	$('#resetQuestion').click(function(){
		$('#textQuestion').val("");
	});
	
	var count = ${count };	//总数
	var page = ${page };	//当前页码
	var pageCount = 1;	//总页码数
	$('#total').html(count);
	$('#toFirstPage').attr("href", 1);
	
	//上一页
	if(page == 1){
		$('#toPrePage').attr("href", 1);
	}else{
		$('#toPrePage').attr("href", page - 1);
	}
	
	if(count%20 == 0){
		pageCount = count/20;
	}else{
		pageCount = parseInt(count/20 + 1);
	}
	$('#totalPage').html(pageCount);
	$('#toEndPage').attr("href", pageCount);
	
	//下一页
	if(page == pageCount){
		$('#toNextPage').attr("href", pageCount);
	}else{
		$('#toNextPage').attr("href", page + 1);
	}
	
	//goToPage
	$('#goToPage').click(function(){
		var toPage = $('#goToPageText').val();
		if(toPage <= pageCount){
			$('#goToPage').attr("href", toPage);
		}else{
			$('#goToPage').attr("href", pageCount);
		}
	});	
	
	//问题点击事件
	$("a[name='question_a']").click(function(){
		var id = this.id + "_div";
		$("div[name='question_div']").slideUp("normal");
		$("#" + id).slideDown("normal");
	});
});
</script>