package com.kjmbeauty.profile.dao;

import java.util.ArrayList;

import com.kjmbeauty.profile.dto.BoardDto;

public interface BoardDao {
	
	public void writeDao(String bid, String bname, String btitle, String bcontent);
	public ArrayList<BoardDto> listDao(int amount, int pageNum);
	public BoardDto contentViewDao(String bnum);
	public void contentModifyDao(String bnum, String btitle, String bcontent);
	public int contentDeleteDao(String bnum);
	public int totalBoardCountDao();
	public void updateHitDao(String bnum);
	

}
