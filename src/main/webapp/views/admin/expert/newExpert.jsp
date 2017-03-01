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
	<link href="${pageContext.request.contextPath}/css/admin/expert.css" rel="stylesheet" type="text/css"/>
	<title>添加专家</title>
</head>
<body>
    <jsp:include page="../_head.jsp"></jsp:include>
    <jsp:include page="../_leftMenu.jsp"></jsp:include>

    <!-- 三级导航栏 start -->
    <div class="nav-second">
        <div class="toolbar">
            <!--?? nav-secondul ul 影响 input高度-->
            <div class="nav-secondul">
                <ul>
                	<li class="liactive"><a href="${pageContext.request.contextPath}/views/admin/expert/expertList.jsp">专家信息管理</a></li>
                </ul>
            </div>    
        </div>
    </div>
    <!-- 三级导航栏 end-->

    <!-- 添加专家body start-->
    <div class="row">
        <div class="col-lg-12">
            <h4>添加专家</h4>
            <div class="btn btn-goback btngoback" style="margin-top:-60px;"><a href="${pageContext.request.contextPath}/views/admin/expert/expertList.jsp">返&nbsp;&nbsp;回</a></div>
        </div>
        <form action="${pageContext.request.contextPath}/admin/expert/addExpert.action" method="post">
        	<div class="col-lg-4">        
	            <div class="input-group">
	              <span class="input-group-addon">专家编号</span>
	              <input type="text" name="id" value="111" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">姓名</span>
	              <input type="text" name="name" value="王五"  class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">职称</span>
	              <input type="text" name="jobTitle" value="不知道" class="form-control">
	            </div>
	        </div>
	        <div class="col-lg-4"> 
	            <div class="input-group">
	              <span class="input-group-addon">医院</span>
	              <input type="text" name="hospital" value="北医三院" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">科室</span>
	              <input type="text" name="department" value="心脑血管" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">出诊时间</span>
	              <input type="text" name="visitTime" value="111" class="form-control">
	            </div>
	        </div>
	        <div class="col-lg-4"> 
	            <div class="input-group">
	              <span class="input-group-addon">挂号渠道</span>
	              <input type="text" name="channel" value="黄牛" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">特长</span>
	              <input type="text" name="goodat" value="111" class="form-control">
	            </div>
	            <div class="input-group">
	              <span class="input-group-addon">费用</span>
	              <input type="text" name="cost" value="1110" class="form-control">
	            </div>
	        </div>
	        <div class="col-lg-4"> 
	            <div class="input-group">
	              <span class="input-group-addon">录入者</span>
	              <input type="text" name="inputer" value="速速" class="form-control">
	            </div>
	            <div class="button-bottom">
              		<button type="submit" class="btn btn-new">确认添加</button>
                </div>
	        </div>
	        <div class="col-lg-8"> 
	            <div class="input-group">
	              <span class="input-group-addon">备注</span>
	              <!-- <textarea name="" class="form-control"></textarea>-->
	              <input type="text" name="note" class="form-control">
	            </div>
	        </div>
        </form>
     </div>
     <!-- 添加专家body end-->
     
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhExpert.js"></script>
    <script>
        (function() {
            changeLeftMenu(2);
        })();
    </script>
</body>
</html>