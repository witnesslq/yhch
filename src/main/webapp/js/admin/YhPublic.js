// 初始化操作和页面基础事件绑定
$(function(){
	// 搜索框的焦点事件
	$(".search-input").bind("focus blur",function(){
	    $("#search-form").toggleClass("navbar-form-active");
	    $("#search-form").toggleClass("navbar-form-normal");
	}).bind("keydown",function(e){
	    //搜索文本改变事件
	    //console.log(e);
	});

	//导航栏linormal下的a hover属性
	$(".nav-second .linormal").hover(function(){
		$(this).children().css("color","#000");
	},function(){
        $(this).children().css("color","#5c5c5c");
	});
	
	// 设置左边栏的高度为文档的高度
	$(".main-nav").css('height',parseInt($(document).height()));
});

// 改变左边栏样式
var changeLeftMenu = function(index){
	$(".main-nav a").removeClass("a-active");
	$(".main-nav a").eq(index).addClass("a-active")
}