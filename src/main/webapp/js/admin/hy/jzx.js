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
			requestJzxData(member_id,1);
			return false;
		};
	});
})();

// 新增甲状腺跳转
var newHyJzx = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/jzx/jzxNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取甲状腺数据
var requestJzxData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的甲状腺化验数据");
	$.ajax({
		url:'/YH/admin/hy/jzxdfmw/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyjzxBottom").html("");

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
				$(".zsdjzxyast3").append("<td class='data'>"+ perRecord.zsdjzxyast3 +"</td>");
				$(".zjzxst4").append("<td class='data'>"+ perRecord.zjzxst4 +"</td>");
				$(".ylsdjzxyasft3").append("<td class='data'>"+ perRecord.ylsdjzxyasft3 +"</td>");
				$(".yljzxsft4").append("<td class='data'>"+ perRecord.yljzxsft4 +"</td>");
				$(".cjzxstsh").append("<td class='data'>"+ perRecord.cjzxstsh +"</td>");
				$(".cjzxjssfjstrh").append("<td class='data'>"+ perRecord.cjzxjssfjstrh +"</td>");

				$(".kjzxqdbkttg").append("<td class='data'>"+ perRecord.kjzxqdbkttg +"</td>");
				$(".kjzxgyhwmkttpo").append("<td class='data'>"+ perRecord.kjzxgyhwmkttpo +"</td>");
				$(".cjzxjsstkttrab").append("<td class='data'>"+ perRecord.cjzxjsstkttrab +"</td>");
			}

			$("#hyjzxBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyjzx();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyjzx_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyjzx_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyjzx();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验甲状腺数据
var requestBeforeHyjzx = function(){
	var nowPage = Number($("#hyjzx_nowpage").val());
	if(nowPage == 1) return;
	requestJzxData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyjzx = function(){
	var nowPage = Number($("#hyjzx_nowpage").val());
	var totalPage = Number($("#hyjzx_totalpage").text());
	if(nowPage == totalPage) return;
	requestJzxData(Number($(".data-input").val()),nowPage+1);
}

// 添加甲状腺化验记录
var addYhjzx = function(){}