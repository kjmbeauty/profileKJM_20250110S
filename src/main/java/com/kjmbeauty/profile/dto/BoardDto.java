package com.kjmbeauty.profile.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BoardDto {
	
	private int bnum;
	private String bid;
	private String bname;
	private String btitle;
	private String bcontent;
	private int bhit;
	private Timestamp bdate;	
	
}
