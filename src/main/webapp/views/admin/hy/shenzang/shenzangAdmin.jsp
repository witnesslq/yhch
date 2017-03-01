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
	<link href="${pageContext.request.contextPath}/css/admin/hy/shenzang/shenzangAdmin.css" rel="stylesheet" type="text/css"/>
	<title>肾脏泌尿化验</title>
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
				<a id="hyType" href="javascript:void(0);">肾脏泌尿化验</a>
			</div>
			<a href="${pageContext.request.contextPath}/views/admin/home.jsp" class="btn btn-edit btnedit">返回首页</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-title">肾脏泌尿化验项目内容</div>
					<div class="table-head">请输入会员编号：
						<input type="text" value="123" id="member_id" class="input-id" />
						<div class="warning">不存在该会员！</div>
						<div class="userInfo">会员：<span class="span"></span></div>
					</div>
					<table>
						<thead>
							<tr class="theadFirst">
								<th rowspan="2"><span>项目</span></th>
								<th rowspan="2"><span>项目内容</span></th>
								<th rowspan="2" class="refer"><span>参考值</span></th>
							</tr>
							<tr class="theadDate"></tr>
						</thead>
						<tbody id="hyshenzang">
							<tr class="ys">
								<td rowspan="19">尿常规</td>
								<td class="project">颜色</td><td class="refer">淡黄色</td>
							</tr>
							<tr class="zd">
								<td class="project">浊度</td><td class="refer">清亮</td>
							</tr>
							<tr class="bz">
								<td class="project">比重</td><td class="refer">1.003-1.030</td>
							</tr>
							<tr class="sjd">
								<td class="project">酸碱度</td><td class="refer">4.0-8.0</td>
							</tr>
							<tr class="db">
								<td class="project">蛋白</td><td class="refer">阴性</td>
							</tr>
							<tr class="nt">
								<td class="project">尿糖</td><td class="refer">阴性</td>
							</tr>
							<tr class="ndhs">
								<td class="project">尿胆红素</td><td class="refer">阴性</td>
							</tr>
							<tr class="nsy">
								<td class="project">尿胆原</td><td class="refer">阴性</td>
							</tr>
							<tr class="ntt">
								<td class="project">尿酮体</td><td class="refer">阴性</td>
							</tr>
							<tr class="txsy">
								<td class="project">亚硝酸盐</td><td class="refer">阴性</td>
							</tr>
							<tr class="hxb">
								<td class="project">红细胞</td><td class="refer">阴性</td>
							</tr>
							<tr class="bxb">
								<td class="project">白细胞</td><td class="refer">阴性</td>
							</tr>
							<tr class="hxbul">
								<td class="project">红细胞/μl</td><td class="refer">0-10</td>
							</tr>
							<tr class="hxbhfp">
								<td class="project">红细胞/HFP</td><td class="refer">0-3</td>
							</tr>
							<tr class="bxbul">
								<td class="project">白细胞/μl</td><td class="refer">0-10</td>
							</tr>
							<tr class="bxbhfp">
								<td class="project">白细胞/HFP</td><td class="refer">0-5</td>
							</tr>
							<tr class="spxbul">
								<td class="project">上皮细胞/μl</td><td class="refer">0-5</td>
							</tr>
							<tr class="njjul">
								<td class="project">尿结晶/μl</td><td class="refer">0-3</td>
							</tr>
							<tr class="ngxul">
								<td class="project">尿管型/μl</td><td class="refer">0-1</td>
							</tr>


							<tr class="nsu">
								<td rowspan="4">血肾功</td>
								<td class="project">尿素</td><td class="refer">1.8-7.5</td>
							</tr>
							<tr class="jg">
								<td class="project">肌酐</td><td class="refer">30-110</td>
							</tr>
							<tr class="nsuan">
								<td class="project">尿酸</td><td class="refer">104-444</td>
							</tr>
							<tr class="wqdb">
								<td class="project">β2-微球蛋白</td><td class="refer">1.0-3.0</td>
							</tr>


							<tr class="xsndbdlpro">
								<td rowspan="8">尿微蛋白</td>
								<td class="project">24小时尿蛋白定量Pro</td><td class="refer"></td>
							</tr>
							<tr class="yxatgm">
								<td class="project">乙酰氨糖苷酶</td><td class="refer">0.3-12</td>
							</tr>
							<tr class="nshcdb">
								<td class="project">尿视黄醇蛋白</td><td class="refer">0-0.7</td>
							</tr>
							<tr class="nwlbdb">
								<td class="project">尿微量白蛋白</td><td class="refer">0-22.5</td>
							</tr>
							<tr class="njg">
								<td class="project">尿肌酐</td><td class="refer"></td>
							</tr>
							<tr class="kswlbdbjg">
								<td class="project">快速微量白蛋白/肌酐</td><td class="refer">0-37</td>
							</tr>
							<tr class="nonewqdb">
								<td class="project">尿α1-微球蛋白</td><td class="refer">0-1.2</td>
							</tr>
							<tr class="ntwowqdb">
								<td class="project">尿β2-微球蛋白</td><td class="refer">0-0.03</td>
							</tr>


							<tr class="nsjgqcl">
								<td rowspan="3">肾小球滤过率</td>
								<td class="project">内生肌酐清除率Ccr</td><td class="refer"></td>
							</tr>
							<tr class="sxqlgl">
								<td class="project">肾小球滤过率Egfr</td><td class="refer">>&nbsp;60</td>
							</tr>
							<tr class="gys">
								<td class="project">胱抑素C（cysC）</td><td class="refer">0.54-1.25</td>
							</tr>


							<tr class="xwcjjhxb">
								<td>尿红细胞形态</td>
								<td class="project">相位差镜检红细胞</td><td class="refer"></td>
							</tr>


							<tr class="jk">
								<td rowspan="7">血清电解质</td>
								<td class="project">钾K</td><td class="refer">3.5-5.5</td>
							</tr>
							<tr class="nna">
								<td class="project">钠Na</td><td class="refer">136-146</td>
							</tr>
							<tr class="lcl">
								<td class="project">氯Cl</td><td class="refer">96-108</td>
							</tr>
							<tr class="gga">
								<td class="project">钙Ca</td><td class="refer">2.09-2.54</td>
							</tr>
							<tr class="mmg">
								<td class="project">镁Mg</td><td class="refer">0.6-1.4</td>
							</tr>
							<tr class="wjlp">
								<td class="project">无机磷P</td><td class="refer">0.89-1.6</td>
							</tr>
							<tr class="xeyhtzl">
								<td class="project">血二氧化碳总量</td><td class="refer">20.2-30</td>
							</tr>

						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyshenzangBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/shenzang.js"></script>
</body>
</html>