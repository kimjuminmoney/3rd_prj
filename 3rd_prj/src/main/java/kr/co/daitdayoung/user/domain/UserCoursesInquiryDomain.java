package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserCoursesInquiryDomain {
	private String ciCode, citCode, ciTitle, ciContent, ciAnswer, couCode, insId, citName, couName, insName;
	private Date ciDate, ciAnswerdate;
	private int ciInd;

}
