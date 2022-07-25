<!-- 
/**
 *  마이 페이지
 * @author	조희덕
 * @since	2022/07/08
 * @version	v.1.0
 * 			작업이력 ] * 				
 *				2022.07.08	-	jsp 구현
 * 								담당자 : 조희덕
 *
 */
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
       <meta charset="utf-8" />
       <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
       <meta name="description" content="" />
       <meta name="author" content="" />
       <title>마이페이지</title>
       <!-- Favicon-->
       <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
       <!-- Font Awesome icons (free version)-->
       <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
       <!-- Google fonts-->
       <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
       <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
       <!-- Core theme CSS (includes Bootstrap)-->
       <link rel="stylesheet" type="text/css" href="/festival/css/styles.css"/>
       <link rel="stylesheet" type="text/css" href="/festival/css/w3.css"/>
       <link rel="stylesheet" type="text/css" href="/festival/css/tmddus.css"/>
       <script type="text/javascript" src="/festival/js/jquery-3.6.0.min.js"></script>
       <script type="text/javascript" src="/festival/js/base.js"></script>
       <script type="text/javascript" src="/festival/js/mypage/mypage.js"></script>
       
       <style type="text/css">   
     	.logo {
     		margin: 0px;
     		padding: 0px;
     	}
     	</style>
	
</head>
<body class="w3-light-grey">
    <!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
        	<a class="navbar-brand logo" href="/festival/"><img src="/festival/img/logo.png" style="width:170px; height:auto"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                   Menu
            	<i class="fas fa-bars ms-1"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
            	<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
<c:if test="${empty SID}">
                	<li class="nav-item"><a class="nav-link" href="" id="loginbtn">로그인</a></li>
                	<li class="nav-item"><a class="nav-link" href="" id="joinbtn">회원가입</a></li>
