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
	<link href="${pageContext.request.contextPath}/css/admin/member.css" rel="stylesheet" type="text/css"/>
	<title>添加会员</title>
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

    <!-- 添加会员body start-->
    <div class="row">
        <div class="col-lg-12">
            <h4>添加会员</h4>
            <div class="btn btn-goback btngoback" style="margin-top:-60px;"><a href="${pageContext.request.contextPath}/views/admin/member/memberList.jsp">返&nbsp;&nbsp;回</a></div>
        </div>
        
        <form action="${pageContext.request.contextPath}/admin/member/addMember.action" method="post">
            <div class="col-lg-4">  
	            <div class="input-group">
	              <span class="input-group-addon">会员ID</span>
	              <input type="text" name="id"  value="111" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">称呼</span>
	              <input type="text" name="name" value="张三" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">性别</span>
	              <input type="text"  name="sex" value="男" class="form-control">
	            </div>
           </div>
           <div class="col-lg-4"> 
	            <div class="input-group">
	              <span class="input-group-addon">年龄</span>
	              <input type="text" name="age" value="21" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">身份证号</span>
	              <input type="text" name="IDCard" value="101285199305241254" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">手机号</span>
	              <input type="text" name="tel" value="12356871257" class="form-control">
	            </div>
	        </div>
	        <div class="col-lg-4"> 
	            <div class="input-group">
	              <span class="input-group-addon">客户等级</span>
	              <input type="text" name="grade" value="高级会员" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">邮箱</span>
	              <input type="text" name="email" value="hah@163.com" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">录入者</span>
	              <input type="text" name="inputer" value="李四" class="form-control">
	            </div>
	        </div>
	        <div class="col-lg-8"> 
            	<div class="input-group">
	              <span class="input-group-addon">备注</span>
	              <input name="note" class="form-control">
	            </div>
	            <div class="button-bottom">
	              <button type="submit" class="btn btn-new">确认添加</button>
	            </div>
	        </div>
        </form>
    </div>
    <!-- 添加会员body end-->
    
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhMember.js"></script>
    <script type="text/javascript">
       $(function(){
            changeLeftMenu(1);
       });
    </script>
</body>
</html>