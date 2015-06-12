<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="cssBasePath" value="${contextPath}/css" />
<c:set var="scriptBasePath" value="${contextPath}/script" />
<c:set var="imagesBasePath" value="${contextPath}/images" />

<link rel="stylesheet" type="text/css" href="${contextPath}/css/eryuan/goodnav.css" />
<script language="javascript" type="text/javascript" src="${contextPath}/script/eryuan/jquery.litenav.js"></script>


<table align="center" width="960" border="0" cellpadding="0"
	cellspacing="0">
	<tbody>
		<tr>
			<td scope="col" height="3"></td>
		</tr>
	</tbody>
</table>

<table align="center" width="960" border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<th scope="col" width="257">
			<table width="257" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" width="257">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3">
										<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_93.jpg" height="30" width="3" />
									</th>
									<th scope="col" background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_95.jpg">
										<table height="30" width="250" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<th scope="col" align="center" width="27">
														<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5" />
													</th>
													<th class="lu14" scope="col" align="left" width="172">
														<strong><font color="#000000">公告通知</font></strong>
													</th>
													<th scope="col" align="left" width="51">
														<a href="${contextPath}/labor/union/content/list/channelId/52/page/1" ><img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_401.jpg" height="11" width="39" border="0" /></a>
													</th>
												</tr>
											</tbody>
										</table>
									</th>
									<th scope="col" align="right" width="3">
										<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_98.jpg" height="30" width="3" />
									</th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<td scope="col" height="200" valign="top" background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_32.jpg">
							<table width="100%" border="0" cellpadding="6" cellspacing="0">
								<tbody>
									<tr>
										<td scope="col" class="hei" align="left">
											<marquee id="jianjie" direction="up" onmouseover="jianjie.stop()" onmouseout="jianjie.start()" scrollamount="4" height="200">
												<table width="100%" border="0" cellpadding="2" cellspacing="0">
													<tbody>
													<!-- 公告通知  start-->
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
													<!-- 公告通知  end-->
													</tbody>
												</table>
											</marquee>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<th scope="col" height="">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg" height="3"
										width="3" /></th>
									<th scope="col"
										background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg" height="3"
										width="3" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>
			</th>
			<th scope="col" align="left" valign="top">
			<table height="238" width="703" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" align="right" height="5" valign="top"><img
							src="${contextPath}/images/eryuan/laborUnion/01.jpg" height="5" width="693" />
						</th>
					</tr>
					<tr>
						<th scope="col" align="right" valign="top">
						<table height="228" width="693" border="0" cellpadding="0" cellspacing="0" style="padding-left: 10px;">
							<tbody>
								<tr>
									<th scope="col" align="left" valign="top" width="4" background="${contextPath}/images/eryuan/laborUnion/03.jpg" >
										<img src="${contextPath}/images/eryuan/laborUnion/03.jpg" height="12" width="6" />
									</th>
									<th scope="col" align="left" valign="top" bgcolor="white">
									<table height="228" width="684" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td scope="col" align="center" valign="middle" width="272">
												
												
												<!-- 焦点图片 开始 -->
												<div id="hotpic">
													<div id="NewsPic">
														<c:forEach items="${laborNewsPicList }" var="laborNewsPicList">
												            <a style="visibility: visible; display: block;" target="_blank" href="${contextPath}/labor/union/content/detail/contentId/${laborNewsPicList.id }">
																<img class="Picture" src="${contextPath}${laborNewsPicList.image }" style="width: 270px; height: 215px;" alt="" title="${laborNewsPicList.title }"/>
															</a>
														</c:forEach>
											            <div class="Nav">
											                <span class="Normal">7</span>
											                <span class="Normal">6</span>
											                <span class="Normal">5</span>
											                <span class="Normal">4</span>
											                <span class="Normal">3</span>
											                <span class="Normal">2</span>
											                <span class="Cur">1</span>
											            </div>
											            <div id="NewsPicTxt" style="width: 270px; overflow: hidden">
											            	<a target="_blank" href="javascript:void(0)">第1张图片的说明文字</a>
											            </div>
											        </div>
											        
											    </div>
												<!-- 焦点图片 结束 -->
												
												
												</td>
												<td scope="col" align="left" height="235" valign="top" width="413" >
												<table height="227" width="413" border="0" cellpadding="0" cellspacing="0" >
													<tbody>
														<tr>
															<th scope="col" height="29"><img
																src="${contextPath}/images/eryuan/laborUnion/05.jpg" usemap="#Map"
																height="27" width="413" border="0" />
																<map id="Map" name="Map">
																	<area href="${contextPath}/labor/union/content/list/channelId/54/page/1" coords="356,6,403,24" shape="rect">
																</map>
																</th>
														</tr>
														<tr>
															<th scope="col" align="left" height="198" valign="top">
															<table width="100%" border="0" cellpadding="6"
																cellspacing="0">
																<tbody>
																	<tr>
																		<th scope="col" class="hei" align="left">
																		<table width="100%" border="0" cellpadding="2"
																			cellspacing="0">
																			<tbody>
																			<!-- 工会动态 start -->
																				<c:forEach items="${dynamicLaborUnionList }" var="dynamicLaborUnionList">
																					<tr>
																						<td height="25">
																							<font style="font-size: 9pt" color="#000000">·&nbsp;</font> 
																							<a href="${contextPath}/labor/union/content/detail/contentId/${dynamicLaborUnionList.id }" target="_blank" class="hei12"> 
																								<font color="#454545"><c:out value="${dynamicLaborUnionList.title }"></c:out></font> 
																							</a>
																						</td>
																						<td></td>
																						<td align="right"><font style="font-size: 9pt" color="999999"><fmt:formatDate  value="${dynamicLaborUnionList.createDate }" pattern="yyyy.MM.dd" /></font></td>
																					</tr>
																				</c:forEach>
																			<!-- 工会动态 end -->
																			</tbody>
																		</table>
																		</th>
																	</tr>
																</tbody>
															</table>
															</th>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" valign="top" width="3"
										background="${contextPath}/images/eryuan/laborUnion/04.jpg"><img
										src="${contextPath}/images/eryuan/laborUnion/04.jpg" height="6" width="3" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" align="right" height="5" valign="top"><img
							src="${contextPath}/images/eryuan/laborUnion/02.jpg" height="5" width="693" /></th>
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
<!-- 
<table align="center" height="100" width="960" border="0"
	cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td class="hei" align="left" valign="top">
			<div align="center">
			<table id="tableasdaDF1" width="100%" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td style="font-size: 9pt; line-height: 150%" align="center">
							<a href="javascript:void(0)" target="_blank" title="党建图片"> 
								<img src="${contextPath}/images/eryuan/2011123105754528.jpg" height="100" width="960" border="0" /> 
							</a>
						</td>
						<td align="left" valign="top"></td>
					</tr>
				</tbody>
			</table>
			</div>
			</td>
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
 -->
