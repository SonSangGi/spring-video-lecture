<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/include/style.jsp"%>
<link rel="stylesheet"
	href="/resources/css/instructor/buttons.css?ver=1">
<script type="text/javascript"
	src="/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<style>
	#frm {
		margin-top: 40px;	
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/include/header.jsp"%>
	<div class="container">
		<form action="/instructor/submit.do" method="post" id="frm" enctype="multipart/form-data">
			<div class="form-group">
			<label>공지사항 제목</label>
			<input type="text" class="form-control" name="noticeTitle">
			</div>
			<div class="form-group">
				<a onclick="fileToggle()">이미지 파일 등록</a><i class="fas fa-paperclip"></i></a>
				<input type="file" name="noticeImgFile" style="display:none"  class="form-control">
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea name="noticeContent" id="editor" rows="20" cols="100"  style="width: 100%; height: 200px;"></textarea>
			</div>
			<br>

			
			<div>
				<input type="button" id="btn-submit-notice" value="작성" class="btn-1st-change btn-2rd-change btn-3rd-change" />
<!-- 				<input type="button" id="btn-submit-notice" value="작성" class="btn btn-primary" /> -->
				<input type="button" id="btn-cancel-notice" value="취소" class="btn btn-default" />
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		function fileToggle() {
			$("input[name='noticeImgFile']").click();
		}
		
		 var editerItems = [];
		 var sectionEditerItems = [];
		 var formIndex = 0;
		 
		 function createEditor(el, item) {
		
			 nhn.husky.EZCreator.createInIFrame({
				 oAppRef : item,
				 elPlaceHolder : el,
				 sSkinURI : "/resources/editor/SmartEditor2Skin.html",
				 htParams : {
					// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
					bUseToolbar : true,
					// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
					bUseVerticalResizer : true,
					// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
					bUseModeChanger : true,
				 }	 
			 });			 
		}
		 
		createEditor("editor", editerItems);
		
		// 전송버튼
		$("#btn-submit-notice").click(function() {
			//id가 smarteditor인 textarea 에디터에서 대입
			editerItems.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			for (var i=0; i<formIndex; i++) {
				sectionEditerItems[i].getById['']
				
			}
			//폼 submit
			$("#frm").submit();
		})
		
		
		 
	
	
	</script>
	<%@include file="/WEB-INF/views/include/footer.jsp"%></body>
</html>
