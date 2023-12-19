package kr.co.daitdayoung.instructor.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CourseInquiryVO {

	private String ciCode, uiId, citCode, ciTitle, ciContent, ciAnswer, couCode, insId;
	private Date ciDate,ciAnswerdate;
	private String citName;
	
}
