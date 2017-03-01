<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
    <%int rootUrl = 1;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhHealth.js"></script>
	<link href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/public.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/health.css" rel="stylesheet" type="text/css"/>
	<title>会员管理</title>
</head>
<body>
    <jsp:include page="../_head.jsp"></jsp:include>
    <jsp:include page="../_leftMenu.jsp"></jsp:include>

    <!-- 三级导航栏 start -->
    <div class="nav-second">
        <div class="toolbar">
            <div class="nav-secondul">
                <ul>               
                <li class="liactive"><a href="${pageContext.request.contextPath}/views/admin/health/mHealth.jsp">健康摘要表</a></li>
                <li class="linormal"><a href="">专病管理</a></li> 
                <li class="linormal"><a href="">亚健康管理</a></li> 
                </ul>
            </div>    
        </div>
    </div>
    <!-- 三级导航栏 end-->
    
    <!-- 页面内容 start-->
    <div class="body-content">
    <div class="content">
        <section class="activities">            
            <!-- 会员table start-->
            <div class="nav-block">
                <table class="table" id="health_table"></table>
                <div id="healthBottom" class="bottom"></div>
            </div>
            <!-- 会员table end-->
        </section>
    </div>
    </div>
    <!-- 页面内容 end-->
    
    <!-- jsp页面初始化操作 -->
    <script type="text/javascript">
       // 请求第一页会员信息
       $(function(){
          requestFirstHealth();
       });
    </script>

</body>
</html>