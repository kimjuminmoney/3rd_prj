package kr.co.daitdayoung.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserExamVO {
	private String examCode, epCode, couCode, crgCode, uiId, insId, examStatus, reExam, examDateStr;
	private Date examDate;
}
