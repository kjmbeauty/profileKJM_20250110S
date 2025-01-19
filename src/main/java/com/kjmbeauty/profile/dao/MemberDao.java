package com.kjmbeauty.profile.dao;

import com.kjmbeauty.profile.dto.MemberDto;

public interface MemberDao {
	
	public int joinMemberDao(String mid, String mpw, String mname, String memail);//회원가입
	public int idCheckDao(String mid); //아이디 존재 여부 체크
	public MemberDto memberInfoDao(String mid); //회원아이디로 회원정보 조회
	public int loginDao(String mid, String mpw); //회원 로그인
	public int memberModifyDao(String mid, String mpw, String mname, String memail);//회원 정보 수정
	

}
