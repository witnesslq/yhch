<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/public.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/admin/home.css" rel="stylesheet" type="text/css"/>
	<title>首页</title>
</head>
<body>
    <jsp:include page="_head.jsp"></jsp:include>

    <!-- 导航栏 start-->
    <div class="roomNav">
        <ul class="roomNavInner">
            <!-- 健康大数据 start -->
            <div class="dropMenu">
                <div class="nav_title">个人健康数据</div>          
                <div class="index">
                    <!-- 常规 start -->
                    <div class="plate plate-roomService">
                        <div class="plate-title">
                            <div class="title-head">
                                <img src="${pageContext.request.contextPath}/img/jiankang.svg"/><span>&nbsp;&nbsp;&nbsp;&nbsp;常&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;规</span>
                            </div>
                        </div>
                        <div class="plate-content">
                            <div class="content-title">
                                <ul>
                                    <li><div class="icon"></div><a href="javascript:void(0);">血尿便常规</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">耳鼻喉科</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">口腔科</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">胸肺科</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">内外科</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">眼科</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">脑血管</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">糖尿病</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">风湿免疫</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">传染病</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">亚健康</a></li>
                                </ul>                       
                                <div class="xb-icon"></div> 
                            </div>
                        </div>
                    </div>
                    <!-- 常规 end -->

                    <!-- 化验检查 start -->
                    <div class="plate plate-repair">
                        <div class="plate-title">
                            <div class="title-head">
                                <img src="${pageContext.request.contextPath}/img/huayan.svg"/><span>&nbsp;&nbsp;&nbsp;&nbsp;化验检查</span>
                            </div>
                        </div>
                        <div class="plate-content">
                            <div class="content-title">
                                <ul>
                                    <!-- <li><div class="icon"></div><a>胸肺</a></li> -->
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/xxg/xxgAdmin.jsp">心血管</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/tnb/tnbAdmin.jsp">糖尿病</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/fubu/fubuAdmin.jsp">腹部及胃肠</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/shenzang/shenzangAdmin.jsp">肾脏泌尿</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/nanfu/nanfuAdmin.jsp">男科/妇科</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/guguanjie/guguanjieAdmin.jsp">骨骼及四肢</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/jzx/jzxAdmin.jsp">甲状腺等内分泌</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/zhongliu/zhongliuAdmin.jsp">肿瘤</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/fengshi/fengshiAdmin.jsp">风湿免疫</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/xueye/xueyeAdmin.jsp">血液系统</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/chuanran/chuanranAdmin.jsp">传染病</a></li>
                                    <li><div class="icon"></div><a href="${pageContext.request.contextPath}/views/admin/hy/yjk/yjkAdmin.jsp">亚健康</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 化验检查 end -->     

                    <!-- 专科医技 start -->
                    <div class="plate plate-resource">
                        <div class="plate-title">
                            <div class="title-head">
                                <img src="${pageContext.request.contextPath}/img/huizhen.svg"/><span>&nbsp;&nbsp;&nbsp;&nbsp;专科医技</span>
                            </div>
                        </div>
                        <div class="plate-content">
                            <div class="content-title">
                                <ul>
                                    <li><div class="icon"></div><a href="javascript:void(0);">耳鼻喉</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">口腔</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">胸肺</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">心血管</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">腹部及胃肠</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">肾脏泌尿</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">男科/妇科</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">骨骼及四肢</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">甲状腺等内分泌</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">肿瘤</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">血液系统</a></li>
                                    <li><div class="icon"></div><a href="javascript:void(0);">亚健康</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 专科医技 end -->
            </div>
            <!-- 健康大数据  end -->

            <li class="nav-li"><a href="javascript:void(0);">首页</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath}/views/admin/member/memberList.jsp">会员管理</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath}/views/admin/expert/expertList.jsp">专家管理</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath}/views/admin/record/feedbackRecord.jsp">记录管理</a></li>
        </ul>
    </div>
    <!-- 导航栏 end -->
    
    
    <!-- 页面内容 start -->
    <div class="body">
        <div class="top">
            <!-- 图片轮播 start -->
            <div class="wave">
                <span class="banner-left"></span>
                <span class="banner-right"></span>
                <div class="picture">
                    <ul>
                        <li class="pos1"><img src="${pageContext.request.contextPath}/img/waveOne.png" alt=""></li>
                        <li class="pos2"><img src="${pageContext.request.contextPath}/img/waveTwo.png" alt=""></li>
                        <li class="pos3"><img src="${pageContext.request.contextPath}/img/waveThree.png" alt=""></li>
                        <li class="pos1"><img src="${pageContext.request.contextPath}/img/waveOne.png" alt=""></li>
                    </ul>
                </div>
                <div class="toolBar">
                    <i class="bar active"></i>
                    <i class="bar"></i>
                    <i class="bar"></i>
                </div>
            </div>
            <!-- 图片轮播 end -->
            <div class="login">
                <div class="userInfo">
                    <span class="userName"><shiro:principal property="name"/></span>
                    <span class="userType">管理员</span>
                </div>
                <a onclick="changePasswordAdmin();" class="btn btn-edit btnedit">修改密码</a>
            </div>
        </div>
        <div class="center">
            <!-- 业务介绍 start -->
            <div class="content">
                <div class="centert-title">
                    <h2>主要业务</h2>
                </div>
                <div class="card">
                    <img src="${pageContext.request.contextPath}/img/member.svg" alt="">
                    <div class="caption">
                        <h3>会员管理</h3>
                        <p>会员基础信息、会员账户信息</p>
                    </div>
                </div>
