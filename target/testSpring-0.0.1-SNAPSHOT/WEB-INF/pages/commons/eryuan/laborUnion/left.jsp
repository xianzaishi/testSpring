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

<table align="center" height="408" width="960" border="0"
	cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<th scope="col" align="left" valign="top" width="257">
			<table width="257" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" width="257">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_93.jpg" height="30" width="3"></th>
									<td scope="col" background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_95.jpg">
									<table height="30" width="250" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="center" width="27"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5"></th>
												<th class="lu14" scope="col" align="left" width="172"><strong><font color="#000000">公告通知</font></strong></th>
												<th scope="col" align="left" width="51"><a
													href="${contextPath}/labor/union/content/list/channelId/52/page/1"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_401.jpg" height="11" width="39"
													border="0"></a></th>
											</tr>
										</tbody>
									</table>
									</td>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_98.jpg" height="30" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="205" valign="top"
							background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_32.jpg">
						<table width="100%" border="0" cellpadding="6" cellspacing="0">
							<tbody>
								<tr>
									<td scope="col" class="hei" align="left"><marquee
										id="jianjie" direction="up" onmouseover="jianjie.stop()"
										onmouseout="jianjie.start()" scrollamount="4" height="200">
									<table width="100%" border="0" cellpadding="2" cellspacing="0">
										<tbody>
											<!-- 公告通知 start -->
											<c:forEach items="${laborNoticeList }" var="laborNoticeList">
												<tr>
													<td height="25">
														<font style="font-size: 9pt" color="#000000">·&nbsp;</font>
														<a href="${contextPath}/labor/union/content/detail/contentId/${laborNoticeList.id }" target="_blank" class="hei12">
															<font color="#454545"><c:out value="${laborNoticeList.title }"></c:out></font>
														</a>
													</td>
													<td></td>
													<td></td>
												</tr>
											</c:forEach>
											<!-- 公告通知 end -->
										</tbody>
									</table>
									</marquee></td>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg" height="3" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg" height="3" width="3"></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg" height="3" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" height="9"></th>
					</tr>
				</tbody>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" height="9"></th>
					</tr>
				</tbody>
			</table>
			<table width="256" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_93.jpg" height="30" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_95.jpg">
									<table height="30" width="250" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="center" width="27"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5"></th>
												<th class="lu14" scope="col" align="left" valign="middle"
													width="169"><strong><font color="#000000">联系我们</font></strong></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_98.jpg" height="30" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="245" valign="top"
							background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_32.jpg">
						<table width="100%" border="0" cellpadding="6" cellspacing="0">
							<tbody>
								<tr>
									<td scope="col" align="left">
										<table width="100%" border="0" cellpadding="2" cellspacing="0">
												<tbody>
												<!-- 联系我们 start -->
													<tr>
														<td height="25">${contactUs.content }</td>
														<td></td>
														<td></td>
													</tr>
												<!-- 联系我们 end -->
												</tbody>
											</table>
									</td>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg" height="3" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg" height="3" width="3"></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg" height="3" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>