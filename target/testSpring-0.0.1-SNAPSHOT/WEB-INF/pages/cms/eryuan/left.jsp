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
										src="${contextPath}/images/eryuan/cfsdeyy_93.gif" height="30" width="3"></th>
									<td scope="col" background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
									<table height="30" width="250" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="center" width="27"><img
													src="${contextPath}/images/eryuan/cfsdeyy_100.gif" height="13" width="5"></th>
												<th class="lu14" scope="col" align="left" width="172"><strong>医院公告</strong></th>
												<th scope="col" align="left" width="51"><a
													href="${contextPath}/content/list/channelId/20/page/1"><img
													src="${contextPath}/images/eryuan/cfsdeyy_401.gif" height="11" width="39"
													border="0"></a></th>
											</tr>
										</tbody>
									</table>
									</td>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_98.gif" height="30" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="205" valign="top"
							background="${contextPath}/images/eryuan/cfsdeyy_32.gif">
						<table width="100%" border="0" cellpadding="6" cellspacing="0">
							<tbody>
								<tr>
									<td scope="col" class="hei" align="left"><marquee
										id="jianjie" direction="up" onmouseover="jianjie.stop()"
										onmouseout="jianjie.start()" scrollamount="4" height="200">
									<table width="100%" border="0" cellpadding="2" cellspacing="0">
										<tbody>
											<!-- 医院公告 start -->
											<c:forEach items="${noticeList }" var="noticeList">
												<tr>
													<td height="25">
														<font style="font-size: 9pt" color="#000000">·&nbsp;</font>
														<a href="${contextPath}/content/detail/contentId/${noticeList.id }" target="_blank" class="hei12">
															<font color="#454545"><c:out value="${noticeList.title }"></c:out></font>
														</a>
													</td>
													<td></td>
													<td></td>
												</tr>
											</c:forEach>
											<!-- 医院公告 end -->
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
										src="${contextPath}/images/eryuan/cfsdeyy_106.gif" height="3" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
										src="${contextPath}/images/eryuan/cfsdeyy_107.gif" height="3" width="3"></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_109.jpg" height="3" width="3"></th>
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
			<table width="257" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_93.gif" height="30" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
									<table height="30" width="250" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="center" width="27"><img
													src="${contextPath}/images/eryuan/cfsdeyy_100.gif" height="13" width="5"></th>
												<th class="lu14" scope="col" align="left" width="167"><strong>就诊指南</strong></th>
												<th scope="col" align="left" width="56"><a
													href="javascript:void(0)"><img
													src="${contextPath}/images/eryuan/cfsdeyy_401.gif" height="11" width="39"
													border="0"></a></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_98.gif" height="30" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="205" valign="top" width="257"
							background="${contextPath}/images/eryuan/cfsdeyy_32.gif">
						<table height="192" width="100%" border="0" cellpadding="0"
							cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="center" valign="bottom"><a
										href="${contextPath}/map"><img
										src="${contextPath}/images/eryuan/cfsdeyy_45.gif" height="28" width="243" border="0"></a></th>
								</tr>
								<tr>
									<th scope="col" align="center" valign="bottom"><a
										href="${contextPath}/map"><img
										src="${contextPath}/images/eryuan/cfsdeyy_57.gif" height="28" width="243" border="0"></a></th>
								</tr>
								<tr>
									<th scope="col" align="center" valign="bottom"><a
										href="${contextPath}/content/detail/contentId/159"><img
										src="${contextPath}/images/eryuan/cfsdeyy_59.gif" height="28" width="243" border="0"></a></th>
								</tr>
								<tr>
									<th scope="col" align="center" valign="bottom"><a
										href="${contextPath}/content/detail/contentId/160"><img
										src="${contextPath}/images/eryuan/cfsdeyy_65.gif" height="28" width="243" border="0"></a></th>
								</tr>
								<tr>
									<th scope="col" align="center" valign="bottom"><a
										href="${contextPath}/content/detail/contentId/161"><img
										src="${contextPath}/images/eryuan/cfsdeyy_71.gif" height="28" width="243" border="0"></a></th>
								</tr>
								<tr>
									<th scope="col" align="center" valign="bottom"><a
										href="${contextPath}/content/list/channelId/82/page/1"><img
										src="${contextPath}/images/eryuan/cfsdeyy_73.gif" height="28" width="243" border="0"></a></th>
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
										src="${contextPath}/images/eryuan/cfsdeyy_106.gif" height="3" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
										src="${contextPath}/images/eryuan/cfsdeyy_107.gif" height="3" width="3"></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_109.jpg" height="3" width="3"></th>
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
			<table width="256" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_93.gif" height="30" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
									<table height="30" width="250" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="center" width="27"><img
													src="${contextPath}/images/eryuan/cfsdeyy_100.gif" height="13" width="5"></th>
												<th class="lu14" scope="col" align="left" valign="middle"
													width="169"><strong>在线咨询</strong></th>
												<th scope="col" align="left" width="54"><a
													href="${contextPath}/faq/page/1"><img
													src="${contextPath}/images/eryuan/cfsdeyy_401.gif" height="11" width="39"
													border="0"></a></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_98.gif" height="30" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="245" valign="top"
							background="${contextPath}/images/eryuan/cfsdeyy_32.gif">
						<table width="100%" border="0" cellpadding="6" cellspacing="0">
							<tbody>
								<tr>
									<td scope="col" align="left">
										<table width="100%" border="0" cellpadding="2" cellspacing="0">
												<tbody>
												<!-- 在线咨询 start -->
													<c:forEach items="${faqDtoList }" var="faqDtoList">
														<tr>
															<td height="25">
																<font style="font-size: 9pt" color="#000000">·&nbsp;</font>
																<a href="${contextPath}/faq/page/1" class="hei12">
																	<font color="#454545"><c:out value="${faqDtoList.question }" /></font>
																</a>
															</td>
															<td></td>
															<td></td>
														</tr>
													</c:forEach>
												<!-- 在线咨询 end -->
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
										src="${contextPath}/images/eryuan/cfsdeyy_106.gif" height="3" width="3"></th>
									<th scope="col" background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
										src="${contextPath}/images/eryuan/cfsdeyy_107.gif" height="3" width="3"></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_109.jpg" height="3" width="3"></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>