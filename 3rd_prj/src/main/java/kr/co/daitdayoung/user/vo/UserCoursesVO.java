package kr.co.daitdayoung.user.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserCoursesVO {

	private String couCode, uiId, lecCode, crgCode, epCode;
	private int enrollRate, lecCnt, rateCnt;
}
