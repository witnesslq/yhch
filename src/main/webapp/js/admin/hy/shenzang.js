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
			requestShenzangData(member_id,1);
			return false;
		};
	});
})();

// 新增肾脏泌尿跳转
var newHyshenzang = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/shenzang/shenzangNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取肾脏泌尿数据
var requestShenzangData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的肾脏泌尿化验数据");
	$.ajax({
		url:'/YH/admin/hy/szmn/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyshenzangBottom").html("");

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
				$(".ys").append("<td class='data'>"+ perRecord.ys +"</td>");
				$(".zd").append("<td class='data'>"+ perRecord.zd +"</td>");
				$(".bz").append("<td class='data'>"+ perRecord.bz +"</td>");
				$(".sjd").append("<td class='data'>"+ perRecord.sjd +"</td>");
				$(".db").append("<td class='data'>"+ perRecord.db +"</td>");
				$(".nt").append("<td class='data'>"+ perRecord.nt +"</td>");
				$(".ndhs").append("<td class='data'>"+ perRecord.ndhs +"</td>");
				$(".ndy").append("<td class='data'>"+ perRecord.ndy +"</td>");
				$(".ntt").append("<td class='data'>"+ perRecord.ntt +"</td>");
				$(".yxsy").append("<td class='data'>"+ perRecord.yxsy +"</td>");
				$(".hxb").append("<td class='data'>"+ perRecord.hxb +"</td>");
				$(".bxb").append("<td class='data'>"+ perRecord.bxb +"</td>");
				$(".hxbul").append("<td class='data'>"+ perRecord.hxbul +"</td>");
				$(".hxbhfp").append("<td class='data'>"+ perRecord.hxbhfp +"</td>");
				$(".bxbul").append("<td class='data'>"+ perRecord.bxbul +"</td>");
				$(".bxbhtp").append("<td class='data'>"+ perRecord.bxbhtp +"</td>");
				$(".spxbul").append("<td class='data'>"+ perRecord.spxbul +"</td>");
				$(".njjul").append("<td class='data'>"+ perRecord.njjul +"</td>");
				$(".ngxul").append("<td class='data'>"+ perRecord.ngxul +"</td>");

				$(".nsu").append("<td class='data'>"+ perRecord.nsu +"</td>");
				$(".jg").append("<td class='data'>"+ perRecord.jg +"</td>");
				$(".nsuan").append("<td class='data'>"+ perRecord.nsuan +"</td>");
				$(".wqdb").append("<td class='data'>"+ perRecord.wqdb +"</td>");

				$(".xsndbdlpro").append("<td class='data'>"+ perRecord.xsndbdlpro +"</td>");
				$(".yxatgm").append("<td class='data'>"+ perRecord.yxatgm +"</td>");
				$(".nshcdb").append("<td class='data'>"+ perRecord.nshcdb +"</td>");
				$(".nwlbdb").append("<td class='data'>"+ perRecord.nwlbdb +"</td>");
				$(".njg").append("<td class='data'>"+ perRecord.njg +"</td>");
				$(".kswlbdbjg").append("<td class='data'>"+ perRecord.kswlbdbjg +"</td>");
				$(".nonewqdb").append("<td class='data'>"+ perRecord.nonewqdb +"</td>");
				$(".ntwowqdb").append("<td class='data'>"+ perRecord.ntwowqdb +"</td>");

				$(".nsjgqcl").append("<td class='data'>"+ perRecord.nsjgqcl +"</td>");
				$(".sxqlgl").append("<td class='data'>"+ perRecord.sxqlgl +"</td>");
				$(".gys").append("<td class='data'>"+ perRecord.gys +"</td>");

				$(".xwcjjhxb").append("<td class='data'>"+ perRecord.xwcjjhxb +"</td>");

				$(".jk").append("<td class='data'>"+ perRecord.jk +"</td>");
				$(".nna").append("<td class='data'>"+ perRecord.nna +"</td>");
				$(".lcl").append("<td class='data'>"+ perRecord.lcl +"</td>");
				$(".gga").append("<td class='data'>"+ perRecord.gga +"</td>");
				$(".mmg").append("<td class='data'>"+ perRecord.mmg +"</td>");
				$(".wjlp").append("<td class='data'>"+ perRecord.wjlp +"</td>");
				$(".xeyhtzl").append("<td class='data'>"+ perRecord.xeyhtzl +"</td>");
			}

			$("#hyshenzangBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyShenzang();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyshenzang_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyshenzang_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyShenzang();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验肾脏泌尿数据
var requestBeforeHyShenzang = function(){
	var nowPage = Number($("#hyshenzang_nowpage").val());
	if(nowPage == 1) return;
	requestShenzangData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyShenzang = function(){
	var nowPage = Number($("#hyshenzang_nowpage").val());
	var totalPage = Number($("#hyshenzang_totalpage").text());
	if(nowPage == totalPage) return;
	requestShenzangData(Number($(".data-input").val()),nowPage+1);
}

// 添加肾脏泌尿化验记录
var addYhShenzang = function(){}