package kr.co.daitdayoung.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserAnswerVO {
	
	private String epCode, crgCode, uiId, couCode, insId, examCode, queCode, asStatus;
	private int asSelected;
	private int[] asSelectedArr;
	private String[] queCodeArr, asStatusArr;
	
	

}
