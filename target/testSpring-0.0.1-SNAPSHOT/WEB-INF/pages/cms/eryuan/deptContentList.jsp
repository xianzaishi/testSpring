<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="cssBasePath" value="${contextPath}/css" />
<c:set var="scriptBasePath" value="${contextPath}/script" />
<c:set var="imagesBasePath" value="${contextPath}/images" />

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
													<strong>当前位置：</strong>首页 &gt;&gt; ${channelName }
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
									<!-- 文章列表 start -->
										<table>
											<c:forEach items="${classlList }" var="classlList">
												<tr>
													<td  width="560px">
														<h3><font style="color:#017C6D;">&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${classlList.name }"/></font></h3>
													</td>
													<td align="right">
														<font style="font-size: 9pt; align:right;" color="999999"></font> <br>
													</td>
												</tr>
												<tr>
													<td id="class${classlList.id }">
														<script type="text/javascript">
														var url = "${contextPath}/channel/list/channelId/" + ${classlList.id };
														var html = "";
														$.ajax({
															url : url,
															timeout : 5000,
															async: false,
															success:function(data) {
																for(i=0; i<data.length; i++){
																	html = html + "<div>";
																	html = html + "<a href=${contextPath}/dept/content/list/channelId/" + data[i].id + "><font style='color:#017C6D;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + data[i].name + "</font></a>";
																	html = html + "</div>";
																}
																$("#class${classlList.id }").html(html);
															},
															error : function(response) {
																alert("error");
															}
														});
														</script>
													</td>
												</tr>
											</c:forEach>
										</table>
									<!-- 文章列表 end -->
										</p>
										<!-- 分页 start -->
										<!-- 
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
									 -->
										<!-- 分页 end -->
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
</script>