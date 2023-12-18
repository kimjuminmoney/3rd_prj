package kr.co.daitdayoung.index.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CoursesDetailDomain {
	
	private String couCode,insId,couName,content,bannerImg,
					sampleVideo,ccCode,insName,insIntrodce, 
					insEmail,insTel, insProfile,scName, mcName;
	private int couPeriod,hits;
	

}
