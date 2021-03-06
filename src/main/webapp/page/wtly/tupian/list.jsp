<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>西咸新区沣东新城计卫文体局  文体旅游</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/css.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery-1.7.2.js"></script>

<script type="text/javascript">

	function selectPage(currentPage){
		var form = document.forms.form1;
		form.action = form.action+"?page.currentPage="+currentPage;
		//alert(form.action);
		form.submit();
	}
	
</script>
</head>

<body>

<div id="wrap">
	<a href="${pageContext.request.contextPath }/indexWtlyAction!showIndexPage">
		<img src="${pageContext.request.contextPath}/resource/images/top_lvyou.jpg" />
		</a>
	<div id="banner">
		<img src="${pageContext.request.contextPath}/resource/images/banner.jpg" />
	</div>
		
	<form action="${pageContext.request.contextPath}/indexWtlyAction!queryXinWen0Menu" name="form1"  method="post" ></form>
	<s:token name="s_token"></s:token>
	<div id="index">
		<div id="sub_L">
			<div class="title4">文体旅游</div>
			<ul>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryXinWen0Menu">要闻简报</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryXinwen2Menu">图片新闻</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryTzggMenu">通知公告</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryWhmbMenu">文化漫步</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryZcfgMenu">政策法规</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryZnbmMenu">职能部门</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryBsznMenu">办事指南</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryWztpMenu">网站投票</a></li>
				<li><a href="${pageContext.request.contextPath}/indexWtlyAction!queryLxfsMenu">联系方式</a></li>
			</ul>	
		</div>
		<div id="sub_R">
			<div class="title5">当前位置 > 文体旅游 > 图片新闻</div>
			<div class="news">
				<ul>
					<s:iterator value="xinwenList" var="list">
					<c:if test="${list.xinwenTitle ne null }">
					<li><span>[${list.subDate}]</span><a href="${pageContext.request.contextPath}/indexWtlyAction!findXinWen0ForShow?xinwenID=${list.xinwenID }">・${list.xinwenTitle}</a></li>
					</c:if>
					</s:iterator>
				</ul>
				<p class="c"></p>
				&nbsp;
				<div> <%@include file="/page/admin/frame/page.jsp" %></div>
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

