package kr.co.daitdayoung.index.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {
	
	private String notCode, adminId, notTitle, notContent;
	private Date notDate;
	
} //class
