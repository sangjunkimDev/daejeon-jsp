<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>Dashboard Template for Bootstrap</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/dashboard.css" rel="stylesheet">
<%@include file="/include/jquery.jsp" %>
<style type="text/css">
img {
	width: 200px;
	height: 200px;
}
</style>
<script type="text/javascript">
$(function(){
	//회원 정보 삭제 버튼 클릭 이벤트 : 삭제 발생 (post)
	//method : get : 조회할때, post : 서버상에 변경이 일어날때
	$('#deleteUser').on('click', function(){
		//method : post
		//action : /deleteUser
		$('#frm').attr('method', 'post');
		$('#frm').attr('action', '${pageContext.request.contextPath }/deleteUser');
		$('#frm').submit();
		
	})
	
	//회원 정보 수정 버튼 클릭 이벤트 : 회원 수정 화면으로 이동 (get)
	$('#modifyUser').on('click', function(){
		//method : post
		//action : /modifyUser
		$('#frm').attr('method', 'get');
		$('#frm').attr('action', '${pageContext.request.contextPath }/modifyUser');
		$('#frm').submit();
		
		
	})
	
})
</script>
</head>
<body>
	<%@include file="/layout/header.jsp"%>
	<div class="container-fluid">
		<div class="row">

			<%@include file="/layout/left.jsp"%>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<form class="form-horizontal" role="form" id="frm" method="post">
					<input type="hidden" name="mem_id" value="${userVO.mem_id }">
					<div class="form-group">
						<label for="userProfile" class="col-sm-2 control-label">사용자 profile</label>
						<div class="col-sm-10">
							<img alt="${userVO.mem_profile }" src="${pageContext.request.contextPath }${userVO.mem_profile }">
						</div>
					</div>
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 아이디</label>
						<div class="col-sm-10">
							<label class="control-label">${userVO.mem_id }</label>
						</div>
					</div>
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 이름</label>
						<div class="col-sm-10">
							<label class="control-label">${userVO.mem_name }</label>
						</div>
					</div>
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">별명</label>
						<div class="col-sm-10">
							<label class="control-label">${userVO.mem_alias }</label>
						</div>
					</div>
					<div class="form-group">
						<label for="pass" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<label class="control-label">********</label>
						</div>
					</div>
					<div class="form-group">
						<label for="pass" class="col-sm-2 control-label">주소1</label>
						<div class="col-sm-10">
							<label class="control-label">${userVO.mem_add1 }</label>
						</div>
					</div>
					<div class="form-group">
						<label for="pass" class="col-sm-2 control-label">주소2</label>
						<div class="col-sm-10">
							<label class="control-label">${userVO.mem_add2 }</label>
						</div>
					</div>
					<div class="form-group">
						<label for="pass" class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-10">
							<label class="control-label">${userVO.mem_zip }</label>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" id="modifyUser" class="btn btn-default">사용자 수정</button>
							<button type="button" id="deleteUser" class="btn btn-default">사용자 삭제</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>



	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="holder.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>