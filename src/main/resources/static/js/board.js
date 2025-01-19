/**
 * 
 */

function writeCheck() {
	
	if(document.writeForm.btitle.value.length == 0) {
		alert("제목은 반드시 입력하여야 합니다.");
		document.writeForm.btitle.focus();
		return false;
	}
	
	if(document.writeForm.btitle.value.length >= 50) {
			alert("제목은 50자 이내로 입력하여야 합니다.");
			document.writeForm.btitle.focus();
			return false;
	}
	
	if(document.writeForm.bcontent.value.length <= 10) {
			alert("내용은 10자 이상 입력하여야 합니다.");
			document.writeForm.bcontent.focus();
			return false;
	}
	
	if(document.writeForm.bcontent.value.length >= 200) {
				alert("내용은 200자 이내로 입력하여야 합니다.");
				document.writeForm.bcontent.focus();
				return false;
	}
	
	return true;
	
}

function contentDelete(currPage, deleteNum) {
	//console.log(currPage);
	//console.log(deleteNum);
	var deleteFlag = confirm("정말 글을 삭제하시겠습니까? 삭제된 글은 복원되지 않습니다.");
	if(deleteFlag == true) {
		location.href="contentDelete?pageNum="+currPage+"&bnum="+deleteNum;
	}	
}

