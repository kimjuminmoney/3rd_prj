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
public class CourseNoticeVO {
	private String cnCode, insId, couCode, cnTitle, cnContent;
	private Date cnDate;
	
}
