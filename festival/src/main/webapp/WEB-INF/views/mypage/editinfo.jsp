<!-- 
/**
 *  회원가입 페이지
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
<title>회원가입 페이지</title>
<link rel="stylesheet" type="text/css" href="/festival/css/w3.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/base.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/tmddus.css"/>
<script type="text/javascript" src="/festival/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/festival/js/base.js"></script>
<script type="text/javascript" src="/festival/js/mypage/mypage.js"></script>
</head>
<body>
	<div class="w3-content w600">
		<a href="/festival/"><img src="/festival/img/logo.png" class="blogo"></a>
			<form method="POST" action="" name="frm" id="frm"
			class="w3-col w3-margin-top w3-margin-bottom w3-padding w3-border">
			<input type="hidden" id="tmail" value="${DATA.mail}">
			<input type="hidden" id="ttel" value="${DATA.tel}">
			<input type="hidden" id="taddr" value="${DATA.addr}">
			<input type="hidden" name="uno" value="${DATA.uno}">
			   <h2 class="w3-center">회원 정보 수정</h2>			
			<div>
				<label for="name" class="f w3-col s3 w3-right-align w3-margin-top">회원이름 : </label>
				<h4 class="lab w3-col s8 w3-input w3-border">${DATA.name}</h4>
			</div>
			<div>
				<label for="id" class="f w3-col s3 w3-right-align">아 이 디 : </label>
				<h4 class="lab w3-col s8 w3-input w3-border">${DATA.id}</h4>
			</div>
			<div>
				<label for="pw" class="f w3-col s3 w3-right-align">비밀번호 : </label>
				<div class="w3-col s8">
					<input type="password" name="pw" id="pw" placeholder="20자 이내의 영문, 숫자" class="lab w3-col w3-input w3-border">
				</div>
			</div>
			<div>
				<label for="repw" class="f w3-col s3 w3-right-align">pw check : </label>
				<div class="w3-col s8">
					<input type="password" id="repw" class="lab w3-col w3-input w3-border">
				</div>
			</div>
			<div>
				<label for="mail" class="f w3-col s3 w3-right-align">회원메일 : </label>
				<input type="text" name="mail" id="mail" class="lab w3-col s8 w3-input w3-border" value="${DATA.mail}">
			</div>
			<div>
				<label for="tel" class="f w3-col s3 w3-right-align">전화번호 : </label>
				<input type="text" name="tel" id="tel" class="lab w3-col s8 w3-input w3-border" value="${DATA.tel}">
			</div>
			<div>
				<label for="mail" class="f w3-col s3 w3-right-align">생년월일 : </label>
				<input type="text" name="birth" id="birth" class="lab w3-col s8 w3-input w3-border" value="${DATA.birth}">
			</div>
			<div>
				<label for="mail" class="f w3-col s3 w3-right-align">주소 : </label>
				<input type="text" name="addr" id="addr" placeholder="OO동" class="lab w3-col s8 w3-input w3-border" value="${DATA.addr}">
			</div>
			<div>
				<label class="f w3-col s3 w3-right-align">회원성별 : </label>
				<h4 class="lab w3-col s8 w3-input w3-border">${DATA.gen eq "M" ? "남자": "여자" }</h4>
			</div>			
		</form>
		<div class="w3-col">
			<div class="w3-button btn-block btn-login w3-black" id="backbtn">뒤로가기</div> 
			<div class="w3-button btn-block btn-login w3-black" id="ebtn" style="float:right;">확인</div> 
		</div>
		
		<div id="msgWin" class="w3-modal">
	    <div class="w3-modal-content w3-animate-top w3-card-4">
			<header class="w3-container w3-red"> 
		        <span class="w3-button w3-display-topright" id="msgClose">&times;</span>
		        <h2>알림 메세지</h2>
			</header>
	    	<div class="w3-container">
	        	<h3 class="w3-center w3-margin-top w3-margin-bottom" id="msg">변경된 내용이 없습니다.</h3>
	    	</div>
	    </div>
 	</div>
	</div>
</body>
</html>