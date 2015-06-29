<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="cssBasePath" value="${contextPath}/css" />
<c:set var="scriptBasePath" value="${contextPath}/script" />
<c:set var="imagesBasePath" value="${contextPath}/images" />

<link rel="stylesheet" type="text/css" href="${contextPath}/css/eryuan/goodnav.css" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/eryuan/pic_scroll.css" />
<script language="javascript" type="text/javascript" src="${contextPath}/script/eryuan/jquery.litenav.js"></script>
<script language="javascript" type="text/javascript" src="${contextPath}/script/eryuan/pic_scroll.js"></script>
<script type="text/javascript">
stepcarousel.setup({
	galleryid: 'mygallery', //id of carousel DIV
	beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
	panelclass: 'panel', //class of panel DIVs each holding content
	panelbehavior: {speed:300, wraparound:false, persist:true},
	autostep: {enable:true, moveby:4, pause:4000},
	defaultbuttons: {enable: true, moveby: 4, leftnav: ['${contextPath}/images/eryuan/butt-left.gif', 0, 64], rightnav: ['${contextPath}/images/eryuan/butt-right.gif', 11, 64]},
	statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
	contenttype: ['inline'], //content setting ['inline'] or ['external', 'path_to_external_file']
	oninit:function(){
	isloaded=true
	document.getElementById('displaycssbelt').style.visibility="visible";
	}
});
stepcarousel.setup({
	galleryid: 'mygallery1', //id of carousel DIV
	beltclass: 'belt1', //class of inner "belt" DIV containing all the panel DIVs
	panelclass: 'panel1', //class of panel DIVs each holding content
	panelbehavior: {speed:300, wraparound:false, persist:true},
	autostep: {enable:true, moveby:4, pause:4000},
	defaultbuttons: {enable: true, moveby: 4, leftnav: ['${contextPath}/images/eryuan/butt-left.gif', 0, 64], rightnav: ['${contextPath}/images/eryuan/butt-right.gif', 11, 64]},
	statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
	contenttype: ['inline'], //content setting ['inline'] or ['external', 'path_to_external_file']
	oninit:function(){
	isloaded=true
	document.getElementById('displaycssbelt1').style.visibility="visible";
	}
});
</script>
<style>
.nobreak {
   display: block;
   width: 60px;
   height:20px;
   clear: none;
   float: left;
   overflow: hidden;
   page-break-before: always;
   page-break-after: always;
   padding-left: 3px;
   overflow: hidden;
  }
</style>
<!-- ---------------------------------悬浮窗开始--------------------------------- -->
<div id="oImg" style="position: absolute; z-index: 100; top: 0; left: 0; width: 459px; height: 183px; background: #FF9900; color: #FFFFFF;">
	<a href="${contextPath}/content/list/channelId/271/page/1"> 
		<img src="${contextPath}/images/eryuan/xuanFuChuang.jpg" width="459px" height="183px" /> 
	</a>
</div> 
<!-- ---------------------------------悬浮窗结束--------------------------------- -->
<table align="center" height="231" width="960" border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<th scope="col"><img src="${contextPath}/images/eryuan/INDEX_TOP.png" /></th>
		</tr>
	</tbody>
