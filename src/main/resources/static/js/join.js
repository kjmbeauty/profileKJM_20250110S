/**
 * 
 */

function joinCheck() {
	if(document.joinForm.mid.value.length == 0) {
		alert("아이디는 필수 입력사항입니다.");
		document.joinForm.mid.focus();
		return false;
	}
	if(document.joinForm.mid.value.length <= 3) {
			alert("아이디는 최소 4자 이상입니다.");
			document.joinForm.mid.focus();
			return false;
		}
	if(document.joinForm.mpw.value.length == 0) {
			alert("비밀번호는 필수 입력사항입니다.");
			document.joinForm.mpw.focus();
			return false;
		}
	if(document.joinForm.mpw.value.length <=4) {
			alert("비밀번호는 최소 5자 이상입니다.");
			document.joinForm.mpw.focus();
			return false;
		}
	if(document.joinForm.mpw_check.value.length == 0) {
			alert("비밀번호 확인은 필수사항 입니다.");
			document.joinForm.mpw_check.focus();
			return false;
		}	
			
	if(document.joinForm.mpw.value != document.joinForm.mpw_check.value) {
			alert("입력하신 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			document.joinForm.mpw_check.focus();
			return false;
		}
		
	if(document.joinForm.mname.value.length == 0) {
			alert("이름은 필수 입력사항입니다.");
			document.joinForm.mname.focus();
			return false;
		}		
		
	if(document.joinForm.memail.value.length == 0) {
			alert("이메일은 필수 입력사항입니다.");
			document.joinForm.memail.focus();
			return false;
	}
		
	return true;	
}

function idcheck() {
		if(document.joinForm.mid.value.length == 0) {
				alert("아이디는 필수 입력사항입니다.");
				document.joinForm.mid.focus();
				return false;				
		}
		
		

	//var idvalue = document.getElementById("joinid").value;
		var idvalue = document.joinForm.mid.value;

	window.location.href = "idcheck?idcheck="+idvalue;
		
}