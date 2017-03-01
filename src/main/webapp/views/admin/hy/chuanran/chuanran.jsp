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
	<link href="${pageContext.request.contextPath}/css/admin/hy/chuanran/chuanran.css" rel="stylesheet" type="text/css"/>
	<title>传染病化验</title>
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
				<a href="#" onclick="_healthHome(); return false;" title="回到首页"><span class="glyphicon glyphicon-home"></span></a>
				<i class="icon-path"></i>
				<a href="javascript:void(0);" onclick="_healthHome();">化验</a>
				<i class="icon-path"></i>
				<a href="javascript:void(0);">传染病化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" href="javascript:void(0);">新增传染病化验记录</a>
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
						<tbody id="hychuanran">
							<tr class="hbsAg">
								<td rowspan="12">传染病检测</td><td rowspan="5">乙肝五项</td>
								<td class="project">乙肝表面抗原HBsAg</td><td class="refer">0-0.05</td>
							</tr>
							<tr class="hbsAb">
								<td class="project">乙肝表面抗体HBsAb</td><td class="refer">0-10</td>
							</tr>
							<tr class="hbeAg">
								<td class="project">乙肝e抗原HBeAg</td><td class="refer">0-1</td>
							</tr>
							<tr class="hbeAb">
								<td class="project">乙肝e抗体HBeAb</td><td class="refer">>&nbsp;1.0</td>
							</tr>
							<tr class="hbcAb">
								<td class="project">乙肝核心抗体HBcAb</td><td class="refer">>&nbsp;1.0</td>
							</tr>

							<tr class="hbvdna">
								<td rowspan="2">肝炎病毒定量检测</td>
								<td class="project">乙肝脱氧核糖核酸定量HBV-DNA</td><td class="refer"></td>
							</tr>
							<tr class="hcvrna">
								<td class="project">丙肝遗传核糖核酸定量HCV-RNA</td><td class="refer"></td>
							</tr>

							<tr class="ahcv">
								<td rowspan="3">血清三项</td>
								<td class="project">丙肝抗体A-HCV</td><td class="refer">0-1.0</td>
							</tr>
							<tr class="hiv">
								<td class="project">艾滋病毒抗体HIV</td><td class="refer">阴性</td>
							</tr>
							<tr class="tpa">
								<td class="project">梅毒血清特异性抗体TPA</td><td class="refer">阴性</td>
							</tr>

							<tr class="rpr">
								<td>快速梅毒检测</td>
								<td class="project">快速梅毒血清反应素试验RPR</td><td class="refer"></td>
							</tr>

							<tr class="igg">
								<td>麻疹</td>
								<td class="project">德国麻疹抗体IgG</td><td class="refer"><&nbsp;10</td>
							</tr>
						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hychuanranBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/chuanran.js"></script>
	<script>
		requestChuanranData(<%= member_id%>,1);
	</script>
</body>
</html>