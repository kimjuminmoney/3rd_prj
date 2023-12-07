package kr.co.daitdayoung.index.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeDomain {

	private String notCode, adminId, notTitle, notContent;
	private int noticeIndex;
	private Date notDate;
	
} //class
