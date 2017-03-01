(function(){
	// 左栏菜单收缩
	$(".homeMenu").click(function(){
		$(".main-nav").animate({"width":"160px"},300);
	});
	$(".menuOne").click(function(){
		$(".main-nav").animate({"width":"0"},300);
	});

	// 表格鼠标滑过样式
	$("tbody tr").hover(function(){
		$(this).children(".data").toggleClass("hover");
		$(this).children(".project").toggleClass("hover");
		$(this).children(".refer").toggleClass("hover");
	},function(){
		$(this).children(".data").toggleClass("hover");
		$(this).children(".project").toggleClass("hover");
		$(this).children(".refer").toggleClass("hover");
	});

    // Admin页面实时搜索是否存在会员
	$("#member_id").on({
	keyup: function(e){
		$(".table-head .userInfo").css("display","none");
		$(".table-head .warning").css("display","none");
		var member_id = Number($("#member_id").val());
		if(isNaN(member_id)){
			$(".table-head .warning").css("display","block");
			return;
		};
		$.ajax({
				url:'/YH/admin/member/searchMemberNameById/' + member_id + ".action",
				type:'post',
				success:function(data){
					console.log(data);
					if(data){
						$(".table-head .warning").css("display","none");
						$(".table-head .userInfo").css("display","block");
						$(".table-head .userInfo .span").text(data.name);
					}else{
						$(".table-head .userInfo").css("display","none");
						$(".table-head .warning").css("display","block");
					}					
				}
		});
		if(e.keyCode == 13) {
			switch($("#hyType").text()){
				case "心血管化验" : 
					hyPageType = "xxg";
					break;
				case "糖尿病化验" : 
					hyPageType = "tnb";
					break;
				case "腹部及胃肠化验":
					hyPageType = "fubu";
					break;
				case "肾脏泌尿化验" : 
					hyPageType = "shenzang";
					break;
				case "男妇化验":
					hyPageType = "nanfu";
					break;
				case "骨骼及四肢化验":
					hyPageType = "guguanjie";
					break;
				case "甲状腺等内分泌化验":
					hyPageType = "jzx";
					break;
				case "肿瘤化验":
					hyPageType = "zhongliu";
					break;
				case "风湿免疫化验" : 
					hyPageType = "fengshi";
					break;
				case "血液系统化验" : 
					hyPageType = "xueye";
					break;
				case "传染病化验" : 
					hyPageType = "chuanran";
					break;
				case "亚健康化验" : 
					hyPageType = "yjk";
					break;
				default:
					break;
			}
			$.ajax({
				url:'/YH/admin/member/searchMemberNameById/' + member_id + ".action",
				type:'post',
				success:function(data){
					console.log(data);
					if(data){
						window.location.href= "http://" + window.location.host + "/YH/views/admin/hy/"
								+ hyPageType +"/"+ hyPageType +".jsp?member_id="+ member_id +"&member_name=" +data.name;
					}else{
						$(".table-head .userInfo").css("display","none");
						$(".table-head .warning").css("display","block");
					}					
				}
			});
			return false;
		}
	}
});
})();