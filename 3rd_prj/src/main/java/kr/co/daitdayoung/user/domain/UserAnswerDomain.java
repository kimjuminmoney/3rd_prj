package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserAnswerDomain {
	
	private String queCode,asSelected, asStatus, queContent, que1, que2, que3,que4, correct;
	private int examScore;
	private Date examdate;

}
