package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageNoticeDomain {

	private String notCode, notTitle, adminId, adminName; 
	private Date notDate;
	
}
