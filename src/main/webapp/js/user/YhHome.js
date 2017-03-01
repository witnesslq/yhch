$(function(){
	// 绑定个人健康数据划过菜单
	$(".plate-roomService,.plate-repair,.plate-resource,.plate-other").hover(function(){
		$(this).children(".plate-title").toggleClass("plate-title-active");
		$(this).children(".plate-content").css("display","block");
	},function(){
		$(this).children(".plate-title").toggleClass("plate-title-active");
		$(this).children(".plate-content").css("display","none");
	});

	// 首页大图轮播
	startWave();

	// 控制是否轮播
	$(".wave").hover(function(){
		clearInterval(setWave);
		$(".wave .banner-left,.wave .banner-right").animate({"opacity":"1"},500);
	},function(){
		startWave();
		$(".wave .banner-left,.wave .banner-right").animate({"opacity":"0"},500);
	});

	// 点击大图轮播下方图块
	$(".toolBar .bar").click(function(){
		if(!($(this).hasClass("active"))){
			index = $(this).index();
			$(".toolBar .bar").removeClass("active");
			$(".toolBar .bar").eq(index).addClass("active");
			$(".wave ul").animate({"left": index * (-610) + "px"},1000);
			index ++;
		};
	});

	// 点击大图轮播左右方块
	$(".wave .banner-right").click(function(){
		setWaveFunction();
	});
	$(".wave .banner-left").click(function(){
		setWaveBackFunction();
	});

});

var index = 1;

// 打开大图轮播
var startWave = function(){
	setWave = setInterval(setWaveFunction,5000); 
};

// 复制头尾元素
var setWaveFunction = function(){
	$(".toolBar .bar").removeClass("active");
	$(".toolBar .bar").eq(index%3).addClass("active");
	//console.log(index);
	$(".wave ul").animate({"left": index * (-610) + "px"},1000,function(){
		if(index == 3){
			$(".wave ul").css("left","0px");
			index = 1;
		}else{
			index++;
		}
	});
};

var setWaveBackFunction = function(){
	console.log(index);
	$(".toolBar .bar").removeClass("active");
	if(index == 1){
		index = 3;
		$(".toolBar .bar").eq(2).addClass("active");
	}else{
		index = index - 1;
		$(".toolBar .bar").eq(index-1).addClass("active");
	}
	$(".wave ul").animate({"left": (index-1) * (-610) + "px"},1000);
};

// 触发修改密码模态框
var changePasswordUser = function(){	
	$("#editPasswordUser").modal();
}

// 确认修改密码
var requestChangePasswordUser = function(){
	console.log("change password user!");
	$("#editPasswordUser p").eq(2).css("visibility","hidden");
	
	// 判断两次输入的密码是否一致
	if($("#editPasswordUser input").eq(0).val()!=$("#editPasswordUser input").eq(1).val()){
		$("#editPasswordUser p").eq(2).text("两次输入的密码不一致！！请重新输入！").css("visibility","visible");
		return;
	}
	if($("#editPasswordUser input").eq(0).val()==""){
		$("#editPasswordUser p").eq(2).text("密码不能为空！！").css("visibility","visible");
		return;
	}
	
	$("#editPasswordUser").modal("hide");
	let newPassword = $("#editPasswordUser input").eq(0).val();
	$.ajax({
		type:'post',
		url:'/YH/auth/changePassword.action',
		contentType:'application/json',
		data:'{"password":"'+ newPassword +'"}',
		dataType:'json',
		success:function(data){
			//console.log(data);
			if(data["result"]=="success"){
				alert("密码修改成功！");
			}
		}
	});
}