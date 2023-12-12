package kr.co.daitdayoung.user.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserCoursesExamDomain {
	private String examCode, examContent;
	private int examTimelimit;
	

}
