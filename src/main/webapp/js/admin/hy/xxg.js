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
			requestXxgData(member_id,1);
			return false;
		};
	});
})();

// 新增心血管跳转
var newHyXxg = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/xxg/xxgNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取心血管数据
var requestXxgData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的心血管化验数据");
	$.ajax({
		url:'/YH/admin/hy/xxg/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyxxgBottom").html("");

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
				$(".gysz").append("<td class='data'>"+ perRecord.gysz +"</td>");
				$(".zdgc").append("<td class='data'>"+ perRecord.zdgc +"</td>");
				$(".gmdzdbdgc").append("<td class='data'>"+ perRecord.gmdzdbdgc +"</td>");
				$(".fgmdzdbdgc").append("<td class='data'>"+ perRecord.fgmdzdbdgc +"</td>");
				$(".dmdzdbdgc").append("<td class='data'>"+ perRecord.dmdzdbdgc +"</td>");
				$(".tchdlc").append("<td class='data'>"+ perRecord.tchdlc +"</td>");

				$(".zzdba").append("<td class='data'>"+ perRecord.zzdba +"</td>");
				$(".zzdbb").append("<td class='data'>"+ perRecord.zzdbb +"</td>");
				$(".zzdbe").append("<td class='data'>"+ perRecord.zzdbe +"</td>");

				$(".xqzdba").append("<td class='data'>"+ perRecord.xqzdba +"</td>");

				$(".txbpas").append("<td class='data'>"+ perRecord.txbpas +"</td>");
				$(".ys").append("<td class='data'>"+ perRecord.ys +"</td>");
				$(".wssb12").append("<td class='data'>"+ perRecord.wssb12 +"</td>");

				$(".cfydbcrp").append("<td class='data'>"+ perRecord.cfydbcrp +"</td>");
				$(".jsjmckp").append("<td class='data'>"+ perRecord.jsjmckp +"</td>");
				$(".jsjmtgmckmb").append("<td class='data'>"+ perRecord.jsjmtgmckmb +"</td>");
				$(".jsjmtgmmbdl").append("<td class='data'>"+ perRecord.jsjmtgmmbdl +"</td>");
				$(".rstqmldh").append("<td class='data'>"+ perRecord.rstqmldh +"</td>");
				$(".aqdstqm").append("<td class='data'>"+ perRecord.aqdstqm +"</td>");
				$(".jhdbmb").append("<td class='data'>"+ perRecord.jhdbmb +"</td>");
				$(".jgdbl").append("<td class='data'>"+ perRecord.jgdbl +"</td>");
				$(".jgdbt").append("<td class='data'>"+ perRecord.jgdbt +"</td>");
				$(".nlntqt").append("<td class='data'>"+ perRecord.nlntqt +"</td>");
			}

			$("#hyxxgBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyxxg();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyxxg_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyxxg_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyxxg();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验心血管数据
var requestBeforeHyxxg = function(){
	var nowPage = Number($("#hyxxg_nowpage").val());
	if(nowPage == 1) return;
	requestXxgData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyxxg = function(){
	var nowPage = Number($("#hyxxg_nowpage").val());
	var totalPage = Number($("#hyxxg_totalpage").text());
	if(nowPage == totalPage) return;
	requestXxgData(Number($(".data-input").val()),nowPage+1);
}

// 添加心血管化验记录
var addYhxxg = function(){}