</c:if>
<c:if test="${not empty SID}">
					<li class="nav-item"><a class="nav-link" href="">${NAME} 님</a></li>
               		<li class="nav-item"><a class="nav-link" href="" id="logoutbtn">로그아웃</a></li>	
               		<li class="nav-item"><a class="nav-link" href="" id="mybtn">마이페이지</a></li>
   </c:if>
                	<li class="nav-item"><a class="nav-link" href="" id="infobtn">축제정보</a></li>
                	<li class="nav-item"><a class="nav-link" href="" id="boardbtn">리뷰게시판</a></li>
                </ul>
               </div>
           </div>
       </nav>
	    
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;margin-top: 120px" id="mySidebar"><br>
		<div class="container">
			<a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
				<i class="fa fa-remove"></i>
			</a>
			<img src="/festival/img/default.png" style="width:45%;" class="w3-round"><br><br>
			<h4><b>마이 페이지</b></h4>
			<p class="w3-text-grey">Worked by 조희덕</p>
		</div>
		<div class="w3-bar-block">
			<a href="#myInfo" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-user fa-fw w3-margin-right"></i>내 정보</a> 
			<a href="#Favorites" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-th-large fa-fw w3-margin-right"></i>즐겨찾기 목록</a> 
			<a href="#review" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>내가 쓴 후기</a>
		</div>		
	</nav>
	
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
    
	<div class="w3-main" style="margin-left:300px;margin-top:120px;">  
		<div class="w3-row-padding w3-padding-16" id="myInfo">    
	</div>
	
	<div class="w3-content w3-container w3-padding-large" style="margin-bottom:32px">
		<h4 class="w3-center"><b>내 정보</b></h4>
		<div class="w3-col w3-margin-top w3-padding w3-card-4">
			<div class="w3-rest w3-text-grey pdl20">
				<h4><span class="w3-col m2 w3-right-align">회원이름 : </span><span class="w3-rest w3-center pdl5" id="name">${MEMBER.name}</span></h4>
				<h4><span class="w3-col m2 w3-right-align">아 이 디 : </span><span class="w3-rest w3-center pdl5" id="id">${MEMBER.id}</span></h4>
				<h4><span class="w3-col m2 w3-right-align">주    소 : </span><span class="w3-rest w3-center pdl5" id="id">${MEMBER.addr}</span></h4>
				<h4><span class="w3-col m2 w3-right-align">전화번호 : </span><span class="w3-rest w3-center pdl5" id="tel">${MEMBER.tel}</span></h4>
				<h4><span class="w3-col m2 w3-right-align">이 메 일 : </span><span class="w3-rest w3-center pdl5" id="mail">${MEMBER.mail}</span></h4>
				<h4><span class="w3-col m2 w3-right-align">생    일 : </span><span class="w3-rest w3-center pdl5" id="mail">${MEMBER.birth}</span></h4>
				<h4><span class="w3-col m2 w3-right-align">회원성별 : </span><span class="w3-rest w3-center pdl5" id="gen">${MEMBER.gen == 'M' ? "남자":"여자"}</span></h4>				
			</div>
		</div>
		<div class="">
	        <div class="fr">
	            <a href="/festival/mypage/pwcheck.fes" id="uno" value="${MEMBER.uno}" >내정보 수정</a>
	        </div>
	    </div>
	</div>
  

  <!-- Header -->
	<header id="Favorites">
		<a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
		<span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
		<div class="w3-container">
			<h1><b>즐겨찾기 목록</b></h1>  
		</div>
	</header>
  
  
	<div class="container">		
		<div class="row" style="align-items: center">
			<c:forEach var="data" items="${FINFO}">
			<div class="w3-center gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
				<a href="">
					<div style="display: flex; height: 60px; margin-top:20px; align-items: center; justify-content: center;" class="w3-center">
						<h4 style="padding-top:auto;">${data.fname}</h4>
					</div>
					<div class="w3-border w3-padding">
						<img src="/festival/img/${data.fno}.jpg" onerror="this.src='/festival/img/poster.png'" class="img-responsive fe">
					</div>
					<p class="pi">${data.sdate} ~ ${data.edate}</p>
					<p class="pi">${data.place}</p>
				</a>
		    </div>
			</c:forEach>
	</div>

  <!-- Pagination -->
  <div class="w3-center">
		<div class="w3-bar w3-border w3-round-medium w3-card w3-margin-top w3-margin-bottom">
	<c:if test="${PAGE.startPage eq 1}">
			<div class="w3-bar-item w3-light-grey">&laquo;</div>
	</c:if>
	<c:if test="${PAGE.startPage ne 1}">
			<div class="w3-bar-item w3-button w3-hover-blue pbtn" id="${PAGE.startPage - 1}">&laquo;</div>
	</c:if>
	<c:forEach var="page" begin="${PAGE.startPage}" end="${PAGE.endPage}">
		<c:if test="${page eq PAGE.nowPage}">
			<div class="w3-bar-item w3-orange">${page}</div>
		</c:if>
		<c:if test="${page ne PAGE.nowPage}">
			<div class="w3-bar-item w3-button w3-hover-blue pbtn" id="${page}">${page}</div>
		</c:if>
	</c:forEach>
		<c:if test="${PAGE.endPage eq PAGE.totalPage}">
			<div class="w3-bar-item w3-light-grey">&raquo;</div>
		</c:if>
		<c:if test="${PAGE.endPage ne PAGE.totalPage}">
			<div class="w3-bar-item w3-button w3-hover-blue pbtn" id="${PAGE.endPage + 1}">&raquo;</div>
		</c:if>
		</div>
	</div>

  <!-- Images of Me -->

  <!-- Contact Section -->
	<div class="w3-container w3-padding-large w3-grey">
		<h4 id="review"><b>내가 쓴 후기</b></h4>
		<div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
	<c:forEach var="data" items="${REVIEW}">				
			<div class="w3-third w3-dark-grey">
				<div class="w3-col w3-round-large w3-card-4 w3-margin-bottom w3-padding">
					<div class="w3-col box120 pdAll10 w3-border-right">
						<img src="/festival/img/poster.png" class="inblock avtBox100 w3-border w3-border-grey">
						<span class="w3-col w3-center ft10 mid"><b>${data.writer}</b></span>
					</div>
					<div class="w3-rest w3-padding">
						<div class="w3-col w3-border-bottom">
							<div class="w3-col w3-center" id="${data.rno}">						
								<span class="w3-center mgb10 ft10"><h>${data.title}</h></span>
							</div>
						</div>
						<div class="w3-col w3-margin-top">
							<span class="w3-col w3-padding ft12">${data.body}</span>
								<div class="w3-third w3-button w3-small w70 w3-right delbtn">삭제</div>						
								<div class="w3-third w3-button w3-small w70 w3-right editbtn">수정</div>
								<div class="w3-third w3-button w3-small w70 w3-right detailbtn">상세보기</div>
						</div>
					</div>
				</div>				
 			</div>
	</c:forEach>
 		</div>    
 	</div>
 </body>

       <!-- Bootstrap core JS-->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
   <script type="text/javascript" src="/festival/js/scripts.js"></script>
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
   <!-- * *                               SB Forms JS                               * *-->
   <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
   <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    
</html>