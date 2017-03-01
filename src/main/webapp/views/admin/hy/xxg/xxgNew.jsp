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
	<link href="${pageContext.request.contextPath}/css/admin/hy/xxg/xxgNew.css" rel="stylesheet" type="text/css"/>
	<title>新增心血管化验</title>
</head>
<body>
    <jsp:include page="../../_head.jsp"></jsp:include>
    <jsp:include page="../../_leftMenu.jsp"></jsp:include>

	<% String member_id = request.getParameter("member_id"); %>
	<% String member_name = request.getParameter("member_name"); %>


	<!-- 页面内容 strat -->
 	<div class="main">
		<div class="main-page">
			<div class="nav-path">
				<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" title="回到首页"><span class="glyphicon glyphicon-home"></span></a>
				<i class="icon-path"></i>
				<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>">化验</a>
				<i class="icon-path"></i>
				<a href="xxg.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>">心血管化验</a>
				<i class="icon-path"></i>
				<a href="javascript:void(0);">新增心血管化验记录</a>
			</div>
			<a href="xxg.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-head">会员：<span class="span"><%= member_name %></span></div>
					<table>
						<thead>
							<tr class="theadFirst">
							<th colspan="2" rowspan="2"><span>项目分类</span></th>
							<th rowspan="2"><span>项目内容</span></th>
							<th rowspan="2" class="refer"><span>参考值</span></th>
							<th class="data">医院：<input type="text" value="本院" class="data-input" /></th>
							</tr>
							<tr class="theadDate">
								<th class="data">日期：<input type="text" value="2016-12-3" class="data-input" /></th>
							</tr>
						</thead>
						<tbody id="hyxxg">
							<tr class="gysz">
								<td rowspan="23">心脑血管风险指标</td><td rowspan="6">血脂谱</td>
								<td class="project">甘油三酯</td><td class="refer">0.4-1.7</td>
								<td class="data"><input type="text" value="0.5"/></td>
							</tr>
							<tr class="zdgc">
								<td class="project">总胆固醇</td><td class="refer">3.1-5.7</td>
								<td><input type="text" value="3.5"/></td>
							</tr>
							<tr class="gmdzdbdgc">
								<td class="project">高密度脂蛋白胆固醇</td><td class="refer">1.0-1.6</td>
								<td class="data"><input type="text" value="1.5"/></td>
							</tr>
							<tr class="fgmdzdbdgc">
								<td class="project">非高密度脂蛋白胆固醇</td><td class="refer"><&nbsp;4.2</td>
								<td class="data"><input type="text" value="0.5"/></td>
							</tr>
							<tr class="dmdzdbdgc">
								<td class="project">低密度脂蛋白胆固醇</td><td class="refer">0-3.4</td>
								<td class="data"><input type="text" value="0.5"/></td>
							</tr>
							<tr class="tchdlc">
								<td class="project">TC/HDL-C</td><td class="refer"><&nbsp;5</td>
								<td class="data"><input type="text" value="0.5"/></td>
							</tr>


							<tr class="zzdba"><td rowspan="3">载脂蛋白</td>
								<td class="project">载脂蛋白A1</td><td class="refer">1.0-1.6</td>
								<td class="data"><input type="text" value="1.5"/></td>
							</tr>
							<tr class="zzdbb">
								<td class="project">载脂蛋白B</td><td class="refer">0.5-1.2</td>
								<td class="data"><input type="text" value="0.8"/></td>
							</tr>
							<tr class="zzdbe">
								<td class="project">载脂蛋白E</td><td class="refer">3.0-5.0</td>
								<td class="data"><input type="text" value="4.5"/></td>
							</tr>


							<tr class="xqzdba">
								<td>脂蛋白</td><td class="project">血清脂蛋白a</td><td class="refer">0-75</td>
								<td class="data"><input type="text" value="5"/></td>
							</tr>


							<tr class="txbpas"><td rowspan="3">血管风险因素</td>
								<td class="project">同型半胱氨酸</td><td class="refer">5.0-20.0</td>
								<td class="data"><input type="text" value="5.9"/></td>
							</tr>
							<tr class="ys">
								<td class="project">叶酸</td><td class="refer">5-14.4</td>
								<td class="data"><input type="text" value="9.5"/></td>
							</tr>
							<tr class="wssb12">
								<td class="project">维生素B12</td><td class="refer">187-1059</td>
								<td class="data"><input type="text" value="500"/></td>
							</tr>

							<tr class="cfydbcrp"><td rowspan="10">心肌损伤及功能</td>
								<td class="project">C-反应蛋白CRP</td><td class="refer">0-0.3</td>
								<td class="data"><input type="text" value="0.2"/></td>
							</tr>
							<tr class="jsjmckp">
								<td class="project">肌酸激酶CKP</td><td class="refer">2-200</td>
								<td class="data"><input type="text" value="5"/></td>
							</tr>
							<tr class="jsjmtgmckmb">
								<td class="project">肌酸激酶同工酶CK-MB</td><td class="refer">0-25</td>
								<td class="data"><input type="text" value="5"/></td>
							</tr>
							<tr class="jsjmtgmmbdl">
								<td class="project">肌酸激酶同工酶MB定量</td><td class="refer">0-6.5</td>
								<td class="data"><input type="text" value="0.5"/></td>
							</tr>
							<tr class="rstqmldh">
								<td class="project">乳酸脱氢酶LDH</td><td class="refer">40-250</td>
								<td class="data"><input type="text" value="59"/></td>
							</tr>
							<tr class="aqdstqm">
								<td class="project">a-羟丁酸脱氢酶</td><td class="refer">90-220</td>
								<td class="data"><input type="text" value="150"/></td>
							</tr>
							<tr class="jhdbmb">
								<td class="project">肌红蛋白Mb</td><td class="refer">0-75</td>
								<td class="data"><input type="text" value="50"/></td>
							</tr>
							<tr class="jgdbl">
								<td class="project">肌钙蛋白I（cTnI）</td><td class="refer">0-0.1</td>
								<td class="data"><input type="text" value="0.05"/></td>
							</tr>
							<tr class="jgdbt">
								<td class="project">肌钙蛋白T（cTnT）</td><td class="refer">0-0.1</td>
								<td class="data"><input type="text" value="0.05"/></td>
							</tr>
							<tr class="nlntqt">
								<td class="project">脑利钠肽前体</td><td class="refer">0-150</td>
								<td class="data"><input type="text" value="50"/></td>
							</tr>
						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<a class="btn btn-submit" onclick="addYhxxg();">确认添加</a>
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
</body>
</html>