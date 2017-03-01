(function(){
	$(".data-input").keyup(function(e){
		$(".no-data").remove();
		var member_id = Number($(".data-input").val());
	    if(isNaN(member_id)){
	    	$(".table-head .span").text("不存在该会员！");
	    	return;
	    }
		$.ajax({
			url:'/YH/admin/member/searchMemberNameById/' + member_id + ".action",
			type:'post',
			success:function(data){
				console.log(data);
				if(data){
					$(".table-head .span").text(data.name);
				}else{
					$(".table-head .span").text("不存在该会员！");
				}					
			}
		});

		if(e.keyCode == 13){
			requestTnbData(member_id,1);
			return false;
		};
	});
})();

// 新增糖尿病跳转
var newHytnb = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/tnb/tnbNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取糖尿病数据
var requestTnbData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的糖尿病化验数据");
	$.ajax({
		url:'/YH/admin/hy/tnb/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hytnbBottom").html("");

			$("table").css("display","table");

			if(dataTotal == 0){
				$("table").css("display","none");
				$(".table-head").after("<div class='no-data'>没有相关数据信息！</div>");
				return;
			}
     		
			for(var i = 0; i < data.dataList.length; i++) {
				var perRecord = data.dataList[i];

				// 医院
				$(".theadFirst").append("<th class='data'>"+ perRecord.yh +"</th>");

				// 日期 将时间戳变为2016-12-12显示          	
            	var cdate = new Date(perRecord.time);
            	var createDate = cdate.toLocaleDateString().replace(/\//g,"-");
				$(".theadDate").append("<th class='data'>"+ createDate +"</th>");

				//其他数据
				$(".thxqdb").append("<td class='data'>"+ perRecord.thxqdb +"</td>");
				$(".thxhdb").append("<td class='data'>"+ perRecord.thxhdb +"</td>");
				$(".pjxtgjz").append("<td class='data'>"+ perRecord.pjxtgjz +"</td>");
				$(".kfxt").append("<td class='data'>"+ perRecord.kfxt +"</td>");
				$(".kfyds").append("<td class='data'>"+ perRecord.kfyds +"</td>");
				$(".kfct").append("<td class='data'>"+ perRecord.kfct +"</td>");
				$(".onext").append("<td class='data'>"+ perRecord.onext +"</td>");
				$(".oneyds").append("<td class='data'>"+ perRecord.oneyds +"</td>");
				$(".onect").append("<td class='data'>"+ perRecord.onect +"</td>");
				$(".twoxt").append("<td class='data'>"+ perRecord.twoxt +"</td>");
				$(".twoyds").append("<td class='data'>"+ perRecord.twoyds +"</td>");
				$(".twoct").append("<td class='data'>"+ perRecord.twoct +"</td>");
				$(".ydxbkt").append("<td class='data'>"+ perRecord.ydxbkt +"</td>");
				$(".ydszskt").append("<td class='data'>"+ perRecord.ydszskt +"</td>");
				$(".gastsmkt").append("<td class='data'>"+ perRecord.gastsmkt +"</td>");
			}

			$("#hytnbBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyTnb();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hytnb_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hytnb_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyTnb();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验糖尿病数据
var requestBeforeHyTnb = function(){
	var nowPage = Number($("#hytnb_nowpage").val());
	if(nowPage == 1) return;
	requestTnbData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyTnb = function(){
	var nowPage = Number($("#hytnb_nowpage").val());
	var totalPage = Number($("#hytnb_totalpage").text());
	if(nowPage == totalPage) return;
	requestTnbData(Number($(".data-input").val()),nowPage+1);
}

// 添加糖尿病化验记录
var addYhTnb = function(){}