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
			requestXueyeData(member_id,1);
			return false;
		};
	});
})();

// 新增血液系统跳转
var newHyxueye = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/xueye/xueyeNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取血液系统数据
var requestXueyeData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的血液系统化验数据");
	$.ajax({
		url:'/YH/admin/hy/xyxt/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyxueyeBottom").html("");

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
				$(".hxbjs").append("<td class='data'>"+ perRecord.hxbjs +"</td>");
				$(".xhdbcd").append("<td class='data'>"+ perRecord.xhdbcd +"</td>");
				$(".hxbyj").append("<td class='data'>"+ perRecord.hxbyj +"</td>");
				$(".pjhxbtj").append("<td class='data'>"+ perRecord.pjhxbtj +"</td>");
				$(".pjhxbxhdbl").append("<td class='data'>"+ perRecord.pjhxbxhdbl +"</td>");
				$(".pjhxbxhdbnd").append("<td class='data'>"+ perRecord.pjhxbxhdbnd +"</td>");
				$(".bxbjs").append("<td class='data'>"+ perRecord.bxbjs +"</td>");
				$(".zxlxbbfb").append("<td class='data'>"+ perRecord.zxlxbbfb +"</td>");
				$(".lbxbbfb").append("<td class='data'>"+ perRecord.lbxbbfb +"</td>");
				$(".cslxbbfb").append("<td class='data'>"+ perRecord.cslxbbfb +"</td>");
				$(".cjlxbbfb").append("<td class='data'>"+ perRecord.cjlxbbfb +"</td>");
				$(".dhxbbfb").append("<td class='data'>"+ perRecord.dhxbbfb +"</td>");
				$(".xcgxxbjs").append("<td class='data'>"+ perRecord.xcgxxbjs +"</td>");
				$(".pjxxbtj").append("<td class='data'>"+ perRecord.pjxxbtj +"</td>");
				$(".wzhxbbfb").append("<td class='data'>"+ perRecord.wzhxbbfb +"</td>");

				$(".ptt6LSTQM").append("<td class='data'>"+ perRecord.ptt6LSTQM+"</td>");

				$(".xqtfe").append("<td class='data'>"+ perRecord.xqtfe +"</td>");
				$(".bhdtibc").append("<td class='data'>"+ perRecord.bhdtibc +"</td>");
				$(".bbhtjhluibc").append("<td class='data'>"+ perRecord.bbhtjhluibc +"</td>");
				$(".ztjhl").append("<td class='data'>"+ perRecord.ztjhl +"</td>");
				$(".xqtdbferr").append("<td class='data'>"+ perRecord.xqtdbferr +"</td>");

				$(".xwdbyfg").append("<td class='data'>"+ perRecord.xwdbyfg +"</td>");
				$(".nxmysjpt").append("<td class='data'>"+ perRecord.nxmysjpt +"</td>");
				$(".hxbfnxhmsjaptt").append("<td class='data'>"+ perRecord.hxbfnxhmsjaptt +"</td>");
				$(".nxmyhddpa").append("<td class='data'>"+ perRecord.nxmyhddpa +"</td>");

				$(".gjbzhbzinr").append("<td class='data'>"+ perRecord.gjbzhbzinr +"</td>");
				$(".nxmsjtt").append("<td class='data'>"+ perRecord.nxmsjtt +"</td>");
				$(".knxm3HXAT3").append("<td class='data'>"+ perRecord.knxm3HXAT3 +"</td>");

				$(".dejtdd").append("<td class='data'>"+ perRecord.dejtdd +"</td>");
				$(".xrmyplg").append("<td class='data'>"+ perRecord.xrmyplg +"</td>");
				$(".xwdbjjcwfgdp").append("<td class='data'>"+ perRecord.xwdbjjcwfgdp +"</td>");

				$(".xxbjs").append("<td class='data'>"+ perRecord.xxbjs +"</td>");
				$(".xkss").append("<td class='data'>"+ perRecord.xkss +"</td>");
				$(".xxbnf").append("<td class='data'>"+ perRecord.xxbnf +"</td>");
				$(".xxbjj").append("<td class='data'>"+ perRecord.xxbjj +"</td>");
				$(".xxbd3YZYXX").append("<td class='data'>"+ perRecord.xxbd3YZYXX +"</td>");
				$(".xxbd4YZ").append("<td class='data'>"+ perRecord.xxbd4YZ +"</td>");
				$(".xxbqdb").append("<td class='data'>"+ perRecord.xxbqdb +"</td>");

				$(".qxqbl").append("<td class='data'>"+ perRecord.qxqbl +"</td>");
				$(".is1").append("<td class='data'>"+ perRecord.is1 +"</td>");
				$(".is5").append("<td class='data'>"+ perRecord.is5 +"</td>");
				$(".is30").append("<td class='data'>"+ perRecord.is30 +"</td>");
				$(".is200").append("<td class='data'>"+ perRecord.is200 +"</td>");
			}

			$("#hyxueyeBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyXueye();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyxueye_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyxueye_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyXueye();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验血液系统数据
var requestBeforeHyXueye = function(){
	var nowPage = Number($("#hyxueye_nowpage").val());
	if(nowPage == 1) return;
	requestXueyeData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyXueye = function(){
	var nowPage = Number($("#hyxueye_nowpage").val());
	var totalPage = Number($("#hyxueye_totalpage").text());
	if(nowPage == totalPage) return;
	requestXueyeData(Number($(".data-input").val()),nowPage+1);
}

// 添加血液系统化验记录
var addYhXueye = function(){}