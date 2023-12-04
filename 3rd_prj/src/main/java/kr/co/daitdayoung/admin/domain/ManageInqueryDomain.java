package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageInqueryDomain {
	
	private String inqType, inqTitle, inqCode, inqContent, inqAnswer;
	private Date inqDate;
	
}
