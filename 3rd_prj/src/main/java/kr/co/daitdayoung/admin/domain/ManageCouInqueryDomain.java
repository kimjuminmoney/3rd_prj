package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageCouInqueryDomain {

	private String ciCode, citCode, citName, ciTitle, uiId, uiName, couName, ciAnswer;
	private Date ciDate;
	
}
