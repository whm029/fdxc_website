<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>西咸新区沣东新城计卫文体局  人口计生</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/css.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery-1.7.2.js"></script>
</head>

<body>
<div id="wrap">
	<div id="top">
	<a href="${pageContext.request.contextPath }/indexRkjsAction!showIndexPage">
		<img src="${pageContext.request.contextPath}/resource/images/top_renkou.jpg" />
		</a>
	</div>
	<div id="banner">
		<img src="${pageContext.request.contextPath}/resource/images/banner.jpg" />
	</div>

		

	<div id="index">
		<div id="sub_L">
			<div class="title4">人口计生</div>
			<ul>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryXinWen0Menu">要闻简报</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryXinwen2Menu">图片新闻</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryTzggMenu">通知公告</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryWjfbMenu">文件发布</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryZcfgMenu">政策法规</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryZnbmMenu">职能部门</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryBsznMenu">办事指南</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryRdgzMenu">热点关注</a></li>
				<li><a href="${pageContext.request.contextPath}/indexRkjsAction!queryLxfsMenu">联系方式</a></li>
			</ul>	
		</div>
		<div id="sub_R">
			<div class="title5">当前位置 > 人口计生 > 文件发布</div>
			<div class="contant">
				<div class="con_title">
					<h3>${wjfb.wjfbTitle }</h3>
					<p>作者：${wjfb.sysUser.userName }　发布时间：${wjfb.subDate }</p>
				</div>
				<div class="text">
					${wjfb.wjfbContent } 
					<c:if test="${wjfb.wjfbFileUrl ne null }">
					
					<font color="red">附件下载:</font>	<a href="${pageContext.request.contextPath}${wjfb.wjfbFileUrl }">${wjfb.wjfbFileName }</a>
						
					</c:if>
				</div>
				<p class="c"></p>
			</div>
		</div>
	</div>
	<p class="c"></p>
	<div class="footer">
		<%@include file="/page/main/common/footer.jsp" %>
	</div>
</div>
</body>
</html>

