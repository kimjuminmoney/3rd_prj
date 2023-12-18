package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageCoursesDomain {
	
	private String couCode, insName, couName, approve, finalApprove ,insId ,content,bannerImg, sampleVideo, ccCode ,insIntrodce, 
	insEmail,insTel, insProfile,scName, mcName;
	
	private int registCnt,couPeriod,hits;
	
	private Date opendate;
	
}
