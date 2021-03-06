console.log("Reply Module.............");

//replyService
var replyService=(function(){

	// /. add
	function add(reply, callback){ //Ajax를 이용해서 POST방식으로 호출하는 코드를 이용하자.
		console.log("reply............");
		
		$.ajax({
			type:'post',
			url:'/replies/new',
			data:JSON.stringify(reply),
			contentType:"application/json; charset=utf-8",
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error:function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})//end ajax
	} // end add
	
	function getList(param, callback, error){
		var bno=param.bno;
		var page = param.page||1;
		$.getJSON("/replies/pages/"+bno+"/"+page+".json", function(data){
			if(callback){
//				callback(data);//댓글 목록만 가져오는 경우
				callback(data.replyCnt,data.list);//댓글 숫자와 목록을 가져오는 경우
			}
		}).fail(function(xhr,status,err){
			if(error){
				error();
			}
		});
			}// end getList
	
	function remove(rno,replyer, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + rno,
			data:JSON.stringify({rno:rno, replyer:replyer}),
			contentType:"application/json; charset=utf-8",
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	} // end remove
	
	function update(reply, callback, error){
		console.log("RNO: "+reply.rno);
		$.ajax({
			type:'put',
			url:'/replies/'+reply.rno,
			data:JSON.stringify(reply),
			contentType:"application/json; charset=utf-8",
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},error:function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		});
	}// end update
	
	 function get(rno,callback,error){
		 $.get("/replies/"+rno+".json",function(result){
			 if(callback){
				 callback(result);
			 }
		 }).fail(function(xhr,status,err){
			 if(error){
				 error();
			 }
		 });
	 }//end get
	 
	 function displayTime(timeValue){
		 var today = new Date();
		 var gap=today.getTime()-timeValue;
		 var dateObj=new Date(timeValue);
		 var str="";
		 if(gap<(1000*60*60*24)){
			 var hh=dateObj.getHours();
			 var mi=dateObj.getMinutes();
			 var ss=dateObj.getSeconds();
			 return[(hh>9?'':'0')+hh,':',(mi>9?'':'0')+mi,':',(ss>9?'':'0')+ss].join('');
		 }else{
			 var yy=dateObj.getFullYear();
			 var mm=dateObj.getMonth()+1;
			 var dd=dateObj.getDate();
			 return [yy,'/',(mm>9?'':'0')+mm,'/',(dd>9?'':'0')+dd].join('');
			 
		 }
	 }//end displayTime
	
	return{add:add,
		getList:getList,
		remove:remove,
		update:update,
		get:get,
		displayTime:displayTime
	};
	
})();//end replyService