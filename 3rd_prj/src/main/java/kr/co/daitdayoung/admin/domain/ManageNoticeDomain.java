package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageNoticeDomain {
	
	private String notCode, notTitle, notContent, adminId, adminName, cnCode, cnTitle, couName, cnContent, insName; 
	private Date notDate, cnDate;
	
}
