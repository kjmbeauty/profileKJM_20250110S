package com.kjmbeauty.profile.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Criteria {
	
	private int amount = 10;
	private int pageNum = 1;
	private int startNum;

}