<table align="center" width="960" border="0" cellpadding="0"
	cellspacing="0">
	<tbody>
		<tr>
			<th scope="col" align="left" valign="top">
			<table height="2" width="100%" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<th scope="col"></th>
					</tr>
				</tbody>
			</table>
			<table width="257" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" width="257">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/37-1.jpg" height="37"
										width="6" /></th>
									<th scope="col" align="right" valign="middle"
										background="${contextPath}/images/eryuan/laborUnion/37-2.jpg">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="80%">
												<table width="100" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="center" width="27">
																<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5" />
															</th>
															<th class="lu14" scope="col" align="left" width="172">
																<strong><font color="#000000">先进表彰</font></strong>
															</th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="left" width="20%"><a href="${contextPath}/labor/union/content/list/channelId/55/page/1"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_401.jpg"
													height="11" width="39" border="0" /></a></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" valign="bottom" width="4"><img
										src="${contextPath}/images/eryuan/laborUnion/37-3.jpg" height="35"
										width="4" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="198" valign="top"
							background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_32.jpg">
						<table height="192" width="100%" border="0" cellpadding="6" cellspacing="0">
							<tbody>
								<tr>
									<td class="hei" scope="col" align="center" valign="top">
										
										<table width="100%" border="0" cellpadding="6" cellspacing="0">
											<tbody>
												<tr>
													<td class="hei" scope="col" align="left" height="90">
													<table width="100%" border="0" cellpadding="2" cellspacing="0">
														<tbody>
														<!-- 先进表彰 start -->
															<c:forEach items="${praiseList }" var="praiseList">
																<tr>
																	<td height="25"><font style="font-size: 9pt"
																		color="#000000">·&nbsp;</font><a href="${contextPath}/labor/union/content/detail/contentId/${praiseList.id }" target="_blank"
																		class="hei12"><font color="#454545"><c:out value="${praiseList.title }"/></font></a></td>
																	<td></td>
																	<td></td>
																</tr>
															</c:forEach>
														<!-- 先进表彰 end -->
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
						</th>
					</tr>
					<tr>
						<th scope="col" height="">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg" height="3"
										width="3" /></th>
									<th scope="col"
										background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg" height="3"
										width="3" /></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg" height="3"
										width="3" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>
			</th>
			<th scope="col" align="right" valign="top">
			<table width="694" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" align="left">
						<table width="426" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" valign="middle" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/37-1.jpg" height="37"
													width="6" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/laborUnion/37-2.jpg">
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="left" width="83%">
															<table width="140" border="0" cellpadding="0"
																cellspacing="0">
																<tbody>
																	<tr>
																		<th scope="col" align="center" width="27">
																			<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5" />
																		</th>
																		<th class="lu14" scope="col" align="left" width="172">
																			<strong><font color="#000000">员工发展与关怀</font></strong>
																		</th>
																	</tr>
																</tbody>
															</table>
															</th>
															<th scope="col" align="left" width="17%"><a href="${contextPath}/labor/union/content/list/channelId/56/page/1"><img
																src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_401.jpg"
																height="11" width="39" border="0" /></a></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" valign="bottom" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/37-3.jpg" height="35"
													width="4" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
								<tr>
									<th scope="col" height="200" valign="top"
										background="${contextPath}/images/eryuan/laborUnion/zjbg.jpg">
										
											<table width="100%" border="0" cellpadding="6" cellspacing="0">
											<tbody>
												<tr>
													<td class="hei" scope="col" align="left" height="90">
													<table width="100%" border="0" cellpadding="2" cellspacing="0">
														<tbody>
														<!-- 员工发展与关怀 start -->
															<c:forEach items="${careList }" var="careList">
																<tr>
																	<td height="25"><font style="font-size: 9pt"
																		color="#000000">·&nbsp;</font><a href="${contextPath}/labor/union/content/detail/contentId/${careList.id }" target="_blank"
																		class="hei12"><font color="#454545"><c:out value="${careList.title }"/></font></a></td>
																	<td></td>
																	<td></td>
																</tr>
															</c:forEach>
														<!-- 员工发展与关怀 end -->
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
									<table width="426" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg"
													height="3" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"
													height="3" width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg"
													height="3" width="3" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
							</tbody>
						</table>
						</th>
						<th scope="col" align="right">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_93.jpg"
													height="30" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_95.jpg">
												<table height="25" width="250" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="center" width="27"><img
																src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg"
																height="13" width="5" /></th>
															<th class="lu14" scope="col" align="left" width="167"><strong><font color="#000000">职工文化</font></strong></th>
															<th scope="col" align="left" width="56"><a href="${contextPath}/labor/union/content/list/channelId/57/page/1"><img
																src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_401.jpg"
																height="11" width="39" border="0" /></a></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_98.jpg"
													height="30" width="3" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
								<tr>
									<th scope="col" height="205" valign="top" width="257"
										background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_32.jpg">
										
										<table width="100%" border="0" cellpadding="6" cellspacing="0">
											<tbody>
												<tr>
													<td class="hei" scope="col" align="left" height="90">
													<table width="100%" border="0" cellpadding="2" cellspacing="0">
														<tbody>
														<!-- 职工文化 start -->
															<c:forEach items="${knowledgeList }" var="knowledgeList">
																<tr>
																	<td height="25"><font style="font-size: 9pt"
																		color="#000000">·&nbsp;</font><a href="${contextPath}/labor/union/content/detail/contentId/${knowledgeList.id }" target="_blank"
																		class="hei12"><font color="#454545"><c:out value="${knowledgeList.title }"/></font></a></td>
																	<td></td>
																	<td></td>
																</tr>
															</c:forEach>
														<!-- 职工文化 end -->
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
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg"
													height="3" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"
													height="3" width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg"
													height="3" width="3" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>
			</th>
		</tr>
	</tbody>
