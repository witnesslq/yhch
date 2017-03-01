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
	<link href="${pageContext.request.contextPath}/css/admin/hy/fengshi/fengshiAdmin.css" rel="stylesheet" type="text/css"/>
	<title>风湿免疫化验</title>
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
				<a id="hyType" href="javascript:void(0);">风湿免疫化验</a>
			</div>
			<a href="${pageContext.request.contextPath}/views/admin/home.jsp" class="btn btn-edit btnedit">返回首页</a>
			<div class="bill-area">
				<div class="bill-table">
					<!-- 费用 table start -->
					<div class="table-title">风湿免疫化验项目内容</div>
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
						<tbody id="hyfengshi">
							<tr class="myqdbg">
								<td rowspan="19">免疫风湿类疾病</td><td rowspan="9">体液免疫功能</td>
								<td class="project">免疫球蛋白G</td><td class="refer">7.0-16.0</td>
							</tr>
							<tr class="myqdba">
								<td class="project">免疫球蛋白A</td><td class="refer">0.7-4.0</td>
							</tr>
							<tr class="myqdbm">
								<td class="project">免疫球蛋白M</td><td class="refer">0.4-2.3</td>
							</tr>
							<tr class="myqdbe">
								<td class="project">免疫球蛋白E</td><td class="refer"><&nbsp;100</td>
							</tr>
							<tr class="myqdbkap">
								<td class="project">免疫球蛋白Ig轻链KAP</td><td class="refer"></td>
							</tr>
							<tr class="myqdblam">
								<td class="project">免疫球蛋白Ig轻链LAM</td><td class="refer"></td>
							</tr>
							<tr class="zbtxj">
								<td class="project">总补体效价</td><td class="refer">10-65</td>
							</tr>
							<tr class="xqbtc3">
								<td class="project">血清补体C3</td><td class="refer">0.9-1.8</td>
							</tr>
							<tr class="xqbtc4">
								<td class="project">血清补体C4</td><td class="refer">0.1-1.4</td>
							</tr>

							<tr class="xhxbcjsesr">
								<td rowspan="6">风湿与变态反应</td>
								<td class="project">血红细胞沉降率ESR</td><td class="refer">0-20 女</td>
							</tr>
							<tr class="klqjrxso">
								<td class="project">抗链球菌溶血素O（抗O）</td><td class="refer">0-220</td>
							</tr>
							<tr class="lfsyzrf">
								<td class="project">类风湿因子RF</td><td class="refer">0-16</td>
							</tr>
							<tr class="khktana">
								<td class="project">抗核抗体ANA</td><td class="refer"></td>
							</tr>
							<tr class="ksldnakt">
								<td class="project">抗双链DNA抗体</td><td class="refer"></td>
							</tr>
							<tr class="xqdbdyfx">
								<td class="project">血清蛋白电泳分析</td><td class="refer"></td>
							</tr>

							<tr class="k2tdb1ktlgm">
								<td rowspan="4">血清抗磷脂抗体</td>
								<td class="project">抗β2糖蛋白1抗体IgM</td><td class="refer"><&nbsp;20</td>
							</tr>
							<tr class="k2tdb1ktlgg">
								<td class="project">抗β2糖蛋白1抗体IgG</td><td class="refer"><&nbsp;20</td>
							</tr>
							<tr class="k2tdb1ktlga">
								<td class="project">抗β2糖蛋白2抗体IgA</td><td class="refer"><&nbsp;20</td>
							</tr>
							<tr class="kzlzktjc">
								<td class="project">抗心磷脂抗体检测</td><td class="refer"><&nbsp;12</td>
							</tr>

							<tr class="blbxbjccd19">
								<td rowspan="14"></td><td>总B细胞</td>
								<td class="project">B淋巴细胞检测（CD19+）</td><td class="refer">90-560</td>
							</tr>
							<tr class="blbxbbfs">
								<td>总B/总LYM</td>
								<td class="project">B淋巴细胞百分数</td><td class="refer">5-18%</td>
							</tr>
							<tr class="tlbxbjccd3">
								<td>总T细胞</td>
								<td class="project">T淋巴细胞检测（CD3+）</td><td class="refer">770-2401</td>
							</tr>
							<tr class="tlbxbbfs">
								<td>总T/总LYM</td>
								<td class="project">T淋巴细胞百分数</td><td class="refer">50-84%</td>
							</tr>
							<tr class="fzxtlbxbyqjc">
								<td>T辅助细胞TH</td>
								<td class="project">辅助性T淋巴细胞亚群检测（CD4+）</td><td class="refer">414-1123</td>
							</tr>
							<tr class="cd4cd3">
								<td>TH/总T</td>
								<td class="project">CD4+/CD3+</td><td class="refer">34-70%</td>
							</tr>
							<tr class="cd4lym">
								<td>TH/总LYM</td>
								<td class="project">CD4+/LYM</td><td class="refer">27-51%</td>
							</tr>
							<tr class="yzxtlbxbyqjccd8">
								<td>T抑制细胞TS</td>
								<td class="project">抑制性T淋巴细胞亚群检测（CD8+）</td><td class="refer">238-874</td>
							</tr>
							<tr class="cd8cd3">
								<td>TS/总T</td>
								<td class="project">CD8+/CD3+</td><td class="refer">25-54%</td>
							</tr>
							<tr class="cd8lym">
								<td>TS/总LYM</td>
								<td class="project">CD8+/LYM</td><td class="refer">15-44%</td>
							</tr>
							<tr class="cd4ycd8yqbz">
								<td>CD4+/CD8+</td>
								<td class="project">CD4+与CD8+亚群比值</td><td class="refer">0.71-2.7</td>
							</tr>						
							<tr class="cd483">
								<td>CD4+8+/3</td>
								<td class="project"></td><td class="refer">0.5-4.0%</td>
							</tr>
							<tr class="zrsstxbhx">
								<td>总NK细胞</td>
								<td class="project">自然杀伤T细胞活性CD3-/CD16+56+ </td><td class="refer">0.07-0.4</td>
							</tr>
							<tr class="cd45">
								<td>CD45</td>
								<td class="project"></td><td class="refer">2000-4000</td>
							</tr>
						</tbody>
					</table>
					<!-- 费用 table end -->
					
					<!-- 底部页面 start -->
					<div id="hyfengshiBottom" class="bottom"></div>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/hy/fengshi.js"></script>
</body>
</html>