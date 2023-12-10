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
public class CourseVO {

	private String couCode,insId,couName,content,bannerImg,sampleVideo,finalApprove,refuseReason,ccCode,scCode,mcCode,adminId;
	private Date openDate;
	private int couPeriod,hits;
	
	private List<String> contentList;
	
}
