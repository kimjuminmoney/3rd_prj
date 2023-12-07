package kr.co.daitdayoung.index.vo;

import java.sql.Date;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CoursesVO {

	private int		couPeriod, hits;
	private Date	opendate;
	private String	couCode, insId, couName, content, bannerImg, sampleVideo,
					approveStatus, refuseReanson, scCode, mcCode;

} //CoursesVO
