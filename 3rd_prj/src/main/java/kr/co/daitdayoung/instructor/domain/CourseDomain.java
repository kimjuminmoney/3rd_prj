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
public class CourseDomain {

	private String couCode,insId,couName,content,bannerImg,sampleVideo,finalApprove,refuseReason,ccCode,scCode,mcCode,adminId;
	private Date openDate;
	private int couPeriod,hits;
	
	private int enRollRate,examResults;
	
}