</table>
<table align="center" width="960" border="0" cellpadding="0"
	cellspacing="0">
	<tbody>
		<tr>
			<th scope="col" align="left" valign="top">
			<table height="2" width="100%" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<th scope="col"></th>
					</tr>
				</tbody>
			</table>
			<table width="257" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" width="257">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/37-1.jpg" height="37"
										width="6" /></th>
									<th scope="col" align="right" valign="middle"
										background="${contextPath}/images/eryuan/laborUnion/37-2.jpg">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="80%">
												<table width="100" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="center" width="27">
																<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5" />
															</th>
															<th class="lu14" scope="col" align="left" width="172">
																<strong><font color="#000000">法律法规</font></strong>
															</th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="left" width="20%"><a href="${contextPath}/labor/union/content/list/channelId/58/page/1"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_401.jpg"
													height="11" width="39" border="0" /></a></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" valign="bottom" width="4"><img
										src="${contextPath}/images/eryuan/laborUnion/37-3.jpg" height="35"
										width="4" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="198" valign="top"
							background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_32.jpg">
						<table height="192" width="100%" border="0" cellpadding="6"
							cellspacing="0">
							<tbody>
								<tr>
									<td class="hei" scope="col" align="center" valign="top">
										
										<table width="100%" border="0" cellpadding="6" cellspacing="0">
											<tbody>
												<tr>
													<td class="hei" scope="col" align="left" height="90">
													<table width="100%" border="0" cellpadding="2" cellspacing="0">
														<tbody>
														<!-- 法律法规 start -->
															<c:forEach items="${lawList }" var="lawList">
																<tr>
																	<td height="25"><font style="font-size: 9pt"
																		color="#000000">·&nbsp;</font><a href="${contextPath}/labor/union/content/detail/contentId/${lawList.id }" target="_blank"
																		class="hei12"><font color="#454545"><c:out value="${lawList.title }"/></font></a></td>
																	<td></td>
																	<td></td>
																</tr>
															</c:forEach>
														<!-- 法律法规 end -->
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
						</th>
					</tr>
					<tr>
						<th scope="col" height="">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="left" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg" height="3"
										width="3" /></th>
									<th scope="col"
										background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg" height="3"
										width="3" /></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg" height="3"
										width="3" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>
			</th>
			<th scope="col" align="right" valign="top">
			<table width="694" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" align="left">
						<table width="426" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" valign="middle" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/37-1.jpg" height="37"
													width="6" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/laborUnion/37-2.jpg">
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="left" width="83%">
															<table width="100" border="0" cellpadding="0"
																cellspacing="0">
																<tbody>
																	<tr>
																		<th scope="col" align="center" width="27">
																			<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5" />
																		</th>
																		<th class="lu14" scope="col" align="left" width="172">
																			<strong><font color="#000000">精彩图片</font></strong>
																		</th>
																	</tr>
																</tbody>
															</table>
															</th>
															<th scope="col" align="left" width="17%"><a href="${contextPath}/labor/union/content/list/channelId/59/page/1"><img
																src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_401.jpg"
																height="11" width="39" border="0" /></a></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" valign="bottom" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/37-3.jpg" height="35"
													width="4" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
								<tr>
									<th scope="col" height="200" valign="top"
										background="${contextPath}/images/eryuan/laborUnion/zjbg.jpg">
									<marquee scrollamount="4" onmouseover="this.stop()" onmouseout="this.start()" direction="left" width="350">
									<table border="0" cellpadding="6"
										cellspacing="0">
											<!--
											<tr>
												<th scope="col" align="center" height="94" valign="middle">
													<a id="wonderfulPicHref" href="">
														<img id="wonderfulPicImg" src="" title="" height="185" width="388" border="0" />
													</a>
												</th>
											<tr>
											-->
											<!-- 精彩图片 start -->
											<tr>
												<c:forEach items="${wonderfulPicList }" var="wonderfulPicList">
												<td scope="col" align="center" valign="middle">
													<a href="${contextPath}/labor/union/content/detail/contentId/${wonderfulPicList.id }">
														<img src="${contextPath}${wonderfulPicList.image }" title="${wonderfulPicList.title }" height="155" width="230" border="0" />
													</a>
													<div>${wonderfulPicList.title }</div>
												</td>
												</c:forEach>
											<tr>
											<!-- 精彩图片 end -->
									</table>
									</marquee>
									</th>
								</tr>
								<tr>
									<th scope="col" height="">
									<table width="426" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg"
													height="3" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"
													height="3" width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg"
													height="3" width="3" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
							</tbody>
						</table>
						</th>
						<th scope="col" align="right">
						<table width="257" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" width="257">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/37-1.jpg" height="37"
													width="6" /></th>
												<th scope="col" align="right" valign="middle"
													background="${contextPath}/images/eryuan/laborUnion/37-2.jpg">
												<table width="100%" border="0" cellpadding="0" cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="left" width="80%">
															<table width="100" border="0" cellpadding="0"
																cellspacing="0">
																<tbody>
																	<tr>
																		<th scope="col" align="center" width="27">
																			<img src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_100.jpg" height="13" width="5" />
																		</th>
																		<th class="lu14" scope="col" align="left" width="172">
																			<strong><font color="#000000">联系我们</font></strong>
																		</th>
																	</tr>
																</tbody>
															</table>
															</th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" valign="bottom" width="4"><img
													src="${contextPath}/images/eryuan/laborUnion/37-3.jpg" height="35"
													width="4" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
								<tr>
									<th scope="col" height="198" valign="top"
										background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_32.jpg">
									<table height="192" width="100%" border="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="hei" scope="col" align="center" valign="top">
													
													<table width="100%" border="0" cellspacing="0">
														<tbody>
															<tr>
																<td class="hei" scope="col" align="left" height="90">
																<table width="100%" border="0" cellspacing="0">
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
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_106.jpg" height="3"
													width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_107.jpg" height="3"
													width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/laborUnion/cfsdeyy_109.jpg" height="3"
													width="3" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>
			</th>
		</tr>
	</tbody>
