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
	<link href="${pageContext.request.contextPath}/css/admin/hy/hyPublic.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/hy/jzx/jzx.css" rel="stylesheet" type="text/css"/>
	<title>甲状腺等内分泌化验</title>
</head>
<body>
    <jsp:include page="../../_head.jsp"></jsp:include>
    <jsp:include page="../../_leftMenu.jsp"></jsp:include>
    
    <% String member_name = request.getParameter("member_name"); %>
	<% String member_id = request.getParameter("member_id"); %>

    <!-- 页面内容 strat -->
 	<div class="main">
		<div class="main-page">
			<div class="nav-path">
				<a href="javascript:void(0);" onclick="_healthHome();"><span class="glyphicon glyphicon-home"></span></a>
				<i class="icon-path"></i>
				<a href="javascript:void(0);" onclick="_healthHome();">化验</a>
				<i class="icon-path"></i>
				<a href="javascript:void(0);">甲状腺等内分泌化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" href="javascript:void(0);">新增甲状腺等内分泌化验记录</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-head">
						会员编号：<input class="data-input" value="<%= member_id %>" />
						会员：<span class="span"><%= member_name %></span></div>
					<table>
						<thead>
							<tr class="theadFirst">
								<th colspan="2" rowspan="2"><span>项目分类</span></th>
								<th rowspan="2"><span>项目内容</span></th>
								<th rowspan="2" class="refer"><span>参考值</span></th>
							</tr>
							<tr class="theadDate"></tr>
						</thead>
						<tbody id="hyjzx">
							<tr class="zsdjzxyast3">
								<td rowspan="9">甲状腺疾病</td><td rowspan="6">甲状腺功能</td>
								<td class="project">总三碘甲状腺原氨酸T3</td><td class="refer">1.01-2.95</td>
							</tr>
							<tr class="zjzxst4">
								<td class="project">总甲状腺素T4</td><td class="refer">55.34-160.88</td>
							</tr>
							<tr class="ylsdjzxyasft3">
								<td class="project">游离三碘甲状腺原氨酸FT3</td><td class="refer">2.76-6.3</td>
							</tr>
							<tr class="yljzxsft4">
								<td class="project">游离甲状腺素FT4</td><td class="refer">10.42-24.32</td>
							</tr>
							<tr class="cjzxstsh">
								<td class="project">促甲状腺素TSH</td><td class="refer">0.35-5.5</td>
							</tr>
							<tr class="cjzxjssfjstrh">
								<td class="project">促甲状腺激素释放激素TRH</td><td class="refer"></td>
							</tr>


							<tr class="kjzxqdbkttg">
							    <td rowspan="3">抗甲状腺抗体</td>
								<td class="project">抗甲状腺球蛋白抗体TG</td><td class="refer">0-115</td>
							</tr>
							<tr class="kjzxgyhwmkttpo">
								<td class="project">抗甲状腺过氧化物酶抗体TPO</td><td class="refer">0-34</td>
							</tr>
							<tr class="cjzxjsstkttrab">
								<td class="project">促甲状腺激素受体抗体TRAb </td><td class="refer">0-1.75</td>
							</tr>

						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyjzxBottom" class="bottom"></div>
					<!-- 底部页码 end -->
				</div>
			</div>
		</div>
 	</div>
    <!-- 页面内容 end -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/hyPublic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/jzx.js"></script>
	<script>
		requestJzxData(<%= member_id%>,1);
	</script>
</body>
</html>