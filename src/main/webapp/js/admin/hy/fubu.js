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
			requestFubuData(member_id,1);
			return false;
		};
	});
})();

// 新增心血管跳转
var newHyFubu = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/fubu/fubuNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取腹部数据
var requestFubuData = function(member_id, pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的腹部化验数据");
	$.ajax({
		url:'/YH/admin/hy/fbjcw/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyfubuBottom").html("");
			
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
				$(".fbys").append("<td class='data'>"+ perRecord.fbys +"</td>");
				$(".fbxz").append("<td class='data'>"+ perRecord.fbxz +"</td>");
				$(".bxb").append("<td class='data'>"+ perRecord.bxb +"</td>");
				$(".hxb").append("<td class='data'>"+ perRecord.hxb +"</td>");
				$(".cl").append("<td class='data'>"+ perRecord.cl +"</td>");
				$(".qxjc").append("<td class='data'>"+ perRecord.qxjc +"</td>");

				$(".basajzym").append("<td class='data'>"+ perRecord.basajzym +"</td>");
				$(".tdasajzym").append("<td class='data'>"+ perRecord.tdasajzym +"</td>");
				$(".gaxjzym").append("<td class='data'>"+ perRecord.gaxjzym +"</td>");
				$(".jxlsm").append("<td class='data'>"+ perRecord.jxlsm +"</td>");
				$(".dayhm").append("<td class='data'>"+ perRecord.dayhm +"</td>");
				$(".tgtam").append("<td class='data'>"+ perRecord.tgtam +"</td>");
				$(".djjm").append("<td class='data'>"+ perRecord.djjm +"</td>");
				$(".yzsgmga").append("<td class='data'>"+ perRecord.yzsgmga +"</td>");

				$(".zdb").append("<td class='data'>"+ perRecord.zdb +"</td>");
				$(".bdb").append("<td class='data'>"+ perRecord.bdb +"</td>");
				$(".qbdb").append("<td class='data'>"+ perRecord.qbdb +"</td>");
				$(".qdb").append("<td class='data'>"+ perRecord.qdb +"</td>");
				$(".bdbzdb").append("<td class='data'>"+ perRecord.bdbzdb +"</td>");
				$(".bdbqdb").append("<td class='data'>"+ perRecord.bdbqdb +"</td>");

				$(".zdhs").append("<td class='data'>"+ perRecord.zdhs +"</td>");
				$(".zjdhs").append("<td class='data'>"+ perRecord.zjdhs +"</td>");
				$(".jjdhs").append("<td class='data'>"+ perRecord.jjdhs +"</td>");
				$(".zdzs").append("<td class='data'>"+ perRecord.zdzs +"</td>");
				$(".lasajtm").append("<td class='data'>"+ perRecord.lasajtm +"</td>");

				// 肝纤维化标志物
				$(".tmzs").append("<td class='data'>"+ perRecord.tmzs +"</td>");
				$(".czldb").append("<td class='data'>"+ perRecord.czldb +"</td>");
				$(".ivxjy").append("<td class='data'>"+ perRecord.ivxjy +"</td>");
				$(".sxqjyndt").append("<td class='data'>"+ perRecord.sxqjyndt +"</td>");

				// 胰腺功能
				$(".dfm").append("<td class='data'>"+ perRecord.dfm +"</td>");
				$(".zfm").append("<td class='data'>"+ perRecord.zfm +"</td>");
				$(".xqydbm").append("<td class='data'>"+ perRecord.xqydbm +"</td>");

				// 血胃蛋白酶原
				$(".xqdbmyy").append("<td class='data'>"+ perRecord.xqdbmyy +"</td>");
				$(".xwdbmye").append("<td class='data'>"+ perRecord.xwdbmye +"</td>");
				$(".xwdbmyye").append("<td class='data'>"+ perRecord.xwdbmyye +"</td>");

				$(".cssnshqsy").append("<td class='data'>"+ perRecord.cssnshqsy +"</td>");
			}

			$("#hyfubuBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyfubu();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyfubu_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyfubu_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyfubu();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验腹部数据
var requestBeforeHyfubu = function(){
	var nowPage = Number($("#hyfubu_nowpage").val());
	if(nowPage == 1) return;
	requestFubuData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyfubu = function(){
	var nowPage = Number($("#hyfubu_nowpage").val());
	var totalPage = Number($("#hyfubu_totalpage").text());
	if(nowPage == totalPage) return;
	requestFubuData(Number($(".data-input").val()),nowPage+1);
}

// 添加腹部化验记录
var addYhfubu = function(){}