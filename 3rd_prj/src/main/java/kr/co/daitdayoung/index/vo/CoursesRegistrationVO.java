package kr.co.daitdayoung.index.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CoursesRegistrationVO {
	private String couCode, insId, uiId, completionStatus, crgCode;
	private int crCount;

}
