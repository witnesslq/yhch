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
	<title>会员详情页</title>
</head>
    <jsp:include page="../_head.jsp"></jsp:include>
    <jsp:include page="../_leftMenu.jsp"></jsp:include>

    <!-- 三级导航栏 start -->
    <div class="nav-second">
        <div class="toolbar">
            <div class="nav-secondul">
                <ul>               
                <li class="liactive"><a href="javascript:void(0);">会员信息管理</a></li>
                <li class="linormal"><a href="">会员账户管理</a></li> 
                </ul>
            </div>    
        </div>
    </div>
    <!-- 三级导航栏 end-->

    <!-- 页面内容 start-->

    <!-- 返回按钮 start-->
    <div class="row rowtop">
        <div class="btn btn-goback btngoback"><a href="${pageContext.request.contextPath}/views/admin/member/memberList.jsp">返&nbsp;&nbsp;回</a></div>
        <a class="btn btn-other btnother btnother-last">反馈记录</a>
        <a class="btn btn-other btnother">访视记录</a>
        <a class="btn btn-other btnother">会诊记录</a>
        <a class="btn btn-other btnother" href="${pageContext.request.contextPath}/views/admin/hy/_healthHome.jsp?member_id=${member.id }&member_name=${member.name }">个人健康数据</a>
    </div> 
    <!-- 返回按钮 end-->

    <!-- 个人信息表 start-->
    <div class="row rowtop">
        <div class="panel panel-default">        
            <div class="panel-body">
                <div class="col-lg-12"><h4>会员个人信息</h4></div>
                <div class="col-lg-3">会员编号：${member.id }</div>
                <div class="col-lg-3">姓名：${member.name }</div>
                <div class="col-lg-3">性别：${member.sex }</div>
                <div class="col-lg-3">年龄：${member.age }</div>
                <div class="col-sm-12"></div>
                <div class="col-lg-3">会员等级：${member.grade }</div>
                <div class="col-lg-3">身份证号：${member.IDCard }</div>
                <div class="col-lg-3">手机号：${member.tel }</div>
                <div class="col-lg-3">账户余额：另一张表</div>
                <div class="col-sm-12"></div>
                <div class="col-lg-3">邮箱：${member.email }</div>
                <div class="col-lg-3">录入者：${member.inputer }</div>
                <div class="col-sm-12"></div>
                <div class="col-lg-10">备注：${member.note }</div>
                <div class="col-lg-2"><div class="btn btn-edit">编&nbsp;&nbsp;辑</div></div>
            </div> 
        </div>  
    </div>
    <!-- 个人信息表 end-->

    <!-- 健康摘要表 start-->
    <div class="row rowheight">
        <div class="panel panel-default">        
            <div class="panel-body">   
                <div class="col-lg-12"><h4>健康摘要表</h4></div>
                <div class="col-lg-2">身高 ：178cm</div>
                <div class="col-lg-2">体重：75kg</div>
                <div class="col-lg-2">血型：AB</div>
                <div class="col-lg-2">BMI数值：xxxx</div>
                <div class="col-lg-2">收缩压：100kg</div>
                <div class="col-lg-2">舒张压：100kg</div>
                <div class="col-sm-12"></div>
                <div class="col-lg-2">呼吸：100kg</div>
                <div class="col-lg-2">腰围：100kg</div>
                <div class="col-lg-2">臀围：100kg</div>
                <div class="col-lg-2">腰臀比：100kg</div>
                <div class="col-lg-2">心率：100kg</div>
                <div class="col-lg-2">心律：100kg</div>
                <div class="col-sm-12"></div>
                <div class="col-lg-4">主要疾病一：100kg</div>
                <div class="col-lg-4">主要疾病二：100kg</div>
                <div class="col-lg-4">医院主要诊断：100kg</div>
                <div class="col-sm-12"></div>
                <div class="col-lg-4">更新时间：2016-9-9</div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2"><div class="btn btn-edit">编&nbsp;&nbsp;辑</div></div>
            </div>
        </div>
    </div>
    <!-- 健康摘要表 end-->
    <!-- 页面内容 end-->

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhPublic.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/YhMemberDetail.js"></script>
    <script>
        (function() {
            changeLeftMenu(1);
        })();
    </script>
</body>
</html>