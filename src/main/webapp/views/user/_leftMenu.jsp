<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>   
    <!-- 二级导航栏 start -->
    <div class="main-nav"> 
        <div class="aside-box">
            <ul>
                <li class="menuOne"><span class="span"><< 收起</span></li>
                <li><a class="linormal" href="${pageContext.request.contextPath}/views/user/home.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;首&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                <li><a  class="linormal" href="${pageContext.request.contextPath}/views/user/member/memberInfo.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;个人中心</a></li>
                <!-- <li><a class="linormal" href="${pageContext.request.contextPath}/views/user/health/mHealth.jsp"><span class="glyphicon glyphicon-grain"></span>&nbsp;&nbsp;健康管理</a></li> -->
                <!-- <li><a class="linormal" href=""><span class="glyphicon glyphicon-sunglasses"></span>&nbsp;&nbsp;会诊管理</a></li> -->
                <li><a  class="linormal" href="${pageContext.request.contextPath}/views/user/record/feedbackRecord.jsp"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;记录管理</a></li>
            </ul>
        </div>
    </div>
    <!-- 二级导航栏 end-->