<!--                 <div class="card">
                    <img src="${pageContext.request.contextPath}/img/settings.svg" alt="">
                    <div class="caption">
                        <h3>系统管理</h3>
                        <p>系统用户管理</p>
                    </div>
                </div> -->

                <div class="card">
                    <img src="${pageContext.request.contextPath}/img/expert.svg" alt="">
                    <div class="caption">
                        <h3>专家管理</h3>
                        <p>专家信息管理</p>
                    </div>
                </div>
                <div class="card">
                    <img src="${pageContext.request.contextPath}/img/jiankang.svg" alt="">
                    <div class="caption">
                        <h3>健康管理</h3>
                        <p>专病管理、亚健康管理</p>                      
                    </div>
                </div>
<!--                 <div class="card">
                    <img src="${pageContext.request.contextPath}/img/huizhen.svg" alt="">
                    <div class="caption">
                        <h3>会诊管理</h3>
                        <p>化验、专科检查数据、订制体检方案</p>
                    </div>
                </div> -->
                <div class="card">
                    <img src="${pageContext.request.contextPath}/img/caigou.svg" alt="">
                    <div class="caption">
                        <h3>记录管理</h3>
                        <p>反馈记录、访视记录、会诊记录</p>
                    </div>
                </div>
            </div> 
            <!-- 业务介绍 end -->
        </div>
        <div class="footer">
            <span>医海慈航</span>
            <p class="foot">Copyright © 2016  All Rights Reserved.</p>
        </div>
    </div>
    <!-- 页面内容 end -->
    
    
    <!-- 修改密码模态框  start -->
	<div id="editPasswordAdmin" class="modal fade" tabindex="-1">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">修改密码</h4>
	      </div>
	      
	      <div class="modal-body">
	          <p>输入新密码：<input type="password" name ='password' class="form-control"/></p>
	          <p>确认新密码：<input type="password" class="form-control"/></p>
	          <p style="visibility:hidden; color:red">输入错误提示！</p>
	      </div>
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="submit" class="btn btn-goback" onclick="requestChangePasswordAdmin();">确认修改</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
    <!-- 修改密码模态框 end -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhHome.js"></script>
    
</body>
</html>