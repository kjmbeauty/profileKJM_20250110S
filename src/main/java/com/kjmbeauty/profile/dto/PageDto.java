package com.kjmbeauty.profile.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PageDto {
	
	private int total;
	private int startPage;
	private int endPage;
	private boolean next;
	private boolean prev;
	private int realEndPage;
	
	private Criteria criteria;
	
	public PageDto(int total, Criteria criteria) {
		super();
		this.total = total;
		this.criteria = criteria;
		
		this.endPage = (int)((Math.ceil(criteria.getPageNum()/10.0))*10);
		
		this.startPage = this.startPage - 9;
		
		this.realEndPage = (int)Math.ceil(total*1.0/criteria.getAmount());
		
		if(this.realEndPage < this.endPage) {
			this.endPage = this.realEndPage;
		}
		
		this.prev = this.startPage > 1;
		
		this.next = this.realEndPage > this.endPage;
		
	}
	
	
	
	
}
