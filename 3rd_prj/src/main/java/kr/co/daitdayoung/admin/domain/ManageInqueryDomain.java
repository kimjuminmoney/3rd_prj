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
	
	private String inqCode, itCode, itName, uiId, insId, inqTitle, inqContent, inqAnswer;
	private Date inqDate;
	
}
