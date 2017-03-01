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
			requestZhongliuData(member_id,1);
			return false;
		};
	});
})();

// 新增肿瘤跳转
var newHyzhongliu = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/zhongliu/zhongliuNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取肿瘤数据
var requestZhongliuData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的肿瘤化验数据");
	$.ajax({
		url:'/YH/admin/hy/zl/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyzhongliuBottom").html("");

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
				$(".jtdbafp").append("<td class='data'>"+ perRecord.jtdbafp +"</td>");
				$(".apkycea").append("<td class='data'>"+ perRecord.apkycea +"</td>");
				$(".tlky72").append("<td class='data'>"+ perRecord.tlky72 +"</td>");
				$(".tlky19").append("<td class='data'>"+ perRecord.tlky19 +"</td>");

				$(".xbjzs19").append("<td class='data'>"+ perRecord.xbjzs19 +"</td>");				
				$(".sjytyxchm").append("<td class='data'>"+ perRecord.sjytyxchm +"</td>");

				$(".zqlxxgtyky").append("<td class='data'>"+ perRecord.zqlxxgtyky +"</td>");
				$(".ylqlxxgtyky").append("<td class='data'>"+ perRecord.ylqlxxgtyky +"</td>");

				$(".xqlzspaxgky").append("<td class='data'>"+ perRecord.xqlzspaxgky +"</td>");
				$(".tlky125").append("<td class='data'>"+ perRecord.tlky125 +"</td>");
				$(".tlky15").append("<td class='data'>"+ perRecord.tlky15 +"</td>");

				$(".tlky50").append("<td class='data'>"+ perRecord.tlky50 +"</td>");
				$(".tlky24").append("<td class='data'>"+ perRecord.tlky24 +"</td>");
				$(".xqzzdtkytpa").append("<td class='data'>"+ perRecord.xqzzdtkytpa +"</td>");
				$(".exzlxgyztsgf").append("<td class='data'>"+ perRecord.exzlxgyztsgf +"</td>");

				$(".xhzlxbjcctc").append("<td class='data'>"+ perRecord.xhzlxbjcctc +"</td>");
				$(".ebbddnajc").append("<td class='data'>"+ perRecord.ebbddnajc +"</td>");
			}

			$("#hyzhongliuBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyzhongliu();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyzhongliu_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyzhongliu_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyzhongliu();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验肿瘤数据
var requestBeforeHyzhongliu = function(){
	var nowPage = Number($("#hyzhongliu_nowpage").val());
	if(nowPage == 1) return;
	requestZhongliuData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyzhongliu = function(){
	var nowPage = Number($("#hyzhongliu_nowpage").val());
	var totalPage = Number($("#hyzhongliu_totalpage").text());
	if(nowPage == totalPage) return;
	requestZhongliuData(Number($(".data-input").val()),nowPage+1);
}

// 添加肿瘤化验记录
var addYhzhongliu = function(){}