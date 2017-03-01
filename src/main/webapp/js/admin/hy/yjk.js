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
			requestYjkData(member_id,1);
			return false;
		};
	});
})();

// 新增亚健康跳转
var newHyYjk = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/yjk/yjkNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取亚健康数据
var requestYjkData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的亚健康化验数据");
	$.ajax({
		url:'/YH/admin/hy/yjk/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyyjkBottom").html("");

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
				$(".wssa").append("<td class='data'>"+ perRecord.wssa +"</td>");
				$(".wssd").append("<td class='data'>"+ perRecord.wssd +"</td>");
				$(".wsse").append("<td class='data'>"+ perRecord.wsse+"</td>");
				$(".wssb9").append("<td class='data'>"+ perRecord.wssb9 +"</td>");
				$(".wssb12").append("<td class='data'>"+ perRecord.wssb12 +"</td>");
				$(".wssb1").append("<td class='data'>"+ perRecord.wssb1 +"</td>");
				$(".wssc").append("<td class='data'>"+ perRecord.wssc +"</td>");
				$(".wssb2").append("<td class='data'>"+ perRecord.wssb2 +"</td>");
				$(".wssb6").append("<td class='data'>"+ perRecord.wssb6 +"</td>");

				$(".mygn").append("<td class='data'>"+ perRecord.mygn +"</td>");
				$(".exzlwxys").append("<td class='data'>"+ perRecord.exzlwxys +"</td>");
				$(".lxzk").append("<td class='data'>"+ perRecord.lxzk +"</td>");
				$(".gai").append("<td class='data'>"+ perRecord.gai +"</td>");
				$(".tie").append("<td class='data'>"+ perRecord.tie+"</td>");
				$(".xin").append("<td class='data'>"+ perRecord.xin +"</td>");
				$(".xi").append("<td class='data'>"+ perRecord.xi +"</td>");
				$(".tong").append("<td class='data'>"+ perRecord.tong +"</td>");				
				$(".nie").append("<td class='data'>"+ perRecord.nie +"</td>");
				$(".ge1").append("<td class='data'>"+ perRecord.ge1 +"</td>");
				$(".ge2").append("<td class='data'>"+ perRecord.ge2 +"</td>");
				$(".qian").append("<td class='data'>"+ perRecord.qian +"</td>");

				$(".swbnsjc").append("<td class='data'>"+ perRecord.swbnsjc +"</td>");

				$(".gmyjc").append("<td class='data'>"+ perRecord.gmyjc +"</td>");

				$(".mthfr").append("<td class='data'>"+ perRecord.mthfr +"</td>");
				$(".aldh2").append("<td class='data'>"+ perRecord.aldh2 +"</td>");

				$(".tz").append("<td class='data'>"+ perRecord.tz +"</td>");
				$(".qztz").append("<td class='data'>"+ perRecord.qztz +"</td>");
				$(".jrl").append("<td class='data'>"+ perRecord.jrl +"</td>");
				$(".ggj").append("<td class='data'>"+ perRecord.ggj +"</td>");
				$(".stsf").append("<td class='data'>"+ perRecord.stsf +"</td>");
				$(".xbny").append("<td class='data'>"+ perRecord.xbny +"</td>");
				$(".xbwy").append("<td class='data'>"+ perRecord.xbwy +"</td>");
				$(".dbz").append("<td class='data'>"+ perRecord.dbz +"</td>");
				$(".wjy").append("<td class='data'>"+ perRecord.wjy +"</td>");
				$(".tzfl").append("<td class='data'>"+ perRecord.tzfl +"</td>");

				$(".jrzffxtz").append("<td class='data'>"+ perRecord.jrzffxtz +"</td>");
				$(".stzlzs").append("<td class='data'>"+ perRecord.stzlzs +"</td>");
				$(".jrzffxtzfl").append("<td class='data'>"+ perRecord.jrzffxtzfl +"</td>");
				$(".jrzffxjrl").append("<td class='data'>"+ perRecord.jrzffxjrl +"</td>");

				$(".nzzfsp").append("<td class='data'>"+ perRecord.nzzfsp +"</td>");
				$(".nzzfmj").append("<td class='data'>"+ perRecord.nzzfmj +"</td>");
				$(".ytb").append("<td class='data'>"+ perRecord.ytb +"</td>");
				$(".nzzfl").append("<td class='data'>"+ perRecord.nzzfl +"</td>");
				$(".pxzfl").append("<td class='data'>"+ perRecord.pxzfl +"</td>");

				$(".txpd").append("<td class='data'>"+ perRecord.txpd +"</td>");

				$(".yypgdbz").append("<td class='data'>"+ perRecord.yypgdbz +"</td>");
				$(".yypgwjy").append("<td class='data'>"+ perRecord.yypgwjy +"</td>");
				$(".yypgxbl").append("<td class='data'>"+ perRecord.yypgxbl +"</td>");
				$(".jcdxl").append("<td class='data'>"+ perRecord.jcdxl +"</td>");
				$(".bykll").append("<td class='data'>"+ perRecord.bykll +"</td>");
				$(".stnl").append("<td class='data'>"+ perRecord.stnl +"</td>");
				$(".zk").append("<td class='data'>"+ perRecord.zk +"</td>");

				$(".fppgtz").append("<td class='data'>"+ perRecord.fppgtz +"</td>");
				$(".fppgtzfl").append("<td class='data'>"+ perRecord.fppgtzfl +"</td>");
				$(".fppgjrl").append("<td class='data'>"+ perRecord.fppgjrl +"</td>");

				$(".fzcd").append("<td class='data'>"+ perRecord.fzcd +"</td>");

				$(".xqtong").append("<td class='data'>"+ perRecord.xqtong +"</td>");
				$(".xqtie").append("<td class='data'>"+ perRecord.xqtie +"</td>");
				$(".xqxin").append("<td class='data'>"+ perRecord.xqxin +"</td>");
				$(".xqmei").append("<td class='data'>"+ perRecord.xqmei +"</td>");

				$(".qxqian").append("<td class='data'>"+ perRecord.qxqian +"</td>");
				$(".qxge").append("<td class='data'>"+ perRecord.qxge +"</td>");
				$(".qxmeng").append("<td class='data'>"+ perRecord.qxmeng +"</td>");
				$(".qxxi").append("<td class='data'>"+ perRecord.qxxi +"</td>");
			}

			$("#hyyjkBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyyjk();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyyjk_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyyjk_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyyjk();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验亚健康数据
var requestBeforeHyyjk = function(){
	var nowPage = Number($("#hyyjk_nowpage").val());
	if(nowPage == 1) return;
	requestYjkData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyyjk = function(){
	var nowPage = Number($("#hyyjk_nowpage").val());
	var totalPage = Number($("#hyyjk_totalpage").text());
	if(nowPage == totalPage) return;
	requestYjkData(Number($(".data-input").val()),nowPage+1);
}

// 添加亚健康化验记录
var addYhyjk = function(){}