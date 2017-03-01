<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/public.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/hy/_healthHome.css" rel="stylesheet" type="text/css"/>
	<title>个人健康数据</title>
</head>
<body>
    <jsp:include page="../_head.jsp"></jsp:include>
    <jsp:include page="../_leftMenu.jsp"></jsp:include>

	<!-- 页面内容 start -->
	<div class="content">
		<div class="head">
			<% String member_id = request.getParameter("member_id"); %>
			<% String member_name = request.getParameter("member_name"); %>
        	<h4>会员：<span class="span"><%=member_name %></span></h4>
        	<a href="${pageContext.request.contextPath}/admin/member/searchMemberById/<%=member_id %>.action" class="btn btn-red btngoback">返&nbsp;&nbsp;&nbsp;回</a>
		</div>
		<div class="body">
			<!-- 常规 start -->
			<div class="chunk">
				<div class="chunk-head"><div class="bar">1</div><div class="span">常规</div></div>
				<div class="chunk-body">
					<ul class="ul">
						<li class="li"><a href="javascript:void(0);">血尿便常规</a></li>
						<li class="li"><a href="javascript:void(0);">耳鼻喉科</a></li>
						<li class="li"><a href="javascript:void(0);">口腔科</a></li>
						<li class="li"><a href="javascript:void(0);">胸肺科</a></li>
						<li class="li"><a href="javascript:void(0);">内外科</a></li>
						<li class="li"><a href="javascript:void(0);">眼科</a></li>
						<li class="li"><a href="javascript:void(0);">脑血管</a></li>
						<li class="li"><a href="javascript:void(0);">糖尿病</a></li>
						<li class="li"><a href="javascript:void(0);">风湿免疫</a></li>
						<li class="li"><a href="javascript:void(0);">传染病</a></li>
						<li class="li"><a href="javascript:void(0);">血液系统</a></li>
					</ul>
				</div>
			</div>
			<!-- 常规 end -->
			
			<!-- 化验 start -->
			<div class="chunk">
				<div class="chunk-head"><div class="bar">2</div><div class="span">化验</div></div>
				<div class="chunk-body">
					<ul class="ul">
						<li class="li"><a href="xxg/xxg.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">心血管</a></li>
						<li class="li"><a href="tnb/tnb.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">糖尿病</a></li>
						<li class="li"><a href="fubu/fubu.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">腹部及胃肠</a></li>
						<li class="li"><a href="shenzang/shenzang.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">肾脏泌尿</a></li>
						<li class="li"><a href="nanfu/nanfu.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">男科/妇科</a></li>
						<li class="li"><a href="guguanjie/guguanjie.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">骨骼及四肢</a></li>
						<li class="li"><a href="jzx/jzx.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">甲状腺等内分泌</a></li>
						<li class="li"><a href="zhongliu/zhongliu.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">肿瘤</a></li>
						<li class="li"><a href="fengshi/fengshi.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">风湿免疫</a></li>
						<li class="li"><a href="xueye/xueye.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">血液系统</a></li>
						<li class="li"><a href="chuanran/chuanran.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">传染病</a></li>
						<li class="li"><a href="yjk/yjk.jsp?member_id=<%=member_id %>&member_name=<%= member_name %>">亚健康</a></li>
					</ul>
				</div>
			</div>
			<!-- 化验 end -->
			
			<!-- 医技 start -->
			<div class="chunk">
				<div class="chunk-head"><div class="bar">3</div><div class="span">医技</div></div>
				<div class="chunk-body">
					<ul class="ul">
						<li class="li"><a href="javascript:void(0);">心血管医技</a></li>
						<li class="li"><a href="javascript:void(0);">腹部医技</a></li>
						<li class="li"><a href="javascript:void(0);">骨关节医技</a></li>
						<li class="li"><a href="javascript:void(0);">甲状腺医技</a></li>
						<li class="li"><a href="javascript:void(0);">肿瘤医技</a></li>
						<li class="li"><a href="javascript:void(0);">妇科医技</a></li>
						<li class="li"><a href="javascript:void(0);">男科医技</a></li>
						<li class="li"><a href="javascript:void(0);">亚健康医技</a></li>
						<li class="li"><a href="javascript:void(0);">其他医技</a></li>
					</ul>
				</div>
			</div>
			<!-- 医技 start -->

		</div>
	</div>
	<!-- 页面内容 end -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
</body>
</html>