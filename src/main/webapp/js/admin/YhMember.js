// 初始绑定搜索时间事件
(function(){
	$("#member_search").keydown(function(e){
		//console.log(e.keyCode);
		if(e.keyCode == 13){
			// 回车键搜索会员
			searchMembersByName(1);
			return false;
		}
	});
})();

// 会员管理拉取第一页会员
var requestFirstMember = function(){
	requestAjaxMemberList(parseInt(1));    
}

// 拉取 上一页会员
var requestBeforeMember = function(){
	var nowpage = parseInt($("#memberlist_nowpage").val());
	if(nowpage == 1) return;
	requestAjaxMemberList(nowpage-1);
}

// 拉取 下一页会员
var requestNextMember = function(){
	var nowpage = parseInt($("#memberlist_nowpage").val());
	var totalPage =  parseInt($("#memberlist_totalpage").text());
	if(nowpage == totalPage) return;
	requestAjaxMemberList(nowpage+1);
}

//Ajax请求会员列表
var requestAjaxMemberList = function(pageNum){
	console.log("Ajax request memberList");
	$.ajax({
		type:'post',
		url: "/YH/admin/member/memberList/"+ pageNum +'.action',
		success:function(data){
			console.log(data);
			//?? 转成Json格式
            //var JsonData = JSON.parse(data);
            var totalPage = data.pageCount;
            var nowPage = data.pageCurrent;
            
            //清空 member的table 和页码
            $("#members_table").html("");
			$("#memberBottom").html("");
			
			// 添加会员表的title
			var tabletitle = $("<tr><th>会员编号</th><th>姓名</th><th>手机号</th>"+
                         "<th>身份证号</th><th>用户等级</th><th>备注</th><th>操作</th></tr> ");
			$("#members_table").append(tabletitle);
			
			//添加每一行会员信息
            for(var i=0; i<data.dataList.length; i++){
            	var permember = data.dataList[i];
            	var tr = $("<tr><td>"+ permember.id +"</td>"+
            		 "<td>"+ permember.name +"</td>"+"<td>"+ permember.tel +"</td>"+
            	     "<td>"+ permember.idcard +"</td>"+"<td>"+ permember.grade +"</td>"+
            	     "<td>"+ permember.note +"</td>"+
            	     "<td><span class='spanblue' onclick='showMemberDetail("+ permember.id +")'>查看</span>&nbsp;&nbsp;&nbsp;&nbsp;"+
            	     "<span class='spanred' onclick='sureDeleteMember("+ permember.id +");'>删除</span></td></tr>");
                $("#members_table").append(tr);
            }
            
            //添加会员列表 底部页码
            var bottomPage = $("<div class='bottom-page'>"+
            	"<span class='page-before' onclick='requestBeforeMember();'>上一页&nbsp;&nbsp;</span>"+
            	"<span><input id='memberlist_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
            	"<span>&nbsp;/&nbsp;</span>"+
            	"<span id='memberlist_totalpage'>"+ totalPage +"</span>"+
                "<span class='page-next' onclick='requestNextMember();'>&nbsp;&nbsp;下一页</span></div>");
            $("#memberBottom").append(bottomPage);
		}
	});
}

//查看会员详细信息页面跳转
var showMemberDetail = function(member_id){
	window.location.href = "/YH/admin/member/searchMemberById/"+ parseInt(member_id) +".action";
}

//////////////////////////////////////////////////////////////////
////////////////////////////根据会员名字搜索会员/////////////////////////

//根据会员名字搜索 拉取 上一页
var BeforeMemberName = function(){
	var nowpage = parseInt($("#searchMemberName_nowpage").val());
	if(nowpage == 1) return;
	searchMembersByName(nowpage-1);
}

//根据会员名字搜索 拉取 下一页
var NextMemberName = function(){
	var nowpage = parseInt($("#searchMemberName_nowpage").val());
	var totalPage =  parseInt($("#searchMemberName_totalpage").text());
	if(nowpage == totalPage) return;
	searchMembersByName(nowpage+1);
}