</table>
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
										<img src="${contextPath}/images/eryuan/cfsdeyy_93.gif" height="30" width="3" />
									</th>
									<th scope="col" background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
										<table height="30" width="250" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<th scope="col" align="center" width="27">
														<img src="${contextPath}/images/eryuan/cfsdeyy_100.gif" height="13" width="5" />
													</th>
													<th class="lu14" scope="col" align="left" width="172">
														<strong>医院公告</strong>
													</th>
													<th scope="col" align="left" width="51">
														<a href="${contextPath}/content/list/channelId/20/page/1" ><img src="${contextPath}/images/eryuan/cfsdeyy_401.gif" height="11" width="39" border="0" /></a>
													</th>
												</tr>
											</tbody>
										</table>
									</th>
									<th scope="col" align="right" width="3">
										<img src="${contextPath}/images/eryuan/cfsdeyy_98.gif" height="30" width="3" />
									</th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<td scope="col" height="200" valign="top" background="${contextPath}/images/eryuan/cfsdeyy_32.gif">
							<table width="100%" border="0" cellpadding="6" cellspacing="0">
								<tbody>
									<tr>
										<td scope="col" class="hei" align="left">
											<marquee id="jianjie" direction="up" onmouseover="jianjie.stop()" onmouseout="jianjie.start()" scrollamount="4" height="200">
												<table width="100%" border="0" cellpadding="2" cellspacing="0">
													<tbody>
													<!-- 医院公告 -->
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
										src="${contextPath}/images/eryuan/cfsdeyy_106.gif" height="3"
										width="3" /></th>
									<th scope="col"
										background="${contextPath}/images/eryuan/cfsdeyy_107.gif"></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_109.jpg" height="3"
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
							src="${contextPath}/images/eryuan/01.jpg" height="5" width="693" />
						</th>
					</tr>
					<tr>
						<th scope="col" align="right" valign="top">
						<table height="228" width="693" border="0" cellpadding="0" cellspacing="0" style="padding-left: 10px;">
							<tbody>
								<tr>
									<th scope="col" align="left" valign="top" width="4" background="${contextPath}/images/eryuan/03.jpg" >
										<img src="${contextPath}/images/eryuan/03.jpg" height="12" width="6" />
									</th>
									<th scope="col" align="left" valign="top" bgcolor="E5F7F4">
									<table height="228" width="684" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td scope="col" align="center" valign="middle" width="272">
												
												
												<!-- 焦点图片 开始 -->
												<div id="hotpic">
													<div id="NewsPic">
														<c:forEach items="${newsPicList }" var="newsPicList">
												            <a style="visibility: visible; display: block;" target="_blank" href="${contextPath}/content/detail/contentId/${newsPicList.id }">
																<img class="Picture" src="${contextPath}${newsPicList.image }" style="width: 270px; height: 215px;" alt="" title="${newsPicList.title }"/>
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
												<td scope="col" align="left" height="235" valign="top"
													width="413">
												<table height="227" width="413" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" height="29"><img
																src="${contextPath}/images/eryuan/05.jpg" usemap="#Map"
																height="27" width="413" border="0" />
																<map id="Map" name="Map">
																	<area href="${contextPath}/content/list/channelId/21/page/1" coords="356,6,403,24" shape="rect">
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
																			<!-- 医院动态 -->
																				<c:forEach items="${newsList }" var="newsList">
																					<tr>
																						<td height="25">
																							<font style="font-size: 9pt" color="#000000">·&nbsp;</font> 
																							<a href="${contextPath}/content/detail/contentId/${newsList.id }" target="_blank" class="hei12"> 
																								<font color="#454545"><c:out value="${newsList.title }"></c:out></font> 
																							</a>
																						</td>
																						<td></td>
																						<td align="right"><font style="font-size: 9pt" color="999999"><fmt:formatDate  value="${newsList.createDate }" pattern="yyyy.MM.dd" /></font></td>
																					</tr>
																				</c:forEach>
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
										background="${contextPath}/images/eryuan/04.jpg"><img
										src="${contextPath}/images/eryuan/04.jpg" height="6" width="3" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" align="right" height="5" valign="top"><img
							src="${contextPath}/images/eryuan/02.jpg" height="5" width="693" /></th>
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
							<a href="${contextPath}/content/list/channelId/272/page/1" title="创建全国文明城市"> 
								<!-- <img src="${contextPath}/images/eryuan/2011123105754528.jpg" height="100" width="960" border="0" /> --> 
								<img src="${contextPath}/images/eryuan/wenMingCheng.jpg" height="100" width="960" border="0" /> 
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
										src="${contextPath}/images/eryuan/37-1.gif" height="37"
										width="6" /></th>
									<th scope="col" align="right" valign="bottom"
										background="${contextPath}/images/eryuan/37-2.gif">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="80%">
												<table width="100" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th class="bai14" scope="col" align="center" height="37"
																background="${contextPath}/images/eryuan/cfsdeyy_37.gif"><strong>视频专区</strong></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="left" width="20%"><a href="${contextPath}/content/list/channelId/25/page/1"><img
													src="${contextPath}/images/eryuan/cfsdeyy_401.gif"
													height="11" width="39" border="0" /></a></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" valign="bottom" width="4"><img
										src="${contextPath}/images/eryuan/37-3.gif" height="35"
										width="4" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<th scope="col" height="198" valign="top"
							background="${contextPath}/images/eryuan/cfsdeyy_32.gif">
						<table height="192" width="100%" border="0" cellpadding="6"
							cellspacing="0">
							<tbody>
								<tr>
									<td class="hei" scope="col" align="center" valign="middle">
										<!-- <embed src="http://static.youku.com/v/swf/qplayer.swf?winType=adshow&amp;VideoIDS=XNTU3NTIwNzI4 &amp;isAutoPlay=false&amp;isShowRelatedVideo=false" wmode="transparent" width="245" height="182" align="center" border="0" /> -->
										${videoContent.content }
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
										src="${contextPath}/images/eryuan/cfsdeyy_106.gif" height="3"
										width="3" /></th>
									<th scope="col"
										background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
										src="${contextPath}/images/eryuan/cfsdeyy_107.gif" height="3"
										width="3" /></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_109.jpg" height="3"
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
													src="${contextPath}/images/eryuan/37-1.gif" height="37"
													width="6" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/37-2.gif">
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="left" width="83%">
															<table width="100" border="0" cellpadding="0"
																cellspacing="0">
																<tbody>
																	<tr>
																		<th class="bai14" scope="col" align="center"
																			height="37"
																			background="${contextPath}/images/eryuan/cfsdeyy_37.gif"><strong>科室特色</strong></th>
																	</tr>
																</tbody>
															</table>
															</th>
															<th scope="col" align="left" width="17%"><a href="${contextPath}/content/list/dept/channelId/27/page/1"><img
																src="${contextPath}/images/eryuan/cfsdeyy_401.gif"
																height="11" width="39" border="0" /></a></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" valign="bottom" width="3"><img
													src="${contextPath}/images/eryuan/37-3.gif" height="35"
													width="4" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
								<tr>
									<th scope="col" height="200" valign="top"
										background="${contextPath}/images/eryuan/zjbg.gif">
									<table height="186" width="100%" border="0" cellpadding="6"
										cellspacing="0">
										<tbody>
											<tr>
											<!-- 科室特色 start -->
												<th scope="col" align="center" height="94" valign="middle">
													<a href="${contextPath}/content/detail/contentId/466">
														<img src="${contextPath}/images/eryuan/cfsdeyy_28.gif" height="82" width="91" border="0" />
													</a>
												</th>
												<th scope="col" align="center" valign="middle">
													<a href="${contextPath}/content/detail/contentId/467">
														<img src="${contextPath}/images/eryuan/cfsdeyy_30.gif" height="82" width="92" border="0" />
													</a>
												</th>
												<th scope="col" align="center" valign="middle">
													<a href="${contextPath}/content/detail/contentId/443">
														<img src="${contextPath}/images/eryuan/cfsdeyy_520.gif" height="82" width="90" border="0" />
													</a>
												</th>
												<th scope="col" align="center" valign="middle">
													<a href="${contextPath}/content/detail/contentId/446">
														<img src="${contextPath}/images/eryuan/cfsdeyy_34.gif" height="82" width="91" border="0" />
													</a>
												</th>
											</tr>
											<tr>
												<th scope="col" align="center" valign="middle">
													<a href="${contextPath}/content/detail/contentId/444">
														<img src="${contextPath}/images/eryuan/cfsdeyy_40.gif" height="80" width="91" border="0" />
													</a>
												</th>
												<th scope="col" align="center" valign="middle">
													<a href="${contextPath}/content/detail/contentId/469">
														<img src="${contextPath}/images/eryuan/cfsdeyy_41.gif" height="80" width="92" border="0" />
													</a>
												</th>
												<th scope="col" align="center" valign="middle">
													<a href="${contextPath}/content/detail/contentId/574">
														<img src="${contextPath}/images/eryuan/cfsdeyy_42.gif" height="80" width="90" border="0" />
													</a>
												</th>
												<th scope="col" align="center" valign="middle">
													<!-- <a href="${contextPath}/content/detail/contentId/475"> -->
													<a href="http://fck.cfdeyy.com/">
														<img src="${contextPath}/images/eryuan/cfsdeyy_43.gif" height="80" width="91" border="0" />
													</a>
												</th>
											</tr>
											<!-- 科室特色 end -->
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
													src="${contextPath}/images/eryuan/cfsdeyy_106.gif"
													height="3" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
													src="${contextPath}/images/eryuan/cfsdeyy_107.gif"
													height="3" width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/cfsdeyy_109.jpg"
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
													src="${contextPath}/images/eryuan/cfsdeyy_93.gif"
													height="30" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
												<table height="25" width="250" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="center" width="27"><img
																src="${contextPath}/images/eryuan/cfsdeyy_100.gif"
																height="13" width="5" /></th>
															<th class="lu14" scope="col" align="left" width="167"><strong>就诊指南</strong></th>
															<th scope="col" align="left" width="56"><a href="${contextPath}/content/list/channelId/34/page/1"><img
																src="${contextPath}/images/eryuan/cfsdeyy_401.gif"
																height="11" width="39" border="0" /></a></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/cfsdeyy_98.gif"
													height="30" width="3" /></th>
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
													src="${contextPath}/images/eryuan/cfsdeyy_45.gif"
													height="28" width="243" border="0" /></a></th>
											</tr>
											<tr>
												<th scope="col" align="center" valign="bottom"><a
													href="${contextPath}/map"><img
													src="${contextPath}/images/eryuan/cfsdeyy_57.gif"
													height="28" width="243" border="0" /></a></th>
											</tr>
											<tr>
												<th scope="col" align="center" valign="bottom"><a
													href="${contextPath}/content/detail/contentId/159"><img
													src="${contextPath}/images/eryuan/cfsdeyy_59.gif"
													height="28" width="243" border="0" /></a></th>
											</tr>
											<tr>
												<th scope="col" align="center" valign="bottom"><a
													href="${contextPath}/content/detail/contentId/160"><img
													src="${contextPath}/images/eryuan/cfsdeyy_65.gif"
													height="28" width="243" border="0" /></a></th>
											</tr>
											<tr>
												<th scope="col" align="center" valign="bottom"><a
													href="${contextPath}/content/detail/contentId/161"><img
													src="${contextPath}/images/eryuan/cfsdeyy_71.gif"
													height="28" width="243" border="0" /></a></th>
											</tr>
											<tr>
												<th scope="col" align="center" valign="bottom"><a
													href="${contextPath}/content/list/channelId/82/page/1"><img
													src="${contextPath}/images/eryuan/cfsdeyy_73.gif"
													height="28" width="243" border="0" /></a></th>
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
													src="${contextPath}/images/eryuan/cfsdeyy_106.gif"
													height="3" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
													src="${contextPath}/images/eryuan/cfsdeyy_107.gif"
													height="3" width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/cfsdeyy_109.jpg"
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
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<th scope="col" height="9"></th>
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
										src="${contextPath}/images/eryuan/37-1.gif" height="37"
										width="6" /></th>
									<th scope="col" align="right" valign="bottom"
										background="${contextPath}/images/eryuan/37-2.gif">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="80%">
												<table width="100" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th class="bai14" scope="col" align="center" height="37"
																background="${contextPath}/images/eryuan/cfsdeyy_37.gif"><strong>党建园地</strong></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="left" width="20%"><a href="${contextPath}/content/list/channelId/23/page/1"><img
													src="${contextPath}/images/eryuan/cfsdeyy_401.gif"
													height="11" width="39" border="0" /></a></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" valign="bottom" width="4"><img
										src="${contextPath}/images/eryuan/37-3.gif" height="35"
										width="4" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<td scope="col" valign="top"
							background="${contextPath}/images/eryuan/cfsdeyy_32.gif">
						<table width="100%" border="0" cellpadding="6" cellspacing="0">
							<tbody>
								<tr>
									<td class="hei" scope="col" align="left" height="90">
									<table width="100%" border="0" cellpadding="2" cellspacing="0">
										<tbody>
										<!-- 党建园地 start -->
											<c:forEach items="${partyList }" var="partyList">
												<tr>
													<td height="25"><font style="font-size: 9pt"
														color="#000000">·&nbsp;</font><a href="${contextPath}/content/detail/contentId/${partyList.id }" target="_blank"
														class="hei12"><font color="#454545"><c:out value="${partyList.title }"/></font></a></td>
													<td></td>
													<td></td>
												</tr>
											</c:forEach>
										<!-- 党建园地 end -->
										</tbody>
									</table>
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
										src="${contextPath}/images/eryuan/cfsdeyy_106.gif" height="3"
										width="3" /></th>
									<th scope="col"
										background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
										src="${contextPath}/images/eryuan/cfsdeyy_107.gif" height="3"
										width="3" /></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_109.jpg" height="3"
										width="3" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
				</tbody>
			</table>
			<table width="100" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td height="8"></td>
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
										src="${contextPath}/images/eryuan/37-1.gif" height="37"
										width="6" /></th>
									<th scope="col" align="right" valign="bottom"
										background="${contextPath}/images/eryuan/37-2.gif">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="80%">
												<table width="100" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th class="bai14" scope="col" align="center" height="37"
																background="${contextPath}/images/eryuan/cfsdeyy_37.gif"><strong>健康科普</strong></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="left" width="20%"><a href="${contextPath}/content/list/channelId/24/page/1"><img
													src="${contextPath}/images/eryuan/cfsdeyy_401.gif"
													height="11" width="39" border="0" /></a></th>
											</tr>
										</tbody>
									</table>
									</th>
									<th scope="col" align="right" valign="bottom" width="4"><img
										src="${contextPath}/images/eryuan/37-3.gif" height="35"
										width="4" /></th>
								</tr>
							</tbody>
						</table>
						</th>
					</tr>
					<tr>
						<td scope="col" valign="top"
							background="${contextPath}/images/eryuan/cfsdeyy_32.gif">
						<table width="100%" border="0" cellpadding="6" cellspacing="0">
							<tbody>
								<tr>
									<td class="hei" scope="col" align="left" height="90">
									<table width="100%" border="0" cellpadding="2" cellspacing="0">
										<tbody>
										<!-- 健康科普 start -->
											<c:forEach items="${healthyList }" var="healthyList">
												<tr>
													<td height="25"><font style="font-size: 9pt"
														color="#000000">·&nbsp;</font><a href="${contextPath}/content/detail/contentId/${healthyList.id }" target="_blank"
														class="hei12"><font color="#454545"><c:out value="${healthyList.title }" /></font></a></td>
													<td></td>
													<td></td>
												</tr>
											</c:forEach>
										<!-- 健康科普 end -->
										</tbody>
									</table>
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
										src="${contextPath}/images/eryuan/cfsdeyy_106.gif" height="3"
										width="3" /></th>
									<th scope="col"
										background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
										src="${contextPath}/images/eryuan/cfsdeyy_107.gif" height="3"
										width="3" /></th>
									<th scope="col" align="right" width="3"><img
										src="${contextPath}/images/eryuan/cfsdeyy_109.jpg" height="3"
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
													src="${contextPath}/images/eryuan/37-1.gif" height="37"
													width="6" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/37-2.gif">
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="left" width="83%">
															<table width="100" border="0" cellpadding="0"
																cellspacing="0">
																<tbody>
																	<tr>
																		<th class="bai14" scope="col" align="center"
																			height="37"
																			background="${contextPath}/images/eryuan/cfsdeyy_37.gif"><strong>专家介绍</strong></th>
																	</tr>
																</tbody>
															</table>
															</th>
															<th scope="col" align="left" width="17%"><a href="${contextPath}/content/list/special/channelId/69/page/1"><img
																src="${contextPath}/images/eryuan/cfsdeyy_401.gif"
																height="11" width="39" border="0" /></a></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" valign="bottom" width="3"><img
													src="${contextPath}/images/eryuan/37-3.gif" height="35"
													width="4" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
								<tr>
									<th scope="col" height="240" valign="top" background="${contextPath}/images/eryuan/zjbg.gif">
									<marquee direction="up" onmouseover="stop()" onmouseout="start()" scrollamount="4" height="240">
									<table width="100%" border="0" cellpadding="6" cellspacing="0">
										<tbody id="expertBody">
											<!-- 专家介绍 start -->
											<!-- 
											<tr>
												<td width="136" height="110">
													<a title="${expertList[status.index].title }" target="_blank" href="${contextPath}/content/detail/contentId/expertList1.id"></a>
													<table width="110" cellspacing="0" cellpadding="0" border="0">
											             <tbody><tr>
											               <td width="36"><a title="asdasdasd" target="_blank" href="${contextPath}/content/detail/contentId/expertList1.id"><img width="80" height="100" border="0" src="contextPath expertList1.image" bordercolor="#ffffff" style="border-collapse: collapse"></a></td>
											               <td width="160" valign="top" align="left"><table width="95" cellspacing="0" cellpadding="3" border="0">
											                 <tbody><tr>
											                   <td width="89" valign="top" align="left" class="hei">asdasd</td></tr>
											               </tbody></table>
											                 </td>
											             </tr>
											           </tbody></table><br/>
												</td>
												<td width="136" height="110">
													<a title="${expertList[status.index + 1].title }" target="_blank" href="${contextPath}/content/detail/contentId/expertList1.id"></a>
													<table width="110" cellspacing="0" cellpadding="0" border="0">
											             <tbody><tr>
											               <td width="36"><a title="asdasdasd" target="_blank" href="${contextPath}/content/detail/contentId/expertList1.id"><img width="80" height="100" border="0" src="contextPath expertList1.image" bordercolor="#ffffff" style="border-collapse: collapse"></a></td>
											               <td width="160" valign="top" align="left"><table width="95" cellspacing="0" cellpadding="3" border="0">
											                 <tbody><tr>
											                   <td width="89" valign="top" align="left" class="hei">asdasd</td></tr>
											               </tbody></table>
											                 </td>
											             </tr>
											           </tbody></table><br/>
												</td>
											</tr>
											 -->
											<!-- 专家介绍 end -->
										</tbody>
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
													src="${contextPath}/images/eryuan/cfsdeyy_106.gif"
													height="3" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
													src="${contextPath}/images/eryuan/cfsdeyy_107.gif"
													height="3" width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/cfsdeyy_109.jpg"
													height="3" width="3" /></th>
											</tr>
										</tbody>
									</table>
									</th>
								</tr>
							</tbody>
						</table>
						</th>
						<td scope="col" align="right">
						<table width="256" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th scope="col">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th scope="col" align="left" width="3"><img
													src="${contextPath}/images/eryuan/cfsdeyy_93.gif"
													height="30" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
												<table height="30" width="250" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<th scope="col" align="center" width="27"><img
																src="${contextPath}/images/eryuan/cfsdeyy_100.gif"
																height="13" width="5" /></th>
															<th class="lu14" scope="col" align="left" valign="middle"
																width="169"><strong>在线咨询</strong></th>
															<th scope="col" align="left" width="54"><a href="${contextPath}/faq/page/1"><img
																src="${contextPath}/images/eryuan/cfsdeyy_401.gif"
																height="11" width="39" border="0" /></a></th>
														</tr>
													</tbody>
												</table>
												</th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/cfsdeyy_98.gif"
													height="30" width="3" /></th>
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
												<td class="hei" scope="col" align="left" height="90">
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
									<table width="100%" border="0" cellpadding="2" cellspacing="0">
										<tbody>
											<tr>
												<td height="90">
												<div align="center"><img
													src="${contextPath}/images/eryuan/qqmail.jpg"
													usemap="#Map2" height="90" width="244" border="0" /> <map
													name="Map2" id="Map2">
													<area shape="rect" coords="52,65,231,87"
														href="mailto:malile_zxh6591@sina.com" />
												</map></div>
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
													src="${contextPath}/images/eryuan/cfsdeyy_106.gif"
													height="3" width="3" /></th>
												<th scope="col"
													background="${contextPath}/images/eryuan/cfsdeyy_107.gif"><img
													src="${contextPath}/images/eryuan/cfsdeyy_107.gif"
													height="3" width="3" /></th>
												<th scope="col" align="right" width="3"><img
													src="${contextPath}/images/eryuan/cfsdeyy_109.jpg"
													height="3" width="3" /></th>
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
<table align="center" width="960" border="0" cellpadding="0"
	cellspacing="0">
	<tbody>
		<tr>
			<th scope="col">
			<table width="960" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" width="3"><img
							src="${contextPath}/images/eryuan/cfsdeyy_93.gif" height="30"
							width="3" /></th>
						<th scope="col"
							background="${contextPath}/images/eryuan/cfsdeyy_95.gif">
						<table height="30" width="955" border="0" cellpadding="0"
							cellspacing="0">
							<tbody>
								<tr>
									<th scope="col" align="center" width="30"><img
										src="${contextPath}/images/eryuan/cfsdeyy_100.gif" height="13"
										width="5" /></th>
									<th class="lu14" scope="col" align="left" valign="middle"
										width="870"><strong>先进设备展示</strong></th>
									<th scope="col" align="left" width="55"><a href="${contextPath}/content/list/channelId/61/page/1"><img
										src="${contextPath}/images/eryuan/cfsdeyy_401.gif" height="11"
										width="39" border="0" /></a></th>
								</tr>
							</tbody>
						</table>
						</th>
						<th scope="col" width="3"><img
							src="${contextPath}/images/eryuan/cfsdeyy_98.gif" height="30"
							width="3" /></th>
					</tr>
				</tbody>
			</table>
			</th>
		</tr>
		<tr>
			<td scope="col" align="left" height="150" valign="top" width="960"
				background="${contextPath}/images/eryuan/06.jpg">
			<table height="146" width="952" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<th scope="col" width="13">&nbsp;</th>
						<th scope="col" align="left" valign="middle" width="939">
						<div id="demo"
							style="OVERFLOW: hidden; WIDTH: 939px; align: left valign ="
							top""="">
						<table valign="top" align="left" height="144" border="0"
							cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td align="left" height="144" valign="top" width="939">
									<table height="144" width="939" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<td id="demo1" align="left" height="144" valign="middle"
													width="939">

												<div id="mygallery" class="stepcarousel">
													<div class="belt" id="displaycssbelt">
													<!-- 先进设备展示 start -->
														<c:forEach items="${deviceList }" var="deviceList">
															<div class="panel">
																<div class="subfeature">
																	<a href="${contextPath}/content/detail/contentId/${deviceList.id }">
																		<img src="${contextPath}${deviceList.image }" alt="${deviceList.title }" class="post-image" width="200" height="150" />
																	</a>
																	<div class="subfeature-txt">
																		<font style="font-size: 9pt;" color="blue"><a href="${contextPath}/content/detail/contentId/${deviceList.id }"><c:out value="${deviceList.title }"/></a></font>
																	</div>
																</div>
															</div>
														</c:forEach>
													<!-- 先进设备展示 end -->
													</div>
												</div>

												</td>
												<td id="demo2" align="left" valign="top" width="840"></td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						</div>
						</th>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
		<tr>
			<th scope="col"><img src="${contextPath}/images/eryuan/07.jpg"
				height="8" width="964" /></th>
		</tr>
	</tbody>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<th scope="col" height="6"></th>
		</tr>
	</tbody>
