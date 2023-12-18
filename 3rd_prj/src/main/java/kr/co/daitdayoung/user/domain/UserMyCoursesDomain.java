package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserMyCoursesDomain {
	private String couCode, couName, insName, bannerImg, crgCode, uiName, examStatus, completionStatus, reExam, epCode, rate;
	private int progressRate, couPeriod, enrollRate, examResults, examScore, lecCnt, crCount;
	private Date registrationdate, completiondate, coursePeriod;
}
