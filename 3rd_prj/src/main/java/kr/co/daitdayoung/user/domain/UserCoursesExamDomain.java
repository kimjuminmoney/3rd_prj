package kr.co.daitdayoung.user.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserCoursesExamDomain {
	private String examCode, examContent, queCode, couCode, insId, queContent, que1, que2, que3, que4;
	private int examTimelimit, correct;

}