</table>
<script type="text/javascript">
	$('#hotpic').liteNav(5000);
	
	var staticVariable = 0;
	var picArray = new Array(21);
	function picShow(){/*
		$("#wonderfulPicHref").fadeOut("slow", function(){
			$("#wonderfulPicHref").attr("href","${contextPath}/labor/union/content/detail/contentId/" + picArray[staticVariable-1]);
			$("#wonderfulPicImg").attr("src", "${contextPath}" + picArray[staticVariable]);
			$("#wonderfulPicImg").attr("title",  picArray[staticVariable+1]);
			if(staticVariable < 23){
				staticVariable = staticVariable + 3;
			}else{
				staticVariable = 2;
			}
		});
		$("#wonderfulPicHref").fadeIn();
		*/
	}
	
	$(function(){
		/*
		picArray[1] = "${wonderfulPicList[0].id }";
		picArray[2] = "${wonderfulPicList[0].image }";
		picArray[3] = "${wonderfulPicList[0].title } }";
		
		picArray[4] = "${wonderfulPicList[1].id }";
		picArray[5] = "${wonderfulPicList[1].image }";
		picArray[6] = "${wonderfulPicList[1].title } }";
		
		picArray[7] = "${wonderfulPicList[2].id }";
		picArray[8] = "${wonderfulPicList[2].image }";
		picArray[9] = "${wonderfulPicList[2].title } }";
		
		picArray[10] = "${wonderfulPicList[3].id }";
		picArray[11] = "${wonderfulPicList[3].image }";
		picArray[12] = "${wonderfulPicList[3].title } }";
		
		picArray[13] = "${wonderfulPicList[4].id }";
		picArray[14] = "${wonderfulPicList[4].image }";
		picArray[15] = "${wonderfulPicList[4].title } }";
		
		picArray[16] = "${wonderfulPicList[5].id }";
		picArray[17] = "${wonderfulPicList[5].image }";
		picArray[18] = "${wonderfulPicList[5].title } }";
		
		picArray[19] = "${wonderfulPicList[6].id }";
		picArray[20] = "${wonderfulPicList[6].image }";
		picArray[21] = "${wonderfulPicList[6].title } }";
		
		picArray[22] = "${wonderfulPicList[7].id }";
		picArray[23] = "${wonderfulPicList[7].image }";
		picArray[24] = "${wonderfulPicList[7].title } }";
		
		staticVariable = 2; */
		//setInterval("picShow()",3000);
	});
</script>