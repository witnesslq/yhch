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
	<link href="${pageContext.request.contextPath}/css/admin/hy/zhongliu/zhongliu.css" rel="stylesheet" type="text/css"/>
	<title>肿瘤化验</title>
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
				<a href="javascript:void(0);">肿瘤化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" href="javascript:void(0);">新增肿瘤化验记录</a>
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
						<tbody id="hyzhongliu">
							<tr class="jtdbafp">
								<td rowspan="17">肿瘤标志物及肿瘤细胞检测</td><td rowspan="4">消化系肿瘤</td>
								<td class="project">甲胎蛋白AFP</td><td class="refer">0-20</td>
							</tr>
							<tr class="apkycea">
								<td class="project">癌胚抗原CEA</td><td class="refer">0-5</td>
							</tr>
							<tr class="tlky72">
								<td class="project">糖类抗原72-4</td><td class="refer">0-10</td>
							</tr>
							<tr class="tlky19">
								<td class="project">糖类抗原19-9（CA199）</td><td class="refer">0-37</td>
							</tr>


							<tr class="xbjzs19">
								<td rowspan="2">肺部肿瘤</td>
								<td class="project">细胞角质素19 CYFRA21-1</td><td class="refer">0-4</td>
							</tr>
							<tr class="sjytyxchm">
								<td class="project">神经元特异烯醇化酶NSE</td><td class="refer">0-24</td>
							</tr>


							<tr class="zqlxxgtyky">
								<td rowspan="2">前列腺肿瘤</td>
								<td class="project">总前列腺相关特异抗原PSA</td>
								<td class="refer"><&nbsp;4.0</td>
							</tr>
							<tr class="ylqlxxgtyky">
								<td class="project">游离前列腺相关特异抗原F-PSA</td>
								<td class="refer"><&nbsp;0.94</td>
							</tr>


							<tr class="xqlzspaxgky">
								<td rowspan="3">生殖系肿瘤</td>
								<td class="project">血清鳞状上皮癌相关抗原SCC</td>
								<td class="refer">0-1.8</td>
							</tr>
							<tr class="tlky125">
								<td class="project">糖类抗原125（CA125）</td>
								<td class="refer">0-35</td>
							</tr>
							<tr class="tlky15">
								<td class="project">糖类抗原15-3（CA153）</td>
								<td class="refer">0-30</td>
							</tr>


							<tr class="tlky50">
								<td rowspan="4">广谱标志物</td>
								<td class="project">糖类抗原50</td><td class="refer">0-25</td>
							</tr>
							<tr class="tlky24">
								<td class="project">糖类抗原24-2</td><td class="refer"></td>
							</tr>
							<tr class="xqzzdtkytpa">
								<td class="project">血清组织多肽抗原TPA</td><td class="refer"></td>
							</tr>
							<tr class="exzlxgyztsgf">
								<td class="project">恶性肿瘤相关因子TSGF</td><td class="refer">0-64</td>
							</tr>


							<tr class="xhzlxbjcctc">
								<td>肿瘤细胞检测</td>
								<td class="project">循环肿瘤细胞检测-CTC</td><td class="refer"></td>
							</tr>

							<tr class="ebbddnajc">
							    <td>鼻咽癌</td>
								<td class="project">EB病毒DNA检测</td><td class="refer">阴性</td>
							</tr>

						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyzhongliuBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/zhongliu.js"></script>
	<script>
		requestZhongliuData(<%= member_id%>,1);
	</script>
</body>
</html>