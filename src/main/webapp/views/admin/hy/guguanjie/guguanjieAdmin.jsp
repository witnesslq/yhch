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
	<link href="${pageContext.request.contextPath}/css/admin/hy/guguanjie/guguanjieAdmin.css" rel="stylesheet" type="text/css"/>
	<title>骨骼及四肢化验</title>
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
				<a id="hyType" href="javascript:void(0);">骨骼及四肢化验</a>
			</div>
			<a href="${pageContext.request.contextPath}/views/admin/home.jsp" class="btn btn-edit btnedit">返回首页</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-title">骨骼及四肢项目内容</div>
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

						<tbody id="hyguguanjie">
							<tr class="jgs">
								<td rowspan="6">骨骼功能</td><td rowspan="6">骨代谢指标</td>
								<td class="project">降钙素</td><td class="refer">0-28</td>
							</tr>		
							<tr class="ggsbgp">
								<td class="project">骨钙素BGP</td>
								<td class="refer"><p>24-70男18-30A</p><p>14-46男31-70A</p><p>11-48女</p></td>
							</tr>		
							<tr class="jzpxjspth">
								<td class="project">甲状旁腺激素PTH</td><td class="refer">15-65</td>
							</tr>
							<tr class="qjwss">
								<td class="project">25羟基维生素D3（25（OH）-D3）</td>
								<td class="refer">20-32</td>
							</tr>
							<tr class="jyjjcw">
								<td class="project">β-胶原降解产物β-CTX</td>
								<td class="refer"><p>0.3-0.58男30-50A</p><p>0.31-0.7男50-70A</p>
									<p>0.35-0.85男>70A</p><p>0.3-0.57女停经前</p>
									<p>0.55-1.01女停经前</p></td>
							</tr>
							<tr class="ixjysjqtpicp">
								<td class="project">I型胶原羧基端前肽PICP</td>
								<td class="refer"><p>20-76男</p><p>19-84女</p></td>
							</tr>		
						</tbody>

					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyguguanjieBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/guguanjie.js"></script>
</body>
</html>