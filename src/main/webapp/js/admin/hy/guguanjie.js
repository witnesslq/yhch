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
			requestGuguanjieData(member_id,1);
			return false;
		};
	});
})();

// 新增骨骼及四肢跳转
var newHyGuguanjie = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/guguanjie/guguanjieNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取骨骼及四肢数据
var requestGuguanjieData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的骨骼及四肢化验数据");
	$.ajax({
		url:'/YH/admin/hy/ggjsz/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hyguguanjieBottom").html("");

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
				$(".jgs").append("<td class='data'>"+ perRecord.jgs +"</td>");
				$(".ggsbgp").append("<td class='data'>"+ perRecord.ggsbgp +"</td>");
				$(".jzpxjspth").append("<td class='data'>"+ perRecord.jzpxjspth +"</td>");
				$(".qjwss").append("<td class='data'>"+ perRecord.qjwss +"</td>");
				$(".jyjjcw").append("<td class='data'>"+ perRecord.jyjjcw +"</td>");
				$(".xjyqjqdt").append("<td class='data'>"+ perRecord.xjyqjqdt +"</td>");
			}

			$("#hyguguanjieBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyguguanjie();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hyguguanjie_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hyguguanjie_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyguguanjie();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验骨骼及四肢数据
var requestBeforeHyguguanjie = function(){
	var nowPage = Number($("#hyguguanjie_nowpage").val());
	if(nowPage == 1) return;
	requestGuguanjieData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyguguanjie = function(){
	var nowPage = Number($("#hyguguanjie_nowpage").val());
	var totalPage = Number($("#hyguguanjie_totalpage").text());
	if(nowPage == totalPage) return;
	requestGuguanjieData(Number($(".data-input").val()),nowPage+1);
}

// 添加骨骼及四肢化验记录
var addYhguguanjie = function(){}