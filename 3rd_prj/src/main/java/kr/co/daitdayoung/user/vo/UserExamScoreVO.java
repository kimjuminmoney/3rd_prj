package kr.co.daitdayoung.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserExamScoreVO {
	private int examScore, enrollRate;
	private String crgCode, epCode, examPass;

}
