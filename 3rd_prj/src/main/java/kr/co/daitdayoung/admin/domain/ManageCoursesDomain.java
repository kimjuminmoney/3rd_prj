package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageCoursesDomain {
	
	private String couCode, insName, couName, approve;
	private int registCnt;
	private Date opendate;
	
}
