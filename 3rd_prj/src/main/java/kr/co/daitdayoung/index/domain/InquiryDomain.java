package kr.co.daitdayoung.index.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class InquiryDomain {

	private String inqCode, itCode, uiId, insId, inqTitle, inqContent, adminId, inqAnswer, uiName,  insName, itName;
	private int inquiryIndex;
	private Date inqDate, inqAnswerdate;
	
} //class

