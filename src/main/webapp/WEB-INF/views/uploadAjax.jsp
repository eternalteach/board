<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class='bigPictureWrapper'>
<div class='bigPicture'>
</div>
</div>
<Style>
.uploadResult{
width:100%;
background-color:gray;
}

.uploadResult ul{
display:flex;
flex-flow:row;
justify-content:center;
align-items:center;
}

.uploadResult ul li{
list-style: none;
padding: 10px;
align-content:center;
text-align:center;
}
.uploadResult ul li img{
width:100px;
}
.uploadResult ul li span{
color:white;
}
.bigPictureWrapper{
position:absolute;
display:none;
justify-content: center;
align-items:center;
top:0%;
width:100%;
height:100%;
background-color:gray;
z-index:100;
background:rgba(255,255,255,0.5);
}
.bigPicture{
position: relative;
display:flex;
justify-content:center;
align-items:center;
}
.bigPicture img{
width:600px;
}
</Style>
        	<!-- jquery -->
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQ1LNfOu91ta32o/NMZx1twRo8QtmkMRdAu8="
	crossorigin="anonymous"></script> -->

<h1>upload with Ajax</h1>
<div class='uploadDiv'>
<input type='file' name='uploadFile' multiple>
</div>
<div class='uploadResult'>
<ul></ul>
</div>


<button id='uploadBtn'>Upload</button>
<script>
// $(document).ready()밖에 하는 이유는 나중에 a태그에서 직접 showImage를 호출할 수 있는 방식으로 작성하기 위해서다. 
function showImage(fileCallPath){
	//alert(fileCallPath);
	$(".bigPictureWrapper").css("display","flex").show();
	$(".bigPicture").html("<img src='/display?fileName="+encodeURI(fileCallPath)+"'>").animate({width:'100%',height:'100%'},1000);
	
	// 큰 사진 클릭시 종료
	$(".bigPictureWrapper").on("click",function(e){
		$(".bigPicture").animate({width:'0%',height:'0%'},1000);
		setTimeout(function(){
			$('.bigPictureWrapper').hide();
		},1000);
	}); //end 큰 사진 이벤트
}//end showImage

$(document).ready(function(){
	// 첨부파일 이름을 목록으로 보여주는 부분
	var uploadResult = $(".uploadResult ul");
	
	// 목록 보여주는 함수
	function showUploadedFile(uploadResultArr){
		var str="";
		$(uploadResultArr).each(function(i,obj){
			if(!obj.image){
				var fileCallPath=encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
				var fileLink=fileCallPath.replace(new RegExp(/\\/g),"/");
				
				str+="<li><div><a href='/download?fileName="+fileCallPath+"'>"+"<img src='/resources/img/attach.png'>"+obj.fileName+"</a>"+"<span data-file=\'"+fileCallPath+"\'data-type='file'>x</span>"+"<div></li>";
			}else{
				//str+="<li>"+obj.fileName+"</li>";
			var fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
			var originPath = obj.uploadPath+"\\"+obj.uuid+"_"+obj.fileName;
			originPath = originPath.replace(new RegExp(/\\/g),"/");
			
			str+="<li><a href=\"javascript:showImage(\'"+originPath+"\')\">"+"<img src='/display?fileName="+fileCallPath+"'></a>"+"<span data-file=\'"+fileCallPath+"\'data-type='image'>x</span>"+"</li>";
			}
		});
		uploadResult.append(str);
	} // end 첨부파일 이름을 목록으로 보여주는 부분
	
	
	
	var cloneObj=$(".uploadDiv").clone();
	
	// upload버튼 클릭 이벤트
	$("#uploadBtn").on("click",function(e){
	var formData= new FormData();
	var inputFile = $("input[name='uploadFile']");
	var files=inputFile[0].files;
	console.log(files);
	
	//add filedate to formdata
	for(var i=0; i<files.length; i++){
		if(!checkExtension(files[i].name, files[i].size)){
			return false;
		}
		
		formData.append("uploadFile",files[i]);
	}//end for
	
	$.ajax({
		url:'/uploadAjaxAction',
		processData: false,
		contentType: false,
		data: formData,
		type:'POST',
		dataType:'json',
		success: function(result){
		console.log(result);
		
		showUploadedFile(result);
		
		$(".uploadDiv").html(cloneObj.html());
		
		}
	});//end ajax
	}); // end upload버튼 클릭 이벤트
	
	// 파일의 확장자와 크기 설정하고 이를 검사하는 함수
	var regex=new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize=5242880; //5MB
	
	function checkExtension(fileName, fileSize){
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
		return false;
		}
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return true;
	}	// end 파일의 확장자와 크기 설정하고 이를 검사하는 함수
	
	// 첨부파일 삭제 이벤트 작성
	$(".uploadResult").on("click","span",function(e){
		var targetFile=$(this).data("file");
		var type=$(this).data("type");
		console.log(targetFile);
		
		$.ajax({
			url:'deleteFile',
			data:{fileName:targetFile,type:type},
			dataType:'text',
			type:'POST',
			success:function(result){
				alert(result);
			}
		});//end $.ajax
	});// end uploadResult (첨부파일 삭제 이벤트)
	
}); // end ready
</script>
</body>
</html>