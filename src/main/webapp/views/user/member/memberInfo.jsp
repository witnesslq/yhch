<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
    <%int rootUrl = 1;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/user/public.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/user/home.css" rel="stylesheet" type="text/css"/>
	<title>会员管理</title>
</head>
<body>
    <jsp:include page="../_head.jsp"></jsp:include>
    <jsp:include page="../_leftMenu.jsp"></jsp:include>

    <!-- 三级菜单 start -->
    <div class="nav-second">
        <div class="toolbar">
            <div class="nav-secondul">
                <ul>               
                <li class="liactive"><a href="${pageContext.request.contextPath}/views/admin/member/memberList.jsp">基础信息</a></li>
                <li class="linormal"><a href="">账户信息</a></li> 
                </ul>
            </div>    
        </div>
    </div>
    <!-- 三级菜单 end-->
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/user/YhPublic.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/user/YhMember.js"></script>
</body>
</html>