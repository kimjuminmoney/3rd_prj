package kr.co.daitdayoung.index.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class IndexVO {

	private String	 mcCode, mcName, scName, bannerImg, couCode, couName, insName, openDate;
	private int hit;
	//private String completionStatus = "Y";

} //CoursesVO
