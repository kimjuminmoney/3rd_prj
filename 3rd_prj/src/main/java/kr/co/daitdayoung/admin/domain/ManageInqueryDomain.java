package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ManageInqueryDomain {
	private String inqCode, itCode, itName, uiId, uiName, insId, inqTitle, inqContent, inqAnswer, adminId, adminName;
	private Date inqDate, inqAnswerdate;
	
}
