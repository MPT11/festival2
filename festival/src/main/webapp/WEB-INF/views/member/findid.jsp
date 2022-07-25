<!-- 
/**
 *  아이디 찾기 페이지
 * @author	조희덕
 * @since	2022/07/03
 * @version	v.1.0
 * 			작업이력 ]
 * 				2022.07.03	-	기능 구현
 * 								담당자 : 조희덕
 *
 */
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" type="text/css" href="/festival/css/w3.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/base.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/tmddus.css"/>
<script type="text/javascript" src="/festival/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/festival/js/base.js"></script>
<script type="text/javascript" src="/festival/js/member/tmddus.js"></script>
</head>
<body>
	<div class="w3-content w3-center w600">
		<a href="/festival/"><img src="/festival/img/logo.png" class="blogo"></a>
			<form method="POST" action="" name="frm" id="frm"
				class="w3-col w3-margin-top w3-margin-bottom w3-padding w3-border">
				<div class="w3-border w3-center">
					<h2>아이디 찾기</h2>
					<div>
						<h4>메일로 찾기</h4>
						<input type="text" placeholder="이메일을 적어주세요" id="mail" name="mail">
						<div class="w3-button w3-border" id = "msend">인증</div>
					</div>
					<div>
						<input type="text" placeholder="인증번호" id="fmail" name="fmail">
						<div class="w3-button w3-border" id = "mebtn">확인</div>
					</div>
					<div class="w3-button w3-border" id = "findbtn1">찾기</div>
					<div>
						<h4>핸드폰 번호로 찾기</h4>
						<input type="text" placeholder="번호를 적어주세요" id="tel" name="tel">
						<div class="w3-button w3-border" id = "tsend">인증</div>
					</div>
					<div>
						<input type="text" placeholder="인증번호" id="ftel" name="ftel">
						<div class="w3-button w3-border" id = "tebtn">확인</div>
					</div>				
					<div class="w3-button w3-border" id="findbtn2">찾기</div>
				</div>
			</form>
	</div>
</body>
</html>