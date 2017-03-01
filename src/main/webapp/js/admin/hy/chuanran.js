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
			requestChuanranData(member_id,1);
			return false;
		};
	});
})();

// 新增传染病跳转
var newHychuanran = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/chuanran/chuanranNew.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 化验首页跳转
var _healthHome = function(){
	var member_id = Number($(".data-input").val());
	var member_name = $(".table-head .span").text();
	window.location.href = "http://" + window.location.host 
		+ "/YH/views/admin/hy/_healthHome.jsp?member_id=" + member_id + "&member_name=" + member_name;
}

// 获取传染病数据
var requestChuanranData = function(member_id,pageNum){
	console.log("请求会员：" + member_id + "第" + pageNum + "页的传染病化验数据");
	$.ajax({
		url:'/YH/admin/hy/crb/search/'+ member_id +'/'+ pageNum +'.action',
		type:'post',
		success:function(data){
			console.log(data);

			var pageTotal = data.pageCount;
			var dataTotal = data.rowTotal;

			var nowPage = data.pageCurrent;

			// 清空
			$(".data").remove();
			$("#hychuanranBottom").html("");

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
				$(".hbsAg").append("<td class='data'>"+ perRecord.hbsAg +"</td>");
				$(".hbsAb").append("<td class='data'>"+ perRecord.hbsAb +"</td>");
				$(".hbeAg").append("<td class='data'>"+ perRecord.hbeAg+"</td>");
				$(".hbeAb").append("<td class='data'>"+ perRecord.hbeAb +"</td>");
				$(".hbcAb").append("<td class='data'>"+ perRecord.hbcAb +"</td>");

				$(".hbvdna").append("<td class='data'>"+ perRecord.hbvdna +"</td>");
				$(".hcvrna").append("<td class='data'>"+ perRecord.hcvrna +"</td>");

				$(".ahcv").append("<td class='data'>"+ perRecord.ahcv +"</td>");
				$(".hiv").append("<td class='data'>"+ perRecord.hiv +"</td>");
				$(".tpa").append("<td class='data'>"+ perRecord.tpa +"</td>");

				$(".rpr").append("<td class='data'>"+ perRecord.rpr +"</td>");

				$(".igg").append("<td class='data'>"+ perRecord.igg +"</td>");
			}

			$("#hychuanranBottom").append("<div class='bottom-page'><span class='page-before'"+
				"onclick='requestBeforeHyChuanran();'>上一页&nbsp;&nbsp;</span>"+
				"<span><input id='hychuanran_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
				"<span>&nbsp;/&nbsp;</span><span id='hychuanran_totalpage'>"+ pageTotal +"</span>"+
				"<span class='page-next' onclick='requestNextHyChuanran();'>&nbsp;&nbsp;下一页</span>"+
				"<span>&nbsp;&nbsp;&nbsp;&nbsp;共<span class='span'>&nbsp;"+ dataTotal +"</span>&nbsp;条记录</span></div>");
		}
	});
}

// 请求上一个化验传染病数据
var requestBeforeHyChuanran = function(){
	var nowPage = Number($("#hychuanran_nowpage").val());
	if(nowPage == 1) return;
	requestChuanranData(Number($(".data-input").val()),nowPage-1);
}

// 请求下一页化验数据
var requestNextHyChuanran = function(){
	var nowPage = Number($("#hychuanran_nowpage").val());
	var totalPage = Number($("#hychuanran_totalpage").text());
	if(nowPage == totalPage) return;
	requestChuanranData(Number($(".data-input").val()),nowPage+1);
}

// 添加传染病化验记录
var addYhChuanran = function(){}