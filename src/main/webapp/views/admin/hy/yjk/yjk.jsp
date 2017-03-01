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
	<link href="${pageContext.request.contextPath}/css/admin/hy/yjk/yjk.css" rel="stylesheet" type="text/css"/>
	<title>亚健康化验</title>
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
				<a href="javascript:void(0);">亚健康化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" href="javascript:void(0);">新增亚健康化验记录</a>
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

						<tbody id="hyyjk">
							<tr class="wssa">
								<td rowspan="9">营养学</td><td rowspan="9">机体维生素测定</td>
								<td class="project">维生素A</td><td class="refer">0.52-2.21</td>
							</tr>	
							<tr class="wssd">
								<td class="project">维生素D</td><td class="refer">25-200</td>
							</tr>	
							<tr class="wsse">
								<td class="project">维生素E</td><td class="refer">10-15</td>
							</tr>	
							<tr class="wssb9">
								<td class="project">维生素B9</td><td class="refer">6.8-36.3</td>
							</tr>	
							<tr class="wssb12">
								<td class="project">维生素B12</td><td class="refer">200-900</td>
							</tr>	
							<tr class="wssb1">
								<td class="project">维生素B1</td><td class="refer">50-150</td>
							</tr>	
							<tr class="wssc">
								<td class="project">维生素C</td><td class="refer">34-114</td>
							</tr>	
							<tr class="wssb2">
								<td class="project">维生素B2</td><td class="refer">4.26-18.42</td>
							</tr>	
							<tr class="wssb6">
								<td class="project">维生素B6</td><td class="refer">14.6-72.9</td>
							</tr>	


							<tr class="mygn">
								<td rowspan="12">亚健康</td><td rowspan="12">量子医学</td>
								<td class="project">免疫功能</td><td class="refer">18-21</td>
							</tr>	
							<tr class="exzlwxys">
								<td class="project">恶性肿瘤危险因素</td><td class="refer">0-21</td>
							</tr>	
							<tr class="lxzk">
								<td class="project">良性肿块</td><td class="refer">0-21</td>
							</tr>	
							<tr class="gai">
								<td class="project">钙</td><td class="refer">18-21</td>
							</tr>	
							<tr class="tie">
								<td class="project">铁</td><td class="refer">18-21</td>
							</tr>	
							<tr class="xin">
								<td class="project">锌</td><td class="refer">18-21</td>
							</tr>	
							<tr class="xi">
								<td class="project">硒</td><td class="refer">18-21</td>
							</tr>	
							<tr class="tong">
								<td class="project">铜</td><td class="refer">18-21</td>
							</tr>	
							<tr class="nie">
								<td class="project">镍</td><td class="refer">18-21</td>
							</tr>	
							<tr class="ge1">
								<td class="project">铬</td><td class="refer">18-21</td>
							</tr>	
							<tr class="ge2">
								<td class="project">镉</td><td class="refer">-21-2</td>
							</tr>	
							<tr class="qian">
								<td class="project">铅</td><td class="refer">-21-2</td>
							</tr>	


							<tr class="swbnsjc">
								<td></td><td>食物不耐受检测</td>
								<td class="project"></td>
								<td class="refer"><p><50：0级，阴性</p><p>50-100：1级，轻度敏感</p>
									<p>100-200：2级，中度敏感</p><p>>200：3级，高度敏感</p></td>
							</tr>	


							<tr class="gmyjc">
								<td></td><td>过敏源检测</td>
								<td class="project"></td>
								<td class="refer"><p>过敏程度：阴性、低、中、</p><p>高、很高、极高</p></td>
							</tr>	


							<tr class="mthfr">
								<td rowspan="2"></td><td rowspan="2">基因型检测</td>
								<td class="project">MTHFR(C677T)</td><td class="refer"></td>
							</tr>	
							<tr class="aldh2">
								<td class="project">血清ALDH2</td><td class="refer"></td>
							</tr>

								
							<tr class="tz">
								<td rowspan="39">人体成分分析</td><td rowspan="10">身体成分分析</td>
								<td class="project">体重</td><td class="refer">62.1-76kg</td>
							</tr>	
							<tr class="qztz">
								<td class="project">去脂体重</td><td class="refer">55.2-58.7kg</td>
							</tr>	
							<tr class="jrl">
								<td class="project">肌肉量</td><td class="refer">51.2-54.5kg</td>
							</tr>	
							<tr class="ggj">
								<td class="project">骨骼肌</td><td class="refer">23.9-29.3kg</td>
							</tr>	
							<tr class="stsf">
								<td class="project">身体水分</td><td class="refer">39.8-42.2kg</td>
							</tr>	
							<tr class="xbny">
								<td class="project">细胞内液</td><td class="refer">24.6-27L</td>
							</tr>	
							<tr class="xbwy">
								<td class="project">细胞外液</td><td class="refer">14.4-16.8L</td>
							</tr>	
							<tr class="dbz">
								<td class="project">蛋白质</td><td class="refer">11-12.4kg</td>
							</tr>	
							<tr class="wjy">
								<td class="project">无机盐</td><td class="refer">4.0-4.1kg</td>
							</tr>	
							<tr class="tzfl">
								<td class="project">体脂肪量</td><td class="refer">10.4-13.8kg</td>
							</tr>	


							<tr class="jrzffxtz">
								<td rowspan="4">肌肉脂肪分析</td>
								<td class="project">体重</td><td class="refer">90-110%</td>
							</tr>	
							<tr class="stzlzs">
								<td class="project">身体质量指数</td><td class="refer">18-24kg/m2</td>
							</tr>	
							<tr class="jrzffxtzfl">
								<td class="project">体脂肪率</td><td class="refer">%</td>
							</tr>	
							<tr class="jrzffxjrl">
								<td class="project">肌肉量</td><td class="refer">kg</td>
							</tr>	


							<tr class="nzzfsp">
								<td rowspan="5">腹部脂肪分析</td>
								<td class="project">内脏脂肪水平</td><td class="refer">5.0-9.0</td>
							</tr>	
							<tr class="nzzfmj">
								<td class="project">内脏脂肪面积</td><td class="refer">50-100cm2</td>
							</tr>	
							<tr class="ytb">
								<td class="project">腰臀比</td><td class="refer">0.75-0.9</td>
							</tr>	
							<tr class="nzzfl">
								<td class="project">内脏脂肪量</td><td class="refer">kg</td>
							</tr>	
							<tr class="pxzfl">
								<td class="project">皮下脂肪量</td><td class="refer">kg</td>
							</tr>	


							<tr class="txpd">
								<td>体形判定</td>
								<td class="project">体形判定</td><td class="refer"></td>
							</tr>	


							<tr class="yypgdbz">
								<td rowspan="7">营养评估</td>
								<td class="project">蛋白质</td><td class="refer">kg</td>
							</tr>	
							<tr class="yypgwjy">
								<td class="project">无机盐</td><td class="refer">kg</td>
							</tr>	
							<tr class="yypgxbl">
								<td class="project">细胞量</td><td class="refer"></td>
							</tr>	
							<tr class="jcdxl">
								<td class="project">基础代谢量</td><td class="refer">kcal</td>
							</tr>	
							<tr class="bykll">
								<td class="project">必要卡路里</td><td class="refer">kcal</td>
							</tr>	
							<tr class="stnl">
								<td class="project">身体年龄</td><td class="refer"></td>
							</tr>	
							<tr class="zk">
								<td class="project">阻抗</td><td class="refer">ʊ</td>
							</tr>	


							<tr class="fppgtz">
								<td rowspan="3">肥胖评估</td>
								<td class="project">体重</td><td class="refer"></td>
							</tr>	
							<tr class="fppgtzfl">
								<td class="project">体脂肪量</td><td class="refer"></td>
							</tr>	
							<tr class="fppgjrl">
								<td class="project">肌肉量</td><td class="refer"></td>
							</tr>


							<tr class="fzcd">
								<td>浮肿程度</td>
								<td class="project">浮肿程度</td><td class="refer"><&nbsp;0.407</td>
							</tr>	


							<tr class="xqtong">
								<td rowspan="4">血清测定</td>
								<td class="project">铜</td><td class="refer">0.64-2.1</td>
							</tr>	
							<tr class="xqtie">
								<td class="project">铁</td><td class="refer">300-530</td>
							</tr>	
							<tr class="xqxin">
								<td class="project">锌</td><td class="refer">4.8-15.6</td>
							</tr>	
							<tr class="xqmei">
								<td class="project">镁</td><td class="refer">20-80</td>
							</tr>	


							<tr class="qxqian">
								<td rowspan="4">全血测定</td>
								<td class="project">铅</td><td class="refer">0-0.46</td>
							</tr>	
							<tr class="qxge">
								<td class="project">镉</td><td class="refer">0-0.2</td>
							</tr>	
							<tr class="qxmeng">
								<td class="project">锰</td><td class="refer">0-0.08</td>
							</tr>	
							<tr class="qxxi">
								<td class="project">硒</td><td class="refer"></td>
							</tr>	

		
						</tbody>

					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyyjkBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/yjk.js"></script>
	<script>
		requestYjkData(<%= member_id%>,1);
	</script>
</body>
</html>