// 初始绑定搜索时间事件
(function(){
	$("#searchExpertName").keydown(function(e){
		console.log(e.keyCode);
		if(e.keyCode == 13){
			// 回车键搜索专家
			searchExpertByname(1);
			return false;
		}
	});
})();

// 专家管理拉取第一页专家
var requestFirstExpert = function(){
	requestAjaxExpertList(parseInt(1));
}

// 拉取 上一页专家
var requestBeforeExpert = function(){
	var nowpage = parseInt($("#expertlist_nowpage").val());
	if(nowpage == 1) return;
	requestAjaxExpertList(nowpage-1);
}

// 拉取下一页数据
var requestNextExpert = function(){
	var nowpage = parseInt($("#expertlist_nowpage").val());
	var totalPage =  parseInt($("#expertlist_totalpage").text());
	if(nowpage == totalPage) return;
	requestAjaxExpertList(nowpage+1);
}
//Ajax请求专家列表
var requestAjaxExpertList = function(pageNum){
	console.log("Ajax request ExpertList");
	$.ajax({
		type:'post',
		url:'/YH/admin/expert/expertList/'+ pageNum +'.action',
		success:function(data){
			//console.log(data);
            //var JsonData = JSON.parse(data);
            var totalPage = data.pageCount;
            var nowPage = data.pageCurrent;
            
            //清空 专家列表 和 底部页码
			$("#Experts_table").html("");
			$("#expertBottom").html("");
			
			// 添加专家表的title
			var tabletitle = $("<tr><th>专家编号</th><th>姓名</th><th>职称</th><th>医院</th>"+
                        "<th>科室</th><th>出诊时间</th><th>挂号渠道</th><th>特长</th>"+
                        "<th>费用</th><th>录入者</th><th>操作</th></tr> ");
			$("#Experts_table").append(tabletitle);
			
			//!! 返回当前获取的是第几页信息（用于判断是否查询超过总页数）
			
			//添加每一行专家信息
            for(var i=0; i<data.dataList.length; i++){
            	var perExpert = data.dataList[i];
            	var tr = $("<tr><td>"+ perExpert.id +"</td>"+"<td>"+ perExpert.name +"</td>"+
            		 "<td>"+ perExpert.jobTitle +"</td>"+"<td>"+ perExpert.hospital +"</td>"+
            	     "<td>"+ perExpert.department +"</td>"+"<td>"+ perExpert.visitTime +"</td>"+
            	     "<td>"+ perExpert.channel +"</td>"+"<td>"+ perExpert.goodat +"</td>"+
            	     "<td>"+ perExpert.cost +"</td>"+"<td>"+ perExpert.inputer +"</td>"+
            	     "<td><span class='spanblue' onclick='editExpert("+ perExpert.id +")'>编辑</span>&nbsp;&nbsp;&nbsp;&nbsp;"+
            	     "<span class='spanred' onclick='sureDeleteExpert("+ perExpert.id +");'>删除</span></td></tr>");
                $("#Experts_table").append(tr);
            }
            
            //添加专家无条件查询 底部页码
            var bottomPage = $("<div class='bottom-page'>"+ 
                "<span class='page-before' onclick='requestBeforeExpert();'>上一页&nbsp;&nbsp;</span>"+
                "<span><input type='text' id='expertlist_nowpage' value='"+ nowPage +"' class='input_num'></span>"+
                "<span>&nbsp;/&nbsp;</span>"+
                "<span id='expertlist_totalpage'>"+ totalPage +"</span>"+
                "<span class='page-next' onclick='requestNextExpert();'>&nbsp;&nbsp;下一页</span></div>");
            $("#expertBottom").append(bottomPage);
		}
	});
}

////////////////////////////////////////////////////////////////////
//////////////////// 根据专家名字查找专家 /////////////////////////////////

