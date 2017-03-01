<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
    <!-- 一级导航栏 start-->
    <header class="navbar navbar-fixed-top navbar-ld">
        <div class="container-fluid">
            <div class="header-content">
                <div class="header-logo">
                    <img src="${pageContext.request.contextPath}/img/logo.png">
                </div>
                <div class="navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <div class="dropdown-toggle" data-toggle="dropdown" id="user_dropdown">
                                欢迎您，<shiro:principal property="name"/>
                                <span class="caret"></span>
                            </div>
                            <ul class="dropdown-menu" aria-labelledby="user_dropdown" aria-expanded="false">
                              <li class="li"><a onclick="changePasswordUser();">修改密码</a></li>
                              <li role="separator" class="divider"></li>
                              <%-- <li class="li"><a href="${pageContext.request.contextPath}/auth/logout.action">退出</a></li> --%>
                              
                              	<!-- 调用spring security框架实现退出功能 -->
                              <c:url value="/logout.action" var="logoutUrl"/>  
							                <li><a href="${logoutUrl}">退出</a></li>
							  
                            </ul>
                        </li>
                   </ul>
                </div>
            </div>
        </div>
    </header>
    <!-- 一级导航栏 end-->