</table>
<table align="center" height="166" width="964" border="0"
	cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td scope="col" align="left" height="8" valign="top"><img
				src="${contextPath}/images/eryuan/007.jpg" height="8" width="964" /></td>
		</tr>
		<tr>
			<td scope="col" align="center" height="150" valign="middle"
				background="${contextPath}/images/eryuan/06.jpg">
				<table height="144" width="939" border="0" cellpadding="0"
											cellspacing="0">
					<tbody>
						<tr>
							<td id="demo1" align="left" height="144" valign="middle"
								width="939">

							<div id="mygallery1" class="stepcarousel1">
								<div class="belt1" id="displaycssbelt1">
								<!-- 认证 start -->
									<c:forEach items="${brandList }" var="brandList">
										<div class="panel1">
											<div class="subfeature1">
												<a href="${contextPath}/content/detail/contentId/${brandList.id }">
													<img src="${contextPath}${brandList.image }" alt="${brandList.title }" class="post-image" width="200" height="150" />
												</a>
												<div class="subfeature-txt1">
													<font style="font-size: 9pt;" color="blue"><a href="${contextPath}/content/detail/contentId/${brandList.id }"><c:out value="${brandList.title }"/></a></font>
												</div>
											</div>
										</div>
									</c:forEach>
								<!-- 认证 end -->
								</div>
							</div>


							</td>
							<td id="demo2" align="left" valign="top" width="840"></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td scope="col" align="left" height="8" valign="top"><img
				src="${contextPath}/images/eryuan/07.jpg" height="8" width="964" /></td>
		</tr>
	</tbody>
