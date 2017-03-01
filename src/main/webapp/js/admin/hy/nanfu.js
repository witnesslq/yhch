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
			requestNanfuData(member_id,1);
			return false;
		};
	});
})();

// 新增男妇跳转
var newHynanfu = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/nanfu/nanfuNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取男妇数据
var requestNanfuData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的男妇化验数据");
	$.ajax({
		url:'/YH/admin/hy/nkfk/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hynanfuBottom").html("");

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
				$(".chtscslh").append("<td class='data'>"+ perRecord.chtscslh +"</td>");
				$(".lpcjsfsh").append("<td class='data'>"+ perRecord.lpcjsfsh +"</td>");
				$(".gtt").append("<td class='data'>"+ perRecord.gtt +"</td>");
				$(".cecee").append("<td class='data'>"+ perRecord.cecee +"</td>");
				$(".ytp").append("<td class='data'>"+ perRecord.ytp +"</td>");
				$(".ctmrsprl").append("<td class='data'>"+ perRecord.ctmrsprl +"</td>");
				$(".rtpmrshpl").append("<td class='data'>"+ perRecord.rtpmrshpl +"</td>");
				$(".rmmcxxjs").append("<td class='data'>"+ perRecord.rmmcxxjs +"</td>");

				$(".hpv16").append("<td class='data'>"+ perRecord.hpv16 +"</td>");
				$(".hpv56").append("<td class='data'>"+ perRecord.hpv56 +"</td>");
				$(".hpv18").append("<td class='data'>"+ perRecord.hpv18 +"</td>");
				$(".hpv45").append("<td class='data'>"+ perRecord.hpv45 +"</td>");
				$(".hpv35").append("<td class='data'>"+ perRecord.hpv35 +"</td>");
				$(".hpv59").append("<td class='data'>"+ perRecord.hpv59 +"</td>");
				$(".hpv39").append("<td class='data'>"+ perRecord.hpv39 +"</td>");
				$(".hpv51").append("<td class='data'>"+ perRecord.hpv51 +"</td>");
				$(".hpv58").append("<td class='data'>"+ perRecord.hpv58 +"</td>");
				$(".hpv52").append("<td class='data'>"+ perRecord.hpv52 +"</td>");
				$(".hpv31").append("<td class='data'>"+ perRecord.hpv31 +"</td>");
				$(".hpv33").append("<td class='data'>"+ perRecord.hpv33 +"</td>");
				$(".hpv68").append("<td class='data'>"+ perRecord.hpv68 +"</td>");

				$(".xbl").append("<td class='data'>"+ perRecord.xbl +"</td>");
				$(".jgxb").append("<td class='data'>"+ perRecord.jgxb +"</td>");
				$(".hsxb").append("<td class='data'>"+ perRecord.hsxb +"</td>");
				$(".dcgr").append("<td class='data'>"+ perRecord.dcgr +"</td>");
				$(".mjgr").append("<td class='data'>"+ perRecord.mjgr +"</td>");
				$(".bzgr").append("<td class='data'>"+ perRecord.bzgr +"</td>");
				$(".hpvgr").append("<td class='data'>"+ perRecord.hpvgr +"</td>");
				$(".zd").append("<td class='data'>"+ perRecord.zd +"</td>");
				$(".zdxf").append("<td class='data'>"+ perRecord.zdxf +"</td>");

				$(".qjd").append("<td class='data'>"+ perRecord.qjd +"</td>");
				$(".tlxbxt").append("<td class='data'>"+ perRecord.tlxbxt +"</td>");
				$(".mj").append("<td class='data'>"+ perRecord.mj +"</td>");
				$(".dc").append("<td class='data'>"+ perRecord.dc +"</td>");
				$(".xsxb").append("<td class='data'>"+ perRecord.xsxb +"</td>");
				$(".fxj").append("<td class='data'>"+ perRecord.fxj +"</td>");
				$(".rmj").append("<td class='data'>"+ perRecord.rmj +"</td>");
				$(".rsgj").append("<td class='data'>"+ perRecord.rsgj +"</td>");
				$(".cqbb").append("<td class='data'>"+ perRecord.cqbb +"</td>");
				$(".sjbbpg").append("<td class='data'>"+ perRecord.sjbbpg +"</td>");
			}

			$("#hynanfuBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyNanfu();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hynanfu_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hynanfu_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyNanfu();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验男妇数据
var requestBeforeHyNanfu = function(){
	var nowPage = Number($("#hynanfu_nowpage").val());
	if(nowPage == 1) return;
	requestNanfuData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyNanfu = function(){
	var nowPage = Number($("#hynanfu_nowpage").val());
	var totalPage = Number($("#hynanfu_totalpage").text());
	if(nowPage == totalPage) return;
	requestNanfuData(Number($(".data-input").val()),nowPage+1);
}

// 添加男妇化验记录
var addYhNanfu = function(){}