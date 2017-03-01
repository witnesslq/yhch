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
	<link href="${pageContext.request.contextPath}/css/admin/hy/fubu/fubuAdmin.css" rel="stylesheet" type="text/css"/>
	<title>腹部及胃肠化验</title>
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
				<a id="hyType" href="javascript:void(0);">腹部及胃肠化验</a>
			</div>
			<a href="${pageContext.request.contextPath}/views/admin/home.jsp" class="btn btn-edit btnedit">返回首页</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-title">腹部及胃肠化验项目内容</div>
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
						<tbody id="hyfubu">
							<tr class="fbys">
								<td colspan="2" rowspan="6">大便常规</td>
								<td class="project">粪便颜色</td><td class="refer">黄色</td>
							</tr>
							<tr class="fbxz">
								<td class="project">粪便性状</td><td class="refer">软便</td>
							</tr>
							<tr class="bxb">
								<td class="project">白细胞</td><td class="refer">阴性</td>
							</tr>
							<tr class="hxb">
								<td class="project">红细胞</td><td class="refer">阴性</td>
							</tr>
							<tr class="cl">
								<td class="project">虫卵</td><td class="refer">阴性</td>
							</tr>
							<tr class="qxjc">
								<td class="project">潜血检查</td><td class="refer">阴性</td>
							</tr>


							<tr class="basajzym">
								<td rowspan="23">肝胆疾病</td><td rowspan="8">肝细胞损伤指标</td>
								<td class="project">丙氨酸氨基转移酶</td><td class="refer">0-40</td>
							</tr>
							<tr class="tdasajzym">
								<td class="project">天冬氨酸氨基转移酶</td><td class="refer">0-40</td>
							</tr>
							<tr class="gaxjzym">
								<td class="project">γ-谷胺酰基转移酶</td><td class="refer">0-50</td>
							</tr>
							<tr class="jxlsm">
								<td class="project">碱性磷酸酶</td><td class="refer">0-130</td>
							</tr>
							<tr class="dayhm">
								<td class="project">单胺氧化酶（肝纤维化）</td><td class="refer">0-12</td>
							</tr>
							<tr class="xgtam">
								<td class="project">腺苷脱氨酶</td><td class="refer">4.0-24.0</td>
							</tr>
							<tr class="djzm">
								<td class="project">胆碱酯酶</td><td class="refer">5000-13000</td>
							</tr>
							<tr class="yzsgm">
								<td class="project">a-1-岩藻酸苷酶（肝癌）</td><td class="refer"></td>
							</tr>


							<tr class="zdb">
								<td rowspan="6">肝脏合成功能</td>
								<td class="project">总蛋白</td><td class="refer">55-80</td>
							</tr>
							<tr class="bdb">
								<td class="project">白蛋白</td><td class="refer">35-50</td>
							</tr>
							<tr class="qbdb">
								<td class="project">前白蛋白</td><td class="refer">0.2-0.4</td>
							</tr>
							<tr class="qdb">
								<td class="project">球蛋白</td><td class="refer">20-33</td>
							</tr>
							<tr class="bdbzdb">
								<td class="project">白蛋白/总蛋白</td><td class="refer">52-72%</td>
							</tr>
							<tr class="bdbqdb">
								<td class="project">白蛋白/球蛋白</td><td class="refer">1.0-2.5</td>
							</tr>


							<tr class="zdhs">
								<td rowspan="5">肝脏排泄功能</td>
								<td class="project">总胆红素</td><td class="refer">0-21</td>
							</tr>
							<tr class="zjdhs">
								<td class="project">直接胆红素</td><td class="refer">0-8.6</td>
							</tr>
							<tr class="jjdhs">
								<td class="project">间接胆红素</td><td class="refer">1-20</td>
							</tr>
							<tr class="zdzs">
								<td class="project">总胆汁酸</td><td class="refer">0-20.0</td>
							</tr>
							<tr class="lasajtm">
								<td class="project">亮氨酸氨基肽酶</td><td class="refer">11-30</td>
							</tr>


							<tr class="tmzs">
								<td rowspan="4">肝纤维化标志物</td>
								<td class="project">透明质酸</td><td class="refer">0-120</td>
							</tr>
							<tr class="cnldb">
								<td class="project">层粘连蛋白</td><td class="refer">0-130</td>
							</tr>
							<tr class="ivxjy">
								<td class="project">IV型胶原</td><td class="refer">0-95</td>
							</tr>
							<tr class="iiixqjyndt">
								<td class="project">III型前胶原N端肽</td><td class="refer">0-15</td>
							</tr>


							<tr class="dfm">
								<td rowspan="7">胰腺胃肠疾病</td><td rowspan="3">胰腺功能</td>
								<td class="project">淀粉酶</td><td class="refer">0-150</td>
							</tr>
							<tr class="zfm">
								<td class="project">脂肪酶</td><td class="refer">23-300</td>
							</tr>
							<tr class="xqdbm">
								<td class="project">血清胰蛋白酶</td><td class="refer"></td>
							</tr>


							<tr class="xwdbmyi">
							    <td rowspan="3">血胃蛋白酶原</td>
								<td class="project">血胃蛋白酶原I（PGI-I）</td><td class="refer">45-150</td>
							</tr>
							<tr class="xwdbmyii">
								<td class="project">血胃蛋白酶原II</td><td class="refer">>&nbsp;3</td>
							</tr>
							<tr class="xwdbmyiii">
								<td class="project">血胃蛋白酶原I/II</td><td class="refer">0-23.3</td>
							</tr>


							<tr class="c13nshqsy">
								<td>幽门螺旋杆菌检测</td>
								<td class="project">C13尿素呼气试验</td><td class="refer">DOB值&nbsp;<&nbsp;4.0</td>
							</tr>
						
						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyfubuBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/fubu.js"></script>
</body>
</html>