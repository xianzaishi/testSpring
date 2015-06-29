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
									<td scope="col" width="3"><img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_93.jpg"
										height="30" width="3"></td>
									<td scope="col" align="left" valign="middle"
										background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_95.jpg">
									<table height="30" width="532" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="center" width="27">
													<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5">
												</th>
												<td class="lv11" scope="col" align="left" valign="middle" width="505">
													<strong><font color="#000000">当前位置：</font></strong><font color="#000000">首页 &gt;&gt; ${channelName }</font>
												</td>
											</tr>
										</tbody>
									</table>
									</td>
									<td scope="col" width="3">
										<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_98.jpg" height="30" width="3">
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
									<td scope="col" width="6" background="${contextPath}/images/eryuan/laborUnion/03.jpg">
										<img src="${contextPath}/images/eryuan/laborUnion/03.jpg" height="12" width="6">
									</td>
									<td scope="col" align="left" height="739" valign="top" bgcolor="#FFFFFF">
										<p style="line-height: 17pt">
									<!-- 文章 start -->
										<table width="100%">
											<tr>
												<td  width="560px">
													<h1 align="center"><c:out value="${content.title }"/></h1>
												</td>
											</tr>
											<tr>
												<td>
													${content.content }
												</td>
											</tr>
										</table>
									<!-- 文章 end -->
										</p>

									</td>
									<th scope="col" width="3" background="${contextPath}/images/eryuan/laborUnion/04.jpg"><img
										src="${contextPath}/images/eryuan/laborUnion/04.jpg" height="6" width="3"></th>
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
									<th scope="col" width="3"><img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg"
										height="3" width="3"></th>
									<th scope="col" height="3" background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg" height="3" width="1"></th>
									<th scope="col" width="3"><img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg"
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