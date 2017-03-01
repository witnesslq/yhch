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
	<link href="${pageContext.request.contextPath}/css/admin/hy/zhongliu/zhongliuAdmin.css" rel="stylesheet" type="text/css"/>
	<title>肿瘤化验</title>
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
				<a id="hyType" href="javascript:void(0);">肿瘤化验</a>
			</div>
			<a href="${pageContext.request.contextPath}/views/admin/home.jsp" class="btn btn-edit btnedit">返回首页</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-title">肿瘤化验项目内容</div>
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
						<tbody id="hyzhongliu">
							<tr class="jtdbafp">
								<td rowspan="17">肿瘤标志物及肿瘤细胞检测</td><td rowspan="4">消化系肿瘤</td>
								<td class="project">甲胎蛋白AFP</td><td class="refer">0-20</td>
							</tr>
							<tr class="apkycea">
								<td class="project">癌胚抗原CEA</td><td class="refer">0-5</td>
							</tr>
							<tr class="tlky724">
								<td class="project">糖类抗原72-4</td><td class="refer">0-10</td>
							</tr>
							<tr class="tlky199">
								<td class="project">糖类抗原19-9（CA199）</td><td class="refer">0-37</td>
							</tr>


							<tr class="xbjzs">
								<td rowspan="2">肺部肿瘤</td>
								<td class="project">细胞角质素19 CYFRA21-1</td><td class="refer">0-4</td>
							</tr>
							<tr class="sjytyxchmnse">
								<td class="project">神经元特异烯醇化酶NSE</td><td class="refer">0-24</td>
							</tr>


							<tr class="zqilxxgtykypsa">
								<td rowspan="2">前列腺肿瘤</td>
								<td class="project">总前列腺相关特异抗原PSA</td>
								<td class="refer"><&nbsp;4.0</td>
							</tr>
							<tr class="ylqlxxgtykyfpsa">
								<td class="project">游离前列腺相关特异抗原F-PSA</td>
								<td class="refer"><&nbsp;0.94</td>
							</tr>


							<tr class="xqlzspaxgkyscc">
								<td rowspan="3">生殖系肿瘤</td>
								<td class="project">血清鳞状上皮癌相关抗原SCC</td>
								<td class="refer">0-1.8</td>
							</tr>
							<tr class="ca125">
								<td class="project">糖类抗原125（CA125）</td>
								<td class="refer">0-35</td>
							</tr>
							<tr class="ca135">
								<td class="project">糖类抗原15-3（CA153）</td>
								<td class="refer">0-30</td>
							</tr>


							<tr class="tlky50">
								<td rowspan="4">广谱标志物</td>
								<td class="project">糖类抗原50</td><td class="refer">0-25</td>
							</tr>
							<tr class="tlky242">
								<td class="project">糖类抗原24-2</td><td class="refer"></td>
							</tr>
							<tr class="zqzzdtkytpa">
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
</body>
</html>