//拉取 上一页 根据专家名搜索专家
var BeforeExpertName = function(){
	var nowpage = parseInt($("#searchExpert_nowpage").val());
	if(nowpage == 1) return;
	searchExpertByname(nowpage-1);
}

// 拉取 下一页 根据专家名搜索专家
var NextExpertName = function(){
	var nowpage = parseInt($("#searchExpert_nowpage").val());
	var totalPage =  parseInt($("#searchExpert_totalpage").text());
	if(nowpage == totalPage) return;
	searchExpertByname(nowpage+1);
}

//根据专家名搜索专家
var searchExpertByname = function(pageNum){
	console.log("Ajax search ExpertByName");
	var expertName = $("#searchExpertName").val();
	$.ajax({
		type:'post',
		url:'/YH/admin/expert/searchexpert/'+ expertName + '/' + pageNum +'.action',
		success:function(data){
			console.log(data);
//            var JsonData = JSON.parse(data);
            
            var totalPage = data.pageCount;
            var nowPage = data.pageCurrent;
            
            //清空 专家列表 和 底部页码
			$("#Experts_table").html("");
			$("#expertBottom").html("");
			
			if(data.dataList.length == 0){
				$("#Experts_table").html("<h4>不存在该专家！</h4>");
				return;
			}
			
			// 添加专家表的title
			var tabletitle = $("<tr><th>专家编号</th><th>姓名</th><th>职称</th><th>医院</th>"+
                    "<th>科室</th><th>出诊时间</th><th>挂号渠道</th><th>特长</th>"+
                    "<th>费用</th><th>录入者</th><th>操作</th></tr> ");
			$("#Experts_table").append(tabletitle);
			
			//添加每一行专家信息
            for(var i=0; i<data.dataList.length; i++){
            	var perExpert = data.dataList[i];
            	var tr = $("<tr><td>"+ perExpert.id +"</td>"+"<td>"+ perExpert.name +"</td>"+
            		 "<td>"+ perExpert.jobTitle +"</td>"+"<td>"+ perExpert.hospital +"</td>"+
            	     "<td>"+ perExpert.department +"</td>"+"<td>"+ perExpert.visitTime +"</td>"+
            	     "<td>"+ perExpert.channel +"</td>"+"<td>"+ perExpert.goodat +"</td>"+
            	     "<td>"+ perExpert.cost +"</td>"+"<td>"+ perExpert.inputer +"</td>"+
            	     "<td><span class='spanblue' onclick='editExpert("+ perExpert.id +")'>编辑</span>&nbsp;&nbsp;&nbsp;&nbsp;"+
            	     "<span class='spanred' onclick='sureDeleteExpert("+ perExpert.id +");'>删除</span></td></tr>");
                $("#Experts_table").append(tr);
            }
            
            //添加专家无条件查询 底部页码
            var bottomPage = $("<div class='bottom-page'>"+ 
                "<span class='page-before' onclick='BeforeExpertName();'>上一页&nbsp;&nbsp;</span>"+
                "<span><input type='text' id='searchExpert_nowpage' value='"+ nowPage +"' class='input_num'></span>"+
                "<span>&nbsp;/&nbsp;</span>"+
                "<span id='searchExpert_totalpage'>"+ totalPage +"</span>"+
                "<span class='page-next' onclick='NextExpertName();'>&nbsp;&nbsp;下一页</span></div>");
            $("#expertBottom").append(bottomPage);
		}
	});
}

//是否确定删除专家
var sureDeleteExpert = function(expert_id){
	if(confirm("确定要删除专家：" + expert_id + "吗？")){
		//删除会员
		console.log("Delete Expert " + expert_id);
		$.ajax({
			type:'post',
			url: "/YH/admin/expert/deleteExpert/"+ expert_id +'.action',
			success:function(){
				console.log("删除专家成功！");
				// 拉取第一页会员信息
				// !!!页码显示
				requestAjaxExpertList(parseInt(1));
			}
		});
	}
}




