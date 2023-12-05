package kr.co.daitdayoung.user.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserQuestionsDomain {
	private String queCode, queContent, que1, que2, que3, que4, asStatus ;
	private int correct, asSelecte, queScore;

}
