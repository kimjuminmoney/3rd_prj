package kr.co.daitdayoung.instructor.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CourseNoticeDomain {
	private String cnCode, couCode, insId, cnTitle, cnContent;
	private Date cnDate;
	
}
