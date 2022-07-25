<!-- 
/**
 *  비밀번호 찾기 결과 페이지
 * @author	조희덕
 * @since	2022/07/03
 * @version	v.1.0
 * 			작업이력 ]
 * 				2022.07.03	-	기능 구현
 * 								담당자 : 조희덕 이승연
 *
 */
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 바꾸기</title>
<link rel="stylesheet" type="text/css" href="/festival/css/w3.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/base.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/tmddus.css"/>
<script type="text/javascript" src="/festival/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/festival/js/base.js"></script>
<script type="text/javascript" src="/festival/js/member/tmddus.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
<div class="w3-content w3-center w600">
		<a href="/festival/"><img src="/festival/img/logo.png" class="blogo"></a>
		<form method="POST" action="" name="frm" id="frm">
			<input type="hidden" name="id" value="${id}">
			<class="w3-col w3-margin-top w3-margin-bottom w3-padding w3-border">
			<div class="w3-border w3-center">
				<h2>비밀번호 바꾸기</h2>
				<h4>비밀번호를 새로 입력해주세요</h4>
				<input type="text" placeholder="비밀번호" id="pw" name="pw"><br>
				<input type="text" placeholder="비밀번호 확인" id="fpwck" name="fpwck"><br>
				<div class="w3-button" id = "findbtn4">바꾸기</div>
			</div>
		</form>
</div>


</body>
</html>