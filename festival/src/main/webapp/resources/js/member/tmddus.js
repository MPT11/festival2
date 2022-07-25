$(document).ready(function() {
	var idck = false;
	
	$('#loginbtn').click(function(){
		$(location).attr('href', '/festival/member/login.fes');
	})
	
	$('#lbtn').click(function() {
		var sid = $('#id').val();
		var spw = $('#pw').val();
		if(!sid) {
			$('#id').focus();
			return;
		}
		if(!spw) {
			$('#pw').focus();
			return;
		}
		$('#frm').attr('action', '/festival/member/loginProc.fes');
		$('#frm').submit();
	});
	$('#logoutbtn').click(function() {
		$(location).attr('href', '/festival/member/logoutProc.fes');
	});
	$('#backbtn').click(function() {
		window.history.back();
	});
	$('#jbtn').click(function() {
		var el = $('.lab');
		for(var i=0; i<el.length; i++) {
			if(!(el.eq(i).val())) {
				el.eq(i).focus();
				return;
			}
		}
		if(!($('input:radio[name=gen]').is(':checked'))) {
			alert('성별을 체크해주세요');
			return;
		}
		var namepat = /^{0, 10}$/;
		var idpat = /^[a-zA-Z0-9]{5,20}$/;
		var pwpat = /^[a-zA-Z0-9]{5,20}$/;
		
		var test = $('#birth').val();

		if(!idck) {
			alert('아이디 중복확인을 해주세요');
			return;
		}
		
		// 정규표현식 검사
		$('#frm').attr('action', '/festival/member/joinProc.fes');
		$('#frm').submit();
	});
	
	$('#rwritebtn').click(function() {
		$(location).attr('href', '/festival/review/rboardWrite.fes');
	});
	
	$('#reditbtn').click(function() {
		$(location).attr('href', '/festival/review/rboardEdit.fes');
	});
	
	$('#sbtn').click(function() {
		$(location).attr('href', '/festival/info/finfo.fes');
	});
	
	$('#id').keyup(function() {
		idck = false;
	});
	
	$('#idck').click(function() {
		var sid = $('#id').val();
		
		if(!sid) {
			$('#id').focus();
			return;
		}
		
		$.ajax({
			url: '/festival/member/idCheck.fes',
			type: 'post',
			dataType: 'json',
			data: {
				id: sid
			},
			success: function(data) {
				var result = data.result;
				
				if(result == 'OK') {
					idck = true;
					alert("사용 가능한 아이디입니다.");
					$('#pw').focus();
				} else {
					idck = false
					alert("사용 불가능한 아이디입니다.");
					document.id.reset();
					$('#id').focus();
				}
			},
			error: function() {
				alert('### 통신 에러 ###');
			}
			
		});
	});
	
	$('#tsend').click(function() {
		const ftel = $('#tel').val();		
		$('#tel').attr("readonly", true);	
		
		$.ajax ({
			url: '/festival/member/TelNumCheck.fes',
			type: 'GET',
			data: {
				"to" : ftel
			},
			success: function(data) {
				const checkNum = data;
				alert('인증번호를 발송했습니다.');
				
				$('#tebtn').click(function() {	
					const ftel = $('#ftel').val();
					
					if(checkNum === ftel) {
						alert('인증 성공하였습니다.');
					}
					else {
						alert('인증 실패하였습니다. 다시 입력해주세요.');
					}
				});				
			}
		});
	});
	
	$('#msend').click(function() {
		const fmail = $('#mail').val();
		$('#mail').attr("readonly", true);		
		
		$.ajax({
			url: '/festival/member/MailNumCheck.fes',
			type: 'GET',
			data: {
				"email" : fmail
			},
			success: function(data) {
				const checkNum = data;
				alert('인증번호를 발송했습니다.');
				
				$('#mebtn').click(function() {
					const fmail = $('#fmail').val();
					
					if(checkNum === fmail) {
						alert('인증 성공하였습니다.');
					}
					else {
						alert('인증 실패하였습니다. 다시 입력해주세요.');
					}
				})
			}
		});
		
		
	});
	
	$('#findpwbtn').click(function() {
		$(location).attr('href', '/festival/member/findpw.fes');
	});
	
	$('#findbtn1').click(function() {
		$('#frm').attr('action', '/festival/member/findidProc.fes');
		$('#tel').prop('disabled', true);		
		$('#ftel').prop('disabled', true);
		$('#fmail').prop('disabled', true);
		$('#frm').submit();
	});
	$('#findbtn2').click(function() {
		$('#frm').attr('action', '/festival/member/findidProc2.fes');	
		
		const ftel = $('#tel').val();	
		var tel1 = ftel.substr(0,3);
		var tel2 = ftel.substr(3,4);
		var tel3 = ftel.substr(7);
		var tel = tel1 + '-' + tel2 + '-' + tel3;		
		
		$('#tel').val(tel);
		
		$('#mail').prop('disabled', true);
		$('#ftel').prop('disabled', true);
		$('#fmail').prop('disabled', true);
		$('#frm').submit();
	});
	$('#findbtn3').click(function() {		
		$('#frm').attr('action', '/festival/member/findpwProc.fes');
		$('#frm').submit();
	});
	$('#findbtn4').click(function() {
		var pw = $('#pw').val();
		var pwck = $('#fpwck').val();
		
		if(pw != pwck) {
			alert('비밀번호가 다릅니다.');
			return;
		}
		$('#frm').attr('action', '/festival/member/changePwProc.fes');
		$('#fpwck').prop('disabled', true);
		$('#frm').submit();
				
	});
});