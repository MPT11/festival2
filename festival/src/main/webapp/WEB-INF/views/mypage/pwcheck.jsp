<!-- 
/**
 *  pw check 페이지
 * @author	조희덕
 * @since	2022/07/15
 * @version	v.1.0
 * 			작업이력 ]
 * 				2022.07.15	-	기능 구현
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
<title>check</title>
<link rel="stylesheet" type="text/css" href="/festival/css/w3.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/base.css"/>
<link rel="stylesheet" type="text/css" href="/festival/css/tmddus.css"/>
<script type="text/javascript" src="/festival/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/festival/js/base.js"></script>
<script type="text/javascript" src="/festival/js/mypage/mypage.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<div class="w3-content w3-center">
		<a href="/festival/"><img src="/festival/img/logo.png" class="blogo"></a>
		<div class="container w3-center w3-padding">
	 <div class="box w600 w3-margin-top w3-border w3-padding">
    <h2>check</h2>
	<form method="POST" action="" id="frm" name="frm">
    <div class="row">
        <div class="col-md-12 form-group">
            <input type="text" id="id" name="id" class="pd20 form-control" placeholder="아이디를 입력해주세요">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 form-group">
            <input type="password" id="pw" name="pw" class="form-control" placeholder="비밀번호를 입력해주세요">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 form-group">
            <div class="w3-button btn-block btn-login w3-black" id="cbtn">확 인</div>
        </div>
    </div>    
	</form>
</div>
</div>
</div>
</body>
</html>