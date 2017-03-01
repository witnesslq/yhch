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
	<link href="${pageContext.request.contextPath}/css/admin/hy/tnb/tnb.css" rel="stylesheet" type="text/css"/>
	<title>糖尿病化验</title>
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
				<a href="javascript:void(0);" onclick="_healthHome();" title="回到首页"><span class="glyphicon glyphicon-home"></span></a>
				<i class="icon-path"></i>
				<a href="javascript:void(0);" onclick="_healthHome();">化验</a>
				<i class="icon-path"></i>
				<a href="javascript:void(0);">糖尿病化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" href="javascript:void(0);">新增糖尿病化验记录</a>
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
						<tbody id="hytnb">
							<tr class="thxqdb">
								<td rowspan="15">糖尿病</td><td rowspan="3">平均指标</td>
								<td class="project">糖化血清蛋白</td><td class="refer">11-16%</td>
							</tr>
							<tr class="thxhdb">
								<td class="project">糖化血红蛋白</td><td class="refer">4.1-6.5% </td>
							</tr>
							<tr class="pjxtgjz">
								<td class="project">平均血糖估计值</td><td class="refer">3.9-7.8</td>
							</tr>

							<tr class="kfxt">
								<td rowspan="3">空腹指标</td>
								<td class="project">血糖</td><td class="refer">3.9-6.1</td>
							</tr>
							<tr class="kfyds">
								<td class="project">胰岛素</td><td class="refer">1.5-25</td>
							</tr>
							<tr class="kfct">
								<td class="project">C肽</td><td class="refer">0.2-4.0</td>
							</tr>

							<tr class="onext">
								<td rowspan="3">餐后1小时指标</td>
								<td class="project">血糖</td><td class="refer"></td>
							</tr>
							<tr class="oneyds">
								<td class="project">胰岛素</td><td class="refer"></td>
							</tr>
							<tr class="onect">
								<td class="project">C肽</td><td class="refer"></td>
							</tr>

							<tr class="twoxt">
								<td rowspan="3">餐后2小时指标</td>
								<td class="project">血糖</td><td class="refer"><&nbsp;7.8</td>
							</tr>
							<tr class="twoyds">
								<td class="project">胰岛素</td><td class="refer">7.8-74.7</td>
							</tr>
							<tr class="twoct">
								<td class="project">C肽</td><td class="refer">3.3-13.2</td>
							</tr>

							<tr class="ydxbkt">
								<td rowspan="3">糖尿病相关抗体</td>
								<td class="project">胰岛细胞抗体</td><td class="refer"></td>
							</tr>
							<tr class="ydszskt">
								<td class="project">胰岛素自身抗体</td><td class="refer"></td>
							</tr>
							<tr class="gastsmkt">
								<td class="project">谷氨酸脱羧酶抗体</td><td class="refer"></td>
							</tr>

						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hytnbBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/tnb.js"></script>
	<script>
		requestTnbData(<%= member_id%>,1);
	</script>
</body>
</html>