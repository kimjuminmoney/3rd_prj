package kr.co.daitdayoung.index.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InquiryVO {

	private String inqCode, itCode, uiId, insId, inqTitle, inqContent, adminId, inqAnswer, uiName;
	private Date inqDate, inqAnswerdate;
	
}
