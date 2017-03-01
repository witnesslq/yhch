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
	<link href="${pageContext.request.contextPath}/css/admin/hy/nanfu/nanfu.css" rel="stylesheet" type="text/css"/>
	<title>男妇化验</title>
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
				<a href="javascript:void(0);">男妇化验</a>
			</div>
			<a href="../_healthHome.jsp?member_id=<%=member_id%>&member_name=<%=member_name%>" class="btn btn-edit btnedit">返&nbsp;回</a>
			<a class="btn btn-new btnnew" href="javascript:void(0);" class="btn btn-edit btnedit">新增男妇化验记录</a>
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

						<tbody id="hynanfu">
							<tr class="chtscslh">
								<td rowspan="8">性腺功能</td><td rowspan="8">性激素</td>
								<td class="project">促黄体生成素LH</td><td class="refer">1.5-9.3男</td>
							</tr>		
							<tr class="lpcjsfsh">
								<td class="project">卵泡刺激素FSH</td><td class="refer">1.4-18.1男</td>
							</tr>
							<tr class="gtt">
								<td class="project">睾酮T</td><td class="refer">8.4-28.7男</td>
							</tr>
							<tr class="cecee">
								<td class="project">雌二醇E2</td><td class="refer"><&nbsp;353.1男</td>
							</tr>
							<tr class="ytp">
								<td class="project">孕酮P</td><td class="refer">0.89-3.88</td>
							</tr>
							<tr class="ctmrsprl">
								<td class="project">垂体泌乳素PRL</td><td class="refer">2.1-17.7</td>
							</tr>
							<tr class="rtpmrshpl">
								<td class="project">人胎盘泌乳素HPL</td><td class="refer">2.1-17.7男</td>
							</tr>
							<tr class="rmmcxxjs">
								<td class="project">绒毛膜促性腺激素</td><td class="refer"></td>
							</tr>


							<tr class="hpv16">
								<td rowspan="32">细胞学检查</td><td rowspan="13">HPV</td>
								<td class="project">HPV16</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv56">
								<td class="project">HPV56</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv18">
								<td class="project">HPV18</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv45">
								<td class="project">HPV45</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv35">
								<td class="project">HPV35</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv59">
								<td class="project">HPV59</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv39">
								<td class="project">HPV39</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv51">
								<td class="project">HPV51</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv58">
								<td class="project">HPV58</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv52">
								<td class="project">HPV52</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv31">
								<td class="project">HPV31</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv33">
								<td class="project">HPV33</td><td class="refer">阴性</td>
							</tr>
							<tr class="hpv68">
								<td class="project">HPV68</td><td class="refer">阴性</td>
							</tr>


							<tr class="xbl">
								<td rowspan="9">TCT</td>
								<td class="project">细胞量</td><td class="refer"></td>
							</tr>
							<tr class="jgxb">
								<td class="project">颈管细胞</td><td class="refer"></td>
							</tr>
							<tr class="hsxb">
								<td class="project">化生细胞</td><td class="refer"></td>
							</tr>
							<tr class="dcgr">
								<td class="project">滴虫感染</td><td class="refer"></td>
							</tr>
							<tr class="mjgr">
								<td class="project">霉菌感染</td><td class="refer"></td>
							</tr>
							<tr class="bzgr">
								<td class="project">疱疹感染</td><td class="refer"></td>
							</tr>
							<tr class="hpvgr">
								<td class="project">HPV感染</td><td class="refer"></td>
							</tr>
							<tr class="zd">
								<td class="project">诊断</td><td class="refer"></td>
							</tr>
							<tr class="zdxf">
								<td class="project">诊断细分</td><td class="refer"></td>
							</tr>


							<tr class="qjd">
								<td rowspan="10">白带常规</td>
								<td class="project">清洁度</td><td class="refer"></td>
							</tr>
							<tr class="tlxbxt">
								<td class="project">脱落细胞形态</td><td class="refer"></td>
							</tr>
							<tr class="mj">
								<td class="project">霉菌</td><td class="refer">阴性</td>
							</tr>
							<tr class="dc">
								<td class="project">滴虫</td><td class="refer">阴性</td>
							</tr>
							<tr class="xsxb">
								<td class="project">线索细胞</td><td class="refer">阴性</td>
							</tr>
							<tr class="fxj">
								<td class="project">放线菌</td><td class="refer">阴性</td>
							</tr>
							<tr class="rmj">
								<td class="project">绒毛菌</td><td class="refer">阴性</td>
							</tr>
							<tr class="rsgj">
								<td class="project">乳酸杆菌</td><td class="refer">良</td>
							</tr>
							<tr class="cqbb">
								<td class="project">重取标本</td><td class="refer">否</td>
							</tr>
							<tr class="sjbbpg">
								<td class="project">送检标本评估</td><td class="refer">满意</td>
							</tr>

		
						</tbody>

					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hynanfuBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/nanfu.js"></script>
	<script>
		requestNanfuData(<%= member_id%>,1);
	</script>
</body>
</html>