package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserCoursesDomain {
	
	private String insId,couName,content,bannerImg,sampleVideo,finalApprove,insName,insProfile ;
	private Date opendate;
	private int couPeriod,hits;
	
	
	

}
