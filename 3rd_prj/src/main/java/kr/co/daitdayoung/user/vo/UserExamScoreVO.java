package kr.co.daitdayoung.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserExamScoreVO {
	private String crgCode, epCode, examPass;
	private int examScore, enrollRate, lecCnt;

}
