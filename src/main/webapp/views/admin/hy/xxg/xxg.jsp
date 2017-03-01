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
	<title>心血管化验</title>
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
				<a href="javascript:void(0);">心血管化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" onclick="newHyXxg();">新增心血管化验记录</a>
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
						<tbody id="hyxxg">
							<tr class="gysz">
								<td rowspan="23">心脑血管风险指标</td><td rowspan="6">血脂谱</td>
								<td class="project">甘油三酯</td><td class="refer">0.4-1.7</td></tr>
							<tr class="zdgc"><td class="project">总胆固醇</td><td class="refer">3.1-5.7</td></tr>
							<tr class="gmdzdbdgc"><td class="project">高密度脂蛋白胆固醇</td><td class="refer">1.0-1.6</td></tr>
							<tr class="fgmdzdbdgc"><td class="project">非高密度脂蛋白胆固醇</td><td class="refer"><&nbsp;4.2</td></tr>
							<tr class="dmdzdbdgc"><td class="project">低密度脂蛋白胆固醇</td><td class="refer">0-3.4</td></tr>
							<tr class="tchdlc"><td class="project">TC/HDL-C</td><td class="refer"><&nbsp;5</td></tr>

							<tr class="zzdba"><td rowspan="3">载脂蛋白</td><td class="project">载脂蛋白A1</td><td class="refer">1.0-1.6</td></tr>
							<tr class="zzdbb"><td class="project">载脂蛋白B</td><td class="refer">0.5-1.2</td></tr>
							<tr class="zzdbe"><td class="project">载脂蛋白E</td><td class="refer">3.0-5.0</td></tr>

							<tr class="xqzdba"><td>脂蛋白</td><td class="project">血清脂蛋白a</td><td class="refer">0-75</td></tr>

							<tr class="txbpas"><td rowspan="3">血管风险因素</td>
								<td class="project">同型半胱氨酸</td><td class="refer">5.0-20.0</td></tr>
							<tr class="ys"><td class="project">叶酸</td><td class="refer">5-14.4</td></tr>
							<tr class="wssb12"><td class="project">维生素B12</td><td class="refer">187-1059</td></tr>

							<tr class="cfydbcrp"><td rowspan="10">心肌损伤及功能</td>
								<td class="project">C-反应蛋白CRP</td><td class="refer">0-0.3</td></tr>
							<tr class="jsjmckp"><td class="project">肌酸激酶CKP</td><td class="refer">2-200</td></tr>
							<tr class="jsjmtgmckmb"><td class="project">肌酸激酶同工酶CK-MB</td><td class="refer">0-25</td></tr>
							<tr class="jsjmtgmmbdl"><td class="project">肌酸激酶同工酶MB定量</td><td class="refer">0-6.5</td></tr>
							<tr class="rstqmldh"><td class="project">乳酸脱氢酶LDH</td><td class="refer">40-250</td></tr>
							<tr class="aqdstqm"><td class="project">a-羟丁酸脱氢酶</td><td class="refer">90-220</td></tr>
							<tr class="jhdbmb"><td class="project">肌红蛋白Mb</td><td class="refer">0-75</td></tr>
							<tr class="jgdbl"><td class="project">肌钙蛋白I（cTnI）</td><td class="refer">0-0.1</td></tr>
							<tr class="jgdbt"><td class="project">肌钙蛋白T（cTnT）</td><td class="refer">0-0.1</td></tr>
							<tr class="nlntqt"><td class="project">脑利钠肽前体</td><td class="refer">0-150</td></tr>
						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyxxgBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/xxg.js"></script>
	<script>
		requestXxgData(<%= member_id%>,1);
	</script>
</body>
</html>