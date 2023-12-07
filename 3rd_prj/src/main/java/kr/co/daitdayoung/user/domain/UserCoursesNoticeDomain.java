package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserCoursesNoticeDomain {
	
	private String cnCode, insId, cnTitle,  cnContent, insName;
	private Date cnDate;
	
	

}
