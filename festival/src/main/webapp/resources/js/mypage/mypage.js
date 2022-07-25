$(document).ready(function() {
	// 로그인
	$('#loginbtn').click(function() {
		$('#loginbtn').attr('href', '/festival/member/login.fes');
	});
	// 회원가입
	$('#joinbtn').click(function() {
		$('#joinbtn').attr('href', '/festival/member/join.fes');
	});
	// 축제정보
	$('#infobtn').click(function() {
		$('#infobtn').attr('href', '/festival/info/finfo.fes');
	});
	// 리뷰게시판
	$('#boardbtn').click(function() {
		$('#boardbtn').attr('href', '/festival/review/rboard.fes');
	});
	// 로고클릭
	$('#logo').click(function() {
		$('#logo').attr('href', '/festival/');
	});
	
	$('#cbtn').click(function() {
		$('#frm').attr('action', '/festival/mypage/pwcheckProc.fes');
		$('#frm').submit();
	});
	
	$('#backbtn').click(function() {
		$('#backbtn').attr('href', '/festival/mypage/mypage.fes');
	});
	
	$('#ebtn').click(function(){
		
		var spw = $('#pw').val();
		var spw2 = $('#repw').val();
		
		var pwBool = false;
		var mailBool = false;
		var telBool = false;
		var addrBool = false;		
		
		if(spw != spw2){
			$('#repw').val('');
			$('#repw').focus();
			return;
		}
		
		if(!spw){			
			$('#pw').prop('disabled', true);
		} else if(spw && (spw == spw2)){
			pwBool = true;
		}
		
		var smail = $('#mail').val();
		if(smail == $('#tmail').val() ){
			$('#mail').prop('disabled', true);
		} else {
			mailBool = true;
		}
		
		var stel = $('#tel').val();
		if(stel == $('#ttel').val() ){
			$('#tel').prop('disabled', true);
		} else {
			telBool = true;
		}
		
		var addr = $('#addr').val();
		if(addr == $('#taddr').val()){
			$('#addr').prop('disabled', true);
		} else {
			addrBool = true;
		}	
		
		
		if(!(pwBool || mailBool || telBool || addrBool)){			
			$('#msgWin').css('display', 'block');
			$('input').prop('disabled', false);
			return;
		}
		
		$('#frm').attr('action', '/festival/mypage/editProc.fes');
		$('#frm').submit();
	});
	
});
