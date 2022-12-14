<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자유게시판 글작성</title>
<link href="<c:url value="/resources/css/free.css"/>" rel='stylesheet' />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script	src="https://cdn.ckeditor.com/ckeditor5/32.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>

/*ck에디터*/
$(function() {
	ClassicEditor.create(document.querySelector("#editor"), {
		ckfinder : {
			uploadUrl:"/upload"
		}
	}).then(editor=> {
		window.editor=editor;
	}).catch((error)=>{
		console.error(error);
	});
});

/*유효성검사*/

function valid(){
	if (window.editor.getData() == "") {  //then   window.editor = editor;
	        alert("내용을 입력해주세요");
	        window.editor.editing.view.focus();    
	        return false; 
	 } 
}
</script>
</head>
<body>
	<div>
		<c:import url='/WEB-INF/views/includes/header.jsp' />
	</div>
	<div class="board_wrap">
		<div class="board_title">
			<strong>글 등록</strong>
		</div>
		<form action="freeInsert" method="post" onsubmit="return valid();">
			<div class="board_write_wrap">
				<div class="board_write">
					<div class="title">
						<dl class="dltitle">
							<dt class="dttitle">제목</dt>
							<dd class="ddtitle">
								<input type="text" name="ftitle" id="ftitle" placeholder="제목 입력" required>
							</dd>
						</dl>
					</div>
					<textarea id="editor" name="fcontent"></textarea>
				</div>
				<div id="registview" class="viewregist"></div>
				<div class="bt_wrap_regist">
					<input id="input1" type="submit" value="등록"> 
					<a id="input2" href="freeList">취소</a>
				</div>
			</div>
		</form>
	</div>
	<div>
		<c:import url='/WEB-INF/views/includes/footer.jsp' />
	</div>	
</body>
</html>