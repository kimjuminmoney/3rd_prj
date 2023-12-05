package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserMyCoursesDomain {
	private String couCode, couName, insName, bannerImg, crgCode, uiName, examStatus;
	private int progressRate, couPeriod, enrollRate, examResults, examScore;
	private Date registrationdate, completiondate, coursePeriod;
}
