package kr.co.daitdayoung.instructor.vo;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class LectureVO {
	private String lecCode, couCode, insId, lecName, lecContent, videoName;

}