</table>
<script type="text/javascript">
	$('#hotpic').liteNav(5000);
	
	$(function(){
		//专家介绍
		$.ajax( {
			type:"GET",
			url : "${contextPath }/expert/get" + ".json",
			dataType : "json",
			timeout : 5000,
			async:false,
			success:function(data) {
				var length = data.length;
					for(i=0; i<length; i=i+2){
						$("#expertBody").append("<tr><td width='136' height='110'>"
							+ "<a title='" + data[i].title + "' target='_blank' href='${contextPath}/content/detail/contentId/" + data[i].id + "'></a>"
							+ "<table width='110' cellspacing='0' cellpadding='0' border='0'><tbody><tr>"
							+ "<td width='36'><a title='" + data[i].title + "' target='_blank' href='${contextPath}/content/detail/contentId/" + data[i].id + "'><img width='80' height='100' border='0' src='${contextPath }"+ data[i].image + "' bordercolor='#ffffff' style='border-collapse: collapse'></a></td>"
							+ "<td width='160' valign='top' align='left'><table width='95' cellspacing='0' cellpadding='3' border='0'><tbody><tr>"
							+ "<td width='89' valign='top' align='left' class='hei'>" + data[i].title + "</td></tr></tbody></table></td></tr></tbody></table><br/></td>"
							+ "<td width='136' height='110'>"
							+ "<a title='" + data[i+1].title + "' target='_blank' href='${contextPath}/content/detail/contentId/" + data[i+1].id + "'></a>"
							+ "<table width='110' cellspacing='0' cellpadding='0' border='0'><tbody><tr>"
							+ "<td width='36'><a title='" + data[i+1].title + "' target='_blank' href='${contextPath}/content/detail/contentId/" + data[i+1].id + "'><img width='80' height='100' border='0' src='${contextPath }"+ data[i+1].image + "' bordercolor='#ffffff' style='border-collapse: collapse'></a></td>"
							+ "<td width='160' valign='top' align='left'><table width='95' cellspacing='0' cellpadding='3' border='0'><tbody><tr>"
							+ "<td width='89' valign='top' align='left' class='hei'>" + data[i+1].title + "</td></tr>"
							+ "</tbody></table></td></tr></tbody></table><br/></td></tr>");
					}
				},
			error : function(response) {
				alert("error");
			}
		});
	});
	
	
	<!-- 
	//---------------------------------悬浮窗开始---------------------------------
    var floatImg = document.getElementById("oImg");  
    var delay = 10; //控制每次执行间隔的时间，做越大移动得越慢； 
    var speed = 1; //控制每次执行移动的距离，值越大移动得越快； 
    var flagX = 0; 
    var flagY = 0; 
     
    function toPixel(str1) { 
    //该函数用于去掉数值后面的px，并将之转化为数字。 
        var oldLen = str1.length; 
        var newLen = oldLen - 2; 
         
        str2 = str1.slice(0, newLen); 
        str3 = parseInt(str2); 
         
        return str3; 
    } 
     
    function flowImg() { 
        var bWidth = document.body.clientWidth; 
        var bHeight = document.body.clientHeight; 
        var bLeft = document.body.scrollLeft; 
        var bTop = document.body.scrollTop; 
         
        var iWidth = floatImg.offsetWidth; 
        var iHeight = floatImg.offsetHeight; 
        var iLeft = toPixel(floatImg.style.left); 
        var iTop = toPixel(floatImg.style.top); 
         
        //下面一段控制横向移动 
        if(iLeft < (bWidth - iWidth) && flagX == 0) { 
            floatImg.style.left = (iLeft + speed) + "px"; 
        } 
        else if(iLeft >= (bWidth - iWidth) && flagX ==0) { 
            flagX = 1; 
        } 
        else if(iLeft > 0 && flagX == 1) { 
            floatImg.style.left = (iLeft - speed) + "px"; 
        } 
        else if(0 >= iLeft && flagX == 1) { 
            flagX = 0; 
        } 
         
        //下面一段控制纵向移动 
        if(iTop < (bHeight - iHeight) && flagY == 0) { 
            floatImg.style.top = (iTop + speed) + "px"; 
        } 
        else if(iTop >= (bHeight - iHeight) && flagY ==0) { 
            flagY = 1; 
        } 
        else if(iTop > 0 && flagY == 1) { 
            floatImg.style.top = (iTop - speed) + "px"; 
        } 
        else if(0 >= iTop && flagY == 1) { 
            flagY = 0; 
        } 
    } 
     
    var imgInterval = setInterval("flowImg()", delay); 
    floatImg.onmouseover = function() {clearInterval(imgInterval);} 
    floatImg.onmouseout = function() {imgInterval = setInterval("flowImg()", delay);} 
  //---------------------------------悬浮窗结束---------------------------------
-->
</script>
