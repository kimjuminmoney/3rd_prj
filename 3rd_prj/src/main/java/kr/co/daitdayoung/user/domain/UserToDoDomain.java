package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserToDoDomain {
	private String couName, couCode, completionStatus, examStatus, reExam, epCode, crgCode;
	private int remainingperiod;
	private Date completiondate, courseperiod;
}
