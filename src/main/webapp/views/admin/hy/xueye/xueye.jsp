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
	<link href="${pageContext.request.contextPath}/css/admin/hy/xueye/xueye.css" rel="stylesheet" type="text/css"/>
	<title>血液系统化验</title>
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
				<a href="javascript:void(0);">血液系统化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" href="javascript:void(0);">新增血液系统化验记录</a>
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
						<tbody id="hyxueye">
							<tr class="hxbjs">
								<td colspan="2" rowspan="15">血常规</td>
								<td class="project">红细胞计数</td>
								<td class="refer"><p>4.3-5.9男</p><p>3.9-5.2女</p></td>
							</tr>
							<tr class="xhdbcd">
								<td class="project">血红蛋白测定</td>
								<td class="refer"><p>137-179男</p><p>116-155女</p></td>
							</tr>
							<tr class="hxbyj">
								<td class="project">红细胞压积</td><td class="refer">37-50%</td>
							</tr>
							<tr class="pjhxbtj">
								<td class="project">平均红细胞体积</td><td class="refer">82-98</td>
							</tr>
							<tr class="pjhxbxhdbl">
								<td class="project">平均红细胞血红蛋白量</td><td class="refer">27-34</td>
							</tr>
							<tr class="pjhxbxhdbnd">
								<td class="project">平均红细胞血红蛋白浓度</td>
								<td class="refer">320-360</td>
							</tr>
							<tr class="bxbjs">
								<td class="project">白细胞计数</td><td class="refer">3.5-10</td>
							</tr>
							<tr class="zxlxbbfb">
								<td class="project">中性粒细胞百分比</td><td class="refer">50-70%</td>
							</tr>
							<tr class="lbxbbfb">
								<td class="project">淋巴细胞百分比</td><td class="refer">20-40%</td>
							</tr>
							<tr class="cslxbbfb">
								<td class="project">嗜酸粒细胞百分比</td><td class="refer">0-5%</td>
							</tr>
							<tr class="cjlxbbfb">
								<td class="project">嗜碱粒细胞百分比</td><td class="refer">0-1%</td>
							</tr>
							<tr class="dhxbbfb">
								<td class="project">单核细胞百分比</td><td class="refer">3-8%</td>
							</tr>
							<tr class="xcgxxbjs">
								<td class="project">血小板计数</td><td class="refer">100-300</td>
							</tr>
							<tr class="pjxxbtj">
								<td class="project">平均血小板体积</td><td class="refer">6.8-13.5</td>
							</tr>
							<tr class="wzhxbbfb">
								<td class="project">网织红细胞百分率</td><td class="refer">0.4-2.1</td>
							</tr>


							<tr class="ptt6LSTQM">
								<td colspan="2">贫    血</td>
								<td class="project">葡萄糖-6-磷酸脱氢酶</td>
								<td class="refer">>&nbsp;0.39</td>
							</tr>


							<tr class="xqtfe">
								<td colspan="2" rowspan="5">铁代谢</td>
								<td class="project">血清铁Fe</td><td class="refer">7-32</td>
							</tr>
							<tr class="bhdtibc">
								<td class="project">铁饱和度TIBC</td><td class="refer">20-62</td>
							</tr>
							<tr class="bbhtjhluibc">
								<td class="project">不饱和铁结合力UIBC</td><td class="refer">20-62</td>
							</tr>
								<tr class="ztjhl">
								<td class="project">总铁结合力</td><td class="refer"></td>
							</tr>
							<tr class="xqtdbferr">
								<td class="project">血清铁蛋白FERR</td>
								<td class="refer"><p>13-150女</p><p>30-400男</p></td>
							</tr>


							<tr class="xwdbyfg">
								<td rowspan="10">出凝血功能</td><td rowspan="4">凝血因子</td>
								<td class="project">纤维蛋白原Fg</td><td class="refer">2.0-4.0</td>
							</tr>
							<tr class="nxmysjpt">
								<td class="project">凝血酶原时间PT</td><td class="refer">15-21</td>
							</tr>
							<tr class="hxbfnxhmsjaptt">
								<td class="project">活化部分凝血活酶时间APTT</td>
								<td class="refer">30-45</td>
							</tr>
							<tr class="nxmyhddpa">
								<td class="project">凝血酶原活动度PA</td><td class="refer">70-150</td>
							</tr>


							<tr class="gjbzhbzinr">
								<td>出血/凝血</td>
								<td class="project">国际标准化比值INR</td><td class="refer">0.95-1.5</td>
							</tr>
							<tr class="nxmsjtt">
								<td rowspan="2">抗凝物质</td>
								<td class="project">凝血酶时间TT</td><td class="refer">14-21</td>
							</tr>
							<tr class="knxm3HXAT3">
								<td class="project">抗凝血酶Ⅲ活性AT-Ⅲ</td><td class="refer"></td>
							</tr>


							<tr class="dejtdd">
								<td rowspan="3">纤维蛋白溶解系统</td>
								<td class="project">D-二聚体D-D</td><td class="refer">0-0.25</td>
							</tr>
							<tr class="xrmyplg">
								<td class="project">纤溶酶原PLG</td><td class="refer"></td>
							</tr>
							<tr class="xwdbjjcwfgdp">
								<td class="project">纤维蛋白降解产物FgDP</td><td class="refer"></td>
							</tr>


							<tr class="xxbjs">
							    <td colspan="2" rowspan="7">血小板功能检测</td>
								<td class="project">血小板计数</td><td class="refer"></td>
							</tr>
							<tr class="xkss">
								<td class="project">血块收缩</td><td class="refer"></td>
							</tr>
							<tr class="xxbnf">
								<td class="project">血小板黏附</td><td class="refer"></td>
							</tr>
							<tr class="xxbjj">
								<td class="project">血小板聚集</td><td class="refer"></td>
							</tr>
							<tr class="xxbd3YZYXX">
								<td class="project">血小板第3因子有效性</td><td class="refer"></td>
							</tr>
							<tr class="xxbd4YZ">
								<td class="project">血小板第4因子</td><td class="refer"></td>
							</tr>
							<tr class="xxbqdb">
								<td class="project">β-血小板球蛋白</td><td class="refer"></td>
							</tr>


							<tr class="qxqbl">
								<td colspan="2" rowspan="5">血液流变学</td>
								<td class="project">全血切变率</td><td class="refer"></td>
							</tr>
							<tr class="is1">
								<td class="project">1.0（I/S）</td>
								<td class="refer"><p>17.63-21.35男</p><p>13.79-17.91女</p></td>
							</tr>
							<tr class="is5">
								<td class="project">5.0（I/S）</td>
								<td class="refer">8.31-9.95男<p></p><p>6.81-8.53女</p></td>
							</tr>
							<tr class="is30">
								<td class="project">30.0（I/S）</td>
								<td class="refer"><p>5.18-5.94男</p><p>4.29-5.45女</p></td>
							</tr>
							<tr class="is200">
								<td class="project">200.0（I/S）</td>
								<td class="refer"><p>3.53-4.65男</p><p>3.36-4.32女</p></td>
							</tr>

						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyxueyeBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/xueye.js"></script>
	<script>
		requestXueyeData(<%= member_id%>,1);
	</script>
</body>
</html>