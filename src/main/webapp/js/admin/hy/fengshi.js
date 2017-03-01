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
			requestFengshiData(member_id,1);
			return false;
		};
	});
})();

// 新增风湿跳转
var newHyfengshi = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/fengshi/fengshiNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取风湿数据
var requestFengshiData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的风湿化验数据");
	$.ajax({
		url:'/YH/admin/hy/fsmy/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyfengshiBottom").html("");

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
				$(".myqdbg").append("<td class='data'>"+ perRecord.myqdbg +"</td>");
				$(".myqdba").append("<td class='data'>"+ perRecord.myqdba +"</td>");
				$(".myqdbm").append("<td class='data'>"+ perRecord.myqdbm +"</td>");
				$(".myqdbe").append("<td class='data'>"+ perRecord.myqdbe +"</td>");
				$(".myqdbkap").append("<td class='data'>"+ perRecord.myqdbkap +"</td>");
				$(".myqdblam").append("<td class='data'>"+ perRecord.myqdblam +"</td>");
				$(".zbtxj").append("<td class='data'>"+ perRecord.zbtxj +"</td>");
				$(".xqbtc3").append("<td class='data'>"+ perRecord.xqbtc3 +"</td>");
				$(".xqbtc4").append("<td class='data'>"+ perRecord.xqbtc4 +"</td>");

				$(".xhxbcjesr").append("<td class='data'>"+ perRecord.xhxbcjesr +"</td>");
				$(".klqjrxso").append("<td class='data'>"+ perRecord.klqjrxso +"</td>");
				$(".lfsyzrf").append("<td class='data'>"+ perRecord.lfsyzrf +"</td>");
				$(".khktana").append("<td class='data'>"+ perRecord.khktana +"</td>");
				$(".ksldnakt").append("<td class='data'>"+ perRecord.ksldnakt +"</td>");
				$(".xqdbdyfx").append("<td class='data'>"+ perRecord.xqdbdyfx +"</td>");

				$(".k2TDB1KTLGM").append("<td class='data'>"+ perRecord.k2TDB1KTLGM +"</td>");
				$(".k2TDB1KTLGG").append("<td class='data'>"+ perRecord.k2TDB1KTLGG +"</td>");
				$(".k2TDB1KTLGA").append("<td class='data'>"+ perRecord.k2TDB1KTLGA +"</td>");
				$(".kxlzktjc").append("<td class='data'>"+ perRecord.kxlzktjc +"</td>");

				$(".blbxbjccd19").append("<td class='data'>"+ perRecord.blbxbjccd19 +"</td>");
				$(".blbxbbfs").append("<td class='data'>"+ perRecord.blbxbbfs +"</td>");
				$(".tlbxbjccd3").append("<td class='data'>"+ perRecord.tlbxbjccd3 +"</td>");
				$(".tlbxbbfs").append("<td class='data'>"+ perRecord.tlbxbbfs +"</td>");
				$(".fzxtlbxbyqjc").append("<td class='data'>"+ perRecord.fzxtlbxbyqjc +"</td>");
				$(".cd4CD3").append("<td class='data'>"+ perRecord.cd4CD3 +"</td>");
				$(".cd4LYM").append("<td class='data'>"+ perRecord.cd4LYM +"</td>");
				$(".yzxtlbxbyqjccd8").append("<td class='data'>"+ perRecord.yzxtlbxbyqjccd8 +"</td>");
				$(".cd8CD3").append("<td class='data'>"+ perRecord.cd8CD3 +"</td>");
				$(".cd8LYM").append("<td class='data'>"+ perRecord.cd8LYM +"</td>");
				$(".cd4YCD8YQBZ").append("<td class='data'>"+ perRecord.cd4YCD8YQBZ +"</td>");
				$(".cd483").append("<td class='data'>"+ perRecord.cd483 +"</td>");
				$(".zrsstxbhx").append("<td class='data'>"+ perRecord.zrsstxbhx +"</td>");
				$(".cd45").append("<td class='data'>"+ perRecord.cd45 +"</td>");
			}

			$("#hyfengshiBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyFengshi();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyfengshi_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyfengshi_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyFengshi();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验风湿数据
var requestBeforeHyFengshi = function(){
	var nowPage = Number($("#hyfengshi_nowpage").val());
	if(nowPage == 1) return;
	requestFengshiData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyFengshi = function(){
	var nowPage = Number($("#hyfengshi_nowpage").val());
	var totalPage = Number($("#hyfengshi_totalpage").text());
	if(nowPage == totalPage) return;
	requestFengshiData(Number($(".data-input").val()),nowPage+1);
}

// 添加风湿化验记录
var addYhFengshi = function(){}