<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <script src="./js/jquery-3.7.1.min.js"></script>
    <title>공지사항 쓰기</title>
</head>
<body>
    <div class="card">
        <div class="card-header1">
            <h1><a href="./adminNoticeList.jsp">스타벅스 공지사항 글 등록</a></h1>
        </div>
        <form action="./adminNoticeInsert.jsp" method="post" id="form1" onSubmit="return false">
	        <div class="card-write">
	            <div class="myinfo">
	                이름<input type="text" id="korname" name="korname" placeholder="이름을 입력하세요.">
	                <!-- 
	                비밀번호<input type="password" placeholder="비밀번호를 입력하세요.">
	                -->
	            </div>
	            <div class="title-w">
	                제목<input type="text" name="title" id="title" placeholder="제목을 입력하세요.">
	            </div>
	            <div class="msg">
	                내용<textarea placeholder="내용을 입력하세요." name="content" id="content"></textarea>
	                <input type="file" name="filecontent" id="">
	            </div>
	        </div>
	        <div class="btn-w">
	        	<input type="submit" value="작성" class="input-btn-w" onClick="javascript: prevCheckTextBox();" />
        	</div>
        </form>
    </div>
    
    <script>
    	function prevCheckTextBox() {
    		if (!$('#korname').val()) {			// 이름 관련 dom
    			alert('이름을 입력하세요.');	// 이름 입력하라고 팝업 뜸.
    			$('#korname').focus();			// 이름 입력 칸으로 포커스 이동
    			
    			return;
    		}
    		
    		if ($('#korname').val().length > 10) { 			 // 이름 글자 수 제한 관련 dom	
    			alert('이름을 10자 이내로 입력해 주세요.');	 // 글자 수 맞춰달라고 팝업 뜸
    			$('#korname').focus();						 // 이름 입력 칸으로 포커스 이동
    			
    			return;
    		}
    		
    		if (!$('#title').val()) {			// 제목 관련 dom
    			alert('제목을 입력하세요.');	// 제목 입력하라고 팝업 뜸.
    			$('#title').focus();			// 제목 입력 칸으로 포커스 이동
    			
    			return;
    		}
    		
    		if ($('#title').val().length > 15) {				// 제목 글자 수 제한 관련 dom
    			alert('제목을 20글자 이내로 입력해주세요.');	// 글자 수 맞춰달라고 팝업 뜸
    			$('#title').focus();							// 제목 입력 칸으로 포커스 이동
    			
    			return;
    		}
    		
    		
    		if (!$('#content').val()) {			// 내용 관련 dom
    			alert('내용을 입력하세요.');	// 내용 입력하라고 팝업 뜸.
    			$('#content').focus();			// 내용 입력 칸으로 포커스 이동
    			
    			return;
    		}
    		
    		if ($('#content').val().length > 100) {				// 내용 글자 수제한 관련 dom
    			alert('내용을 100글자 이내로 입력해주세요.');	// 글자 수 맞춰달라고 팝업 뜸
    			$('#content').focus();							// 내용 입력 칸으로 포커스 이동
    			
    			return;
    		}
    			
    		// 실제 form의 action의 값으로 전송
   			document.getElementById('form1').submit();
    	}
    </script>
    
</body>
</html>