// 根据会员名字搜索会员
var searchMembersByName = function(pageNum){
	console.log("Ajax request membersByName");
	//获取会员名
	var memberName = $("#member_search").val();
	$.ajax({
		type:'post',
		url: "/YH/admin/member/searchMemberByName/"+memberName+"/"+ parseInt(pageNum)+ ".action",
		success:function(data){
			console.log(data);
			//?? 转成Json格式
            //var JsonData = JSON.parse(data);
            var totalPage = data.pageCount;
            var nowPage = data.pageCurrent;
            
            //清空 member的table 和页码
            $("#members_table").html("");
			$("#memberBottom").html("");
			
			if(data.dataList.length == 0){
				$("#members_table").html("<h4>不存在该会员！</h4>");
				return;
			}
			
			// 添加会员表的title
			var tabletitle = $("<tr><th>会员编号</th><th>姓名</th><th>手机号</th>"+
                         "<th>身份证号</th><th>用户等级</th><th>备注</th><th>操作</th></tr> ");
			$("#members_table").append(tabletitle);
			
			//添加每一行会员信息
			for(var i=0; i<data.dataList.length; i++){
				var permember = data.dataList[i];
            	var tr = $("<tr><td>"+ permember.id +"</td>"+
            		 "<td>"+ permember.name +"</td>"+"<td>"+ permember.tel +"</td>"+
            	     "<td>"+ permember.idcard +"</td>"+"<td>"+ permember.grade +"</td>"+
            	     "<td>"+ permember.note +"</td>"+
            	     "<td><span class='spanblue' onclick='showMemberDetail("+ permember.id +")'>查看</span>&nbsp;&nbsp;&nbsp;&nbsp;"+
            	     "<span class='spanred' onclick='sureDeleteMember("+ permember.id +");'>删除</span></td></tr>");
                $("#members_table").append(tr);
            }
            
            //添加会员列表 底部页码
            var bottomPage = $("<div class='bottom-page'>"+
            	"<span class='page-before' onclick='BeforeMemberName();'>上一页&nbsp;&nbsp;</span>"+
            	"<span><input id='searchMemberName_nowpage' value='"+ nowPage +"' type='text' class='input_num'></span>"+
            	"<span>&nbsp;/&nbsp;</span>"+
            	"<span id='searchMemberName_totalpage'>"+ totalPage +"</span>"+
                "<span class='page-next' onclick='NextMemberName();'>&nbsp;&nbsp;下一页</span></div>");
            $("#memberBottom").append(bottomPage);
		}
	});
}

// 是否确定删除会员
var sureDeleteMember = function(member_id){
	if(confirm("确定要删除会员：" + member_id + "吗？")){
		//删除会员
		console.log("Delete Member " + member_id);
		$.ajax({
			type:'post',
			url: "/YH/admin/member/deleteMember/"+ member_id +'.action',
			success:function(){
				console.log("删除会员成功！");
				// 拉取第一页会员信息
				// !!!页码显示
				requestAjaxMemberList(parseInt(1));
			}
		});
	}
}

// 输入导出文件名
var downloadMemberList = function(){
	var fileName = "memberList.csv";
	exportMemberList(fileName);
}

// 导出会员列表至 excel中
var exportMemberList = function(fileName){
    var BB = self.Blob;
    var content = ",,会员信息表\n会员编号,姓名,手机号,身份证号,用户等级,备注\n";
    $("#members_table tr").each(function(i){
    	   if(i!=0){
    		   content += $(this).children("td").eq(0).text() + "," + $(this).children("td").eq(1).text() + "," +
    		              $(this).children("td").eq(2).text() + "," + $(this).children("td").eq(3).text() + "," +
    		              $(this).children("td").eq(4).text() + "," + $(this).children("td").eq(5).text() + "\n";
    	   } 
        }
    );
    //console.log(content)
        
    saveAs(
          new BB(
              // ["\ufeff" + document.getElementById("content").value] //\ufeff防止utf8 bom防止中文乱码
              ["\ufeff" + content] //\ufeff防止utf8 bom防止中文乱码
            , {type: "text/plain;charset=utf8"}
        )
        , fileName
    );
}






