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
	<link href="${pageContext.request.contextPath}/css/admin/public.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/member.css" rel="stylesheet" type="text/css"/>
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
                <li class="liactive"><a href="${pageContext.request.contextPath}/views/admin/member/memberList.jsp">会员信息管理</a></li>
                <li class="linormal"><a href="">会员账户管理</a></li> 
                </ul>
            </div>    
        </div>
    </div>
    <!-- 三级导航栏 end-->
 
    <!-- 页面内容 start-->
    <div class="body-content">
    <div class="content">
        <section class="activities">
            <!-- 搜索标签 start -->
            <div class="search">
                <!--按enter会自动提交表单-->
                <form id="search-form" class="navbar-form-normal">
                    <div class="search-input-container">
                        <div class="search-input-wrap">
                            <div class="dropdown">
                                <input id="member_search" type="search" class="search-input" placeholder="请输入会员姓名...">
                                <i></i>
                                <span class="glyphicon glyphicon-search search-icon"></span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!-- 搜索标签 end -->
            <div class="btn btn-search" onclick="searchMembersByName(1);">搜索</div>
            <!-- 添加会员 start-->
            <div class="new">
                <a class="btn btn-edit" onclick="downloadMemberList();">导出列表</a>
                <a href="${pageContext.request.contextPath}/admin/member/addMemberButton.action" class="btn btn-new">添加会员</a>
            </div>
            <!-- 添加会员 end-->
            
            <!-- 会员table start-->
            <div class="nav-block">
                <table class="table" id="members_table"></table>
                <div id="memberBottom" class="bottom"></div>
            </div>
            <!-- 会员table end-->
        </section>
    </div>
    </div>
    <!-- 页面内容 end-->
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugin/exportExcel/Blob.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugin/exportExcel/FileSaver.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhMember.js"></script>
	
    <script type="text/javascript">
       $(function(){
            changeLeftMenu(1);
            requestFirstMember();
       });
    </script>
</body>
</html>