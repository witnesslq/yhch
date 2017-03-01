// 个人健康摘要管理拉取第一页个人健康摘要
var requestFirstHealth = function(){
	requestAjaxHealthList(parseInt(1));
}

// 拉取 上一页个人健康摘要
var requestBeforeHealth = function(){
	var nowpage = parseInt($("#Healthlist_nowpage").val());
	if(nowpage == 1) return;
	requestAjaxHealthList(nowpage-1);
}

// 拉取下一页数据
var requestNextHealth = function(){
	var nowpage = parseInt($("#Healthlist_nowpage").val());
	requestAjaxHealthList(nowpage+1);
}
//Ajax请求个人健康摘要列表
var requestAjaxHealthList = function(pageNum){
	console.log("Ajax request HealthList");
	$.ajax({
		type:'post',
		url:'/YH/admin/mHealth/mHealthList/'+ pageNum +'.action',
		success:function(data){
			//console.log(data);
			//?? 转成Json格式
            //var JsonData = JSON.parse(data);
            var totalPage = data.pageCount;
            var nowPage = data.pageNow;
            
            //清空 个人健康摘要列表 和 底部页码
			$("#health_table").html("");
			$("#healthBottom").html("");
			
			// 添加个人健康摘要表的title
			var tabletitle = $("<tr><th>摘要序号</th><th>客户编号</th><th>摘要时间</th><th>身高</th>"+
                        "<th>体重</th><th>健康顾问</th><th>高级顾问</th><th>操作</th></tr> ");
			$("#health_table").append(tabletitle);
			
			//添加每一行个人健康摘要信息
            for(var i=0; i<data.mHealthList.length; i++){
            	var perHealth = data.mHealthList[i];
            	
            	// 将摘要时间的时间戳变为2016-12-12显示          	
            	var date = new Date(perHealth.time);
            	var showDate = date.toLocaleDateString().replace(/\//g,"-");
            	
            	var tr = $("<tr><td>"+ perHealth.summaryId +"</td>"+"<td>"+ perHealth.id +"</td>"+
            		 "<td>"+ showDate +"</td>"+"<td>"+ perHealth.height +"</td>"+
            	     "<td>"+ perHealth.weight +"</td>"+"<td>"+ perHealth.healthConsultant +"</td>"+
            	     "<td>"+ perHealth.seniorConsultant +
            	     "<td><span class='spanblue' onclick='HealthDetail("+ perHealth.id +")'>详情</span>&nbsp;&nbsp;&nbsp;&nbsp;"+
            	     "<span class='spanred' onclick='sureDeleteHealth("+ perHealth.id +");'>删除</span></td></tr>");
                $("#health_table").append(tr);
            }
            
            //添加个人健康摘要无条件查询 底部页码
            var bottomPage = $("<div class='bottom-page'>"+ 
                "<span class='page-before' onclick='requestBeforeHealth();'>上一页&nbsp;&nbsp;</span>"+
                "<span><input type='text' id='Healthlist_nowpage' value='"+ nowPage +"' class='input_num'></span>"+
                "<span>&nbsp;/&nbsp;</span>"+
                "<span id='Healthlist_totalpage'>"+ totalPage +"</span>"+
                "<span class='page-next' onclick='requestNextHealth();'>&nbsp;&nbsp;下一页</span></div>");
            $("#healthBottom").append(bottomPage);
		}
	});
}

// 查看用户健康摘要详情
var HealthDetail = function(){
	
}












