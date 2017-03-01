// 初始绑定搜索时间事件
(function(){
    $("#searchFeedback").keydown(function(e){
        //console.log(e.keyCode);
        if(e.keyCode == 13){
            // 回车键搜索反馈记录
            searchFeedbackRecord(1);
            return false;
        }
    });
})();

// 反馈管理  拉取第一页反馈
var requestFirstFeedback = function(){
	requestAjaxFeedbackList(parseInt(1));   
}

// 拉取 上一页反馈
var requestBeforeFeedback = function(){
	var nowpage = parseInt($("#feedbacklist_nowpage").val());
	if(nowpage == 1) return;
	requestAjaxFeedbackList(nowpage-1);
}

// 拉取 下一页反馈
var requestNextFeedback = function(){
	var nowpage = parseInt($("#feedbacklist_nowpage").val());
    var totalPage =  parseInt($("#feedbacklist_totalpage").text());
    if(nowpage == totalPage) return;
	requestAjaxFeedbackList(nowpage+1);
}

//Ajax请求反馈列表
var requestAjaxFeedbackList = function(pageNum){
	console.log("Ajax request feedbackList");
	$.ajax({
		type:'post',
		url: "/YH/admin/mFeedback/mFeedbackList/"+ pageNum +'.action',
		success:function(data){
			console.log(data);
			//?? 转成Json格式
            //var JsonData = JSON.parse(data);
            var totalPage = data.pageCount;
            var nowPage = data.pageCurrent;
            
            //清空table和bottonpage			
			$("#feedback_table").html("");
			$("#feedbackBottom").html("");
			
			// 添加反馈表的title
			var tabletitle = $("<tr><th>反馈流水号</th><th>反馈客户编号</th><th>反馈时间</th>"+
                         "<th>反馈内容</th><th>反馈用户手机号</th><th>备注</th></tr> ");
			$("#feedback_table").append(tabletitle);
			
			//添加每一行反馈信息
            for(var i=0; i<data.dataList.length; i++){            	
            	var perfeedback = data.dataList[i];
            	
            	// 将反馈时间的时间戳变为2016-12-12显示          	
            	var date = new Date(perfeedback.time);
            	var showDate = date.toLocaleDateString().replace(/\//g,"-");
            	
            	var tr = $("<tr><td>"+ perfeedback.feedbackId +"</td>"+
            		 "<td>"+ perfeedback.id +"</td>"+"<td>"+ showDate +"</td>"+
            	     "<td>"+ perfeedback.content +"</td>"+"<td>"+ perfeedback.tel +"</td>"+
            	     "<td>"+ perfeedback.note +"</td></tr>");
                $("#feedback_table").append(tr);
            }
            
            //增加反馈信息 底部页码
            var bottomPage = $("<div class='bottom-page'>"+ 
                    "<span class='page-before' onclick='requestBeforeFeedback();'>上一页&nbsp;&nbsp;</span>"+
                    "<span><input type='text' id='feedbacklist_nowpage' class='input_num' value='"+ nowPage +"'></span>"+
                    "<span>&nbsp;/&nbsp;</span><span id='feedbacklist_totalpage'>"+ totalPage +"</span>"+
                    "<span class='page-next' onclick='requestNextFeedback();'>&nbsp;&nbsp;下一页</span></div>");
            $("#feedbackBottom").append(bottomPage);
		}
	});
}

//////////////////////////////////////////////////////////////////
/////////////// 根据 客户id号查询反馈记录

//拉取 上一页 根据客户id搜索反馈记录
var BeforeSearchFeedback = function(){
	var nowpage = parseInt($("#searchFeedback_nowpage").val());
	if(nowpage == 1) return;
	searchFeedbackRecord(nowpage-1);
}

//拉取 下一页 根据客户id搜索反馈记录
var NextSearchFeedback = function(){
	var nowpage = parseInt($("#searchFeedback_nowpage").val());
    var totalPage =  parseInt($("#searchFeedback_totalpage").text());
    if(nowpage == totalPage) return;
	searchFeedbackRecord(nowpage+1);
}

var searchFeedbackRecord = function(pageNum){
	console.log("Ajax search feedbackRecord");
	var member_id = parseInt($("#searchFeedback").val());
	$.ajax({
		type:'post',
		url: "/YH/admin/mFeedback/searchMFeedback/" + member_id +"/"+ pageNum +'.action',
		success:function(data){
			//console.log(data);
			
            //var JsonData = JSON.parse(data);
            var totalPage = data.pageCount;
            var nowPage = data.pageCurrent;
            
            //清空table和bottonpage			
			$("#feedback_table").html("");
			$("#feedbackBottom").html("");

            if(data.dataList.length == 0){
                $("#feedback_table").html("<h4>不存在该反馈记录！</h4>");
                return;
            }
			
			// 添加反馈表的title
			var tabletitle = $("<tr><th>反馈流水号</th><th>反馈客户编号</th><th>反馈时间</th>"+
            "<th>反馈内容</th><th>反馈用户手机号</th><th>备注</th></tr> ");
			$("#feedback_table").append(tabletitle);
			
			//添加每一行反馈信息
            for(var i=0; i<data.dataList.length; i++){            	
            	var perfeedback = data.dataList[i];
            	
            	// 将反馈时间的时间戳变为2016-12-12显示          	
            	var date = new Date(perfeedback.time);
            	var showDate = date.toLocaleDateString().replace(/\//g,"-");
            	
            	var tr = $("<tr><td>"+ perfeedback.feedbackId +"</td>"+
            		 "<td>"+ perfeedback.id +"</td>"+"<td>"+ showDate +"</td>"+
            	     "<td>"+ perfeedback.content +"</td>"+"<td>"+ perfeedback.tel +"</td>"+
            	     "<td>"+ perfeedback.note +"</td></tr>");
                $("#feedback_table").append(tr);
            }
            
            //增加反馈信息 底部页码
            var bottomPage = $("<div class='bottom-page'>"+ 
                    "<span class='page-before' onclick='BeforeSearchFeedback();'>上一页&nbsp;&nbsp;</span>"+
                    "<span><input type='text' id='searchFeedback_nowpage' class='input_num' value='"+ nowPage +"'></span>"+
                    "<span>&nbsp;/&nbsp;</span><span id='searchFeedback_totalpage'>"+ totalPage +"</span>"+
                    "<span class='page-next' onclick='NextSearchFeedback();'>&nbsp;&nbsp;下一页</span></div>");
            $("#feedbackBottom").append(bottomPage);
		}
	});
}
















