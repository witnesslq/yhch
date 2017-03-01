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
	<link href="${pageContext.request.contextPath}/css/admin/hy/chuanran/chuanranAdmin.css" rel="stylesheet" type="text/css"/>
	<title>传染病化验</title>
</head>
<body>
    <jsp:include page="../../_head.jsp"></jsp:include>
    <jsp:include page="../../_leftMenu.jsp"></jsp:include>

    <!-- 页面内容 strat -->
 	<div class="main">
		<div class="main-page">
			<div class="nav-path">
				<a href="../_healthHomeAdmin.jsp" title="回到首页"><span class="glyphicon glyphicon-home"></span></a>
				<i class="icon-path"></i>
				<a href="../_healthHomeAdmin.jsp">化验</a>
				<i class="icon-path"></i>
				<a id="hyType" href="javascript:void(0);">传染病化验</a>
			</div>
			<a href="${pageContext.request.contextPath}/views/admin/home.jsp" class="btn btn-edit btnedit">返回首页</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-title">传染病化验项目内容</div>
					<div class="table-head">请输入会员编号：
						<input type="text" value="123" id="member_id" class="input-id" />
						<div class="warning">不存在该会员！</div>
						<div class="userInfo">会员：<span class="span"></span></div>
					</div>
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
							<tr class="hbsag">
								<td rowspan="12">传染病检测</td><td rowspan="5">乙肝五项</td>
								<td class="project">乙肝表面抗原HBsAg</td><td class="refer">0-0.05</td>
							</tr>
							<tr class="hbsab">
								<td class="project">乙肝表面抗体HBsAb</td><td class="refer">0-10</td>
							</tr>
							<tr class="hbeag">
								<td class="project">乙肝e抗原HBeAg</td><td class="refer">0-1</td>
							</tr>
							<tr class="hbeab">
								<td class="project">乙肝e抗体HBeAb</td><td class="refer">>&nbsp;1.0</td>
							</tr>
							<tr class="hbcab">
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
</body>
</html>