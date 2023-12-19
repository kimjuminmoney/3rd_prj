package kr.co.daitdayoung.instructor.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CourseQuestionVO {
	
	private String queCode, examCode, couCode, insId, queContent, que1, que2, que3, que4, correct;
	